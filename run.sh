#!/usr/bin/env bash
# Send a prompt file to a local model in LM Studio and save the raw reply.
# Usage: ./run.sh prompts/001-v0-site.md [model-id]
# The raw output is kept unedited in raw/ (it's part of the record).
set -euo pipefail

prompt_file="$1"
model="${2:-qwen3-coder-30b-a3b-instruct-mlx}"
name="$(basename "$prompt_file" .md)"
stamp="$(date +%Y%m%d-%H%M%S)"
out="raw/${name}--${model//\//_}--${stamp}.md"

start=$(date +%s)
jq -n --arg m "$model" --arg mt "${MAX_TOKENS:-8000}" --rawfile p "$prompt_file" \
  '{model: $m, messages: [{role: "user", content: $p}], temperature: 0.3, max_tokens: ($mt|tonumber)}' \
| curl -s localhost:1234/v1/chat/completions -H 'Content-Type: application/json' -d @- \
| jq -r '.choices[0].message.content' > "$out"
end=$(date +%s)

echo "model:   $model"
echo "seconds: $((end - start))"
echo "saved:   $out"
