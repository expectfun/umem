#!/usr/bin/env bash
# Send a prompt file to a local model in LM Studio and save the raw reply.
# Usage: ./run.sh prompts/001-v0-site.md [model-id]
# The raw output is kept unedited in raw/ (it's part of the record).
set -euo pipefail

prompt_file="${1:-}"
if [[ -z "$prompt_file" ]]; then
  echo "usage: $0 <prompt-file.md> [model-id]" >&2
  exit 2
fi
if [[ ! -f "$prompt_file" ]]; then
  echo "error: prompt file not found: $prompt_file" >&2
  echo "usage: $0 <prompt-file.md> [model-id]" >&2
  exit 2
fi
model="${2:-qwen3-coder-30b-a3b-instruct-mlx}"
name="$(basename "$prompt_file" .md)"
stamp="$(date +%Y%m%d-%H%M%S)"
out="raw/${name}--${model//\//_}--${stamp}.md"

# Capture the reply first; only write to raw/ once it is known good.
start=$(date +%s)
resp=""
resp="$(jq -n --arg m "$model" --arg mt "${MAX_TOKENS:-8000}" --rawfile p "$prompt_file" \
  '{model: $m, messages: [{role: "user", content: $p}], temperature: 0.3, max_tokens: ($mt|tonumber)}' \
| curl -sS --fail-with-body localhost:1234/v1/chat/completions -H 'Content-Type: application/json' -d @-)" \
  || { echo "error: request to LM Studio (localhost:1234) failed${resp:+: $resp}" >&2; exit 1; }
content="$(jq -r '.choices[0].message.content // empty' <<< "$resp" 2>/dev/null)" || content=""
if [[ -z "$content" ]]; then
  err="$(jq -r '.error.message? // .error? // empty' <<< "$resp" 2>/dev/null || true)"
  echo "error: no reply content from model${err:+: $err}" >&2
  exit 1
fi
printf '%s\n' "$content" > "$out"
end=$(date +%s)

echo "model:   $model"
echo "seconds: $((end - start))"
echo "saved:   $out"
