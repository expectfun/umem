# Unified Memory

*it works on my machine*

A blog about running AI models locally, built by local AI models. Working title.

## Rules

1. **Published posts are never edited.** Each post is a standalone HTML page made by the model of the day. No shared template or stylesheet.
2. **The index page is the only thing that changes**, rebuilt from time to time by the current best setup.
3. **Every post ends with "How this page was made"**: model, quantization, runtime, hardware, prompt, time and attempts, what broke, what was fixed and by whom, what was left broken on purpose.
4. **Fix only what stops someone reading the post.** Leave other flaws in place and list them under "Left broken on purpose".
5. **The words are mine.** Models build the pages, not the prose.
6. **Dictation transcripts are public.** The raw Whisper transcript in `dictation/` and in the cleanup prompt is part of the story. Only the audio stays private (`.gitignore`).

## Layout

- `index.html`: home page
- `posts/NNN/index.html`: one folder per post
- `prompts/`: every prompt sent to a model
- `raw/`: the models' unedited output
- `dictation/`: raw speech-to-text transcripts (public; audio is not committed)
- `run.sh`: sends a prompt to LM Studio and saves the reply in `raw/`

## Workflow

1. Write the prompt in `prompts/`.
2. `./run.sh prompts/NNN-name.md [model-id]` (LM Studio must be running with the model available).
3. Copy the files out of the raw reply. Claude reviews them and fixes only what blocks reading.
4. Fill in "How this page was made" and log the run in `~/life/zero/AI-STRATEGY.md`.
