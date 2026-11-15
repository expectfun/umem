# Post 002: processing record

Publication version, approved by the author on 2026-11-15 after reviewing the page, with the title **A writer discovers dictation**. The author authorized local-model title suggestions and page generation, including a trial of the installed Qwen3.8-27B instead of the Qwen3-Coder used for post 001.

## Source and local cleanup

- Recording: `dictation/20261115-1653-post002.wav` (private, ignored by Git).
- Raw transcript: [Whisper transcript](../../dictation/20261115-1653-post002.txt), 2,298 whitespace-separated words. The existing `dictate` setup uses Whisper large-v3-turbo through whisper.cpp. The transcript is preserved unedited.
- [Cleanup prompt](../../prompts/004-cleanup-post002.md) contains the exact raw transcript. Instructions adapt the first post's approach: preserve the author's voice, order and digressions; remove fillers and correct obvious transcription errors; flag guesses.
- Local model: `qwen3.6-35b-a3b-mlx`, LM Studio API, 32,768-token context, temperature 0.3. Same model identifier as post 001. Hardware: author's laptop with 48 GB unified memory.
- Attempt 1: 131 seconds, 8,000-token output budget. Failed: the server reported `finish_reason: length`, 7,967 reasoning tokens and only an incomplete opening sentence. [Unedited output](../../raw/004-cleanup-post002--qwen3.6-35b-a3b-mlx--20261115-172242.md). `run.sh` accepted this because it checks for nonempty content, not completeness; it was rejected during review.
- Attempt 2: same prompt and model, with `MAX_TOKENS=16000`. Completed in 170 seconds with `finish_reason: stop`: 3,010 prompt tokens and 10,348 completion tokens, including 7,480 reasoning tokens, according to the local server response. [Unedited output and model notes](../../raw/004-cleanup-post002--qwen3.6-35b-a3b-mlx--20261115-172522.md).
- Word counts (whitespace split): raw transcript 2,298; local cleanup prose 2,060; checked draft 2,007. The prompt's embedded transcript matches the source exactly after stripping leading/trailing whitespace. The full model response includes the requested notes separator; the checked draft contains only prose and reaches the original image-generation closing. Existing published pages were not modified.

## Editorial notes and resolutions

- Resolved by the author: the app transcribed as **“speak why”** is **[Speak-Y](https://speak-y.com)**. The checked draft now uses that name and clickable link. The author's no-financial-interest disclosure remains in the prose. Raw transcript, cleanup prompt and model replies retain the original wording as the historical record.
- The sentence after **“OpenCode harness”** is garbled: “that's the only thing is that i don't know if it can be done in the last year or so don't quote me on that”. The intended historical claim cannot be recovered confidently from the transcript. Flag or omit the unintelligible fragment with a record here, rather than inventing a history.
- **“rep coding”** near the end may mean “rap coding.” It is a joke about talking to a laptop all day; confirm the term rather than turn it into a different joke.
- **“a long and coherent rambling”** is probably “a long incoherent rambling” from context. Any correction should be disclosed here.
- The transcript's historical comparison with cloud services should not imply Superwhisper is cloud-only today. Its official site explicitly advertises offline and cloud transcription. Keep the author's experience distinct from a product capability claim.
- The claim that both Handy and Hex default to Parakeet remains the author's tentative recollection. Do not silently certify a default model or installed configuration.

## Name and capability checks

Checked during preparation on 2026-11-15. These checks inform editorial notes; they do not supply new ideas for the author's prose.

- [Hex README](https://raw.githubusercontent.com/anomalyco/hex/dev/README.md): local dictation, downloads a model on first use, then transcribes on-device and pastes into the active app. Repository belongs to `anomalyco`.
- [OpenCode README](https://raw.githubusercontent.com/anomalyco/opencode/dev/README.md): OpenCode is also in the `anomalyco` organization. This supports the shared-creator connection, not the unclear historical remark in the dictation.
- [Handy README](https://raw.githubusercontent.com/cjpais/Handy/main/README.md): local speech-to-text with Whisper models and Parakeet V3; configurable shortcuts.
- [Wispr Flow](https://wisprflow.ai/): confirms spelling of “whisper flow.”
- [Superwhisper](https://superwhisper.com/): confirms spelling and explicitly describes offline and cloud transcription.

## Frontier-model review

Reviewer: GPT-6.1 Sol through Happy. Review is against the raw text transcript; no independent listening review of the audio is claimed. [Checked text](text.md) contains only prose; uncertainties and provenance stay in this file. The author resolved the app name/link and approved the prepared page for publication. The other uncertainty notes remain disclosed; publication approval does not independently verify those interpretations.

The local cleanup preserved the sequence and most of the voice, including the qualia digression. However, it left several transcription errors, made incorrect substitutions, and attached the prototype example to the wrong claim. Changes made after comparing the full output with the raw transcript:

1. Restored the greeting and made the opening grammatical: “Hi! This is the second blog post…” instead of “So there's a second blog post…”.
2. Fixed awkward grammar in the duplex explanation without changing the asynchronous speech-to-text distinction; removed “it's known that” filler.
3. Fixed small grammar slips: “for the time being,” “fine line to tread,” “audience of more than one person,” conditional “would,” pronoun agreement, “settle for less,” and “when you're talking.”
4. Changed “a long and coherent rambling” to “a long, incoherent rambling.” This is an inference from the repeated “incoherent” descriptions and the contrast with the LLM structuring it; the original transcript itself says “and coherent.” Flagged here for author review.
5. Restored “what shots I need to call.” Qwen substituted “what steps I need to take,” shifting the focus from the author's decisions to execution.
6. Fixed “Whisper Flow” to the verified spelling “Wispr Flow.” Initially kept the unconfirmed app name as quoted lowercase “speak why,” rather than presenting Qwen's title casing as a verified brand. After the author supplied the name and URL, replaced it with [Speak-Y](https://speak-y.com) in the checked draft.
7. Fixed a meaning reversal: “Both free and cloud versions usually have some limited free tier” became “It's free, whereas cloud versions usually have a limited free tier, after which you have to pay.” The raw transcript's “it's both free and cloud versions…” refers to the local option being free, followed by the cloud comparison.
8. Restored “I think” to the Anomaly/OpenCode relationship. Qwen claimed to preserve uncertainty but made the connection categorical. Omitted only the unintelligible fragment about “the last year or so”; kept “don't quote me on that.” The full fragment remains in the raw transcript, prompt, raw model output and notes above. Author clarification is needed to recover any historical point.
9. Restored “boring, bland slop” where Qwen flattened “boring bland slope things” to “boring results.” This is a context-based transcription correction.
10. Reattached the quick landing-page prototype example to the advantage of LLM structuring. Qwen instead joined it to “putting things together in writing is still very valuable,” which blurs the author's contrast. Started a new paragraph with the continuing value of writing and preserved “I suppose.”
11. Removed “write or” before “run Hex” as a spoken false start; clarified the Option-key shortcut sentence and fixed the idiom to “quality-of-life improvement.”
12. Fixed the clear transcription error “Even if you are right in your whole life” to “Even if you've been writing your whole life.”
13. Restored “vibe coders” instead of Qwen's “voice coders.” Rendered “rep coding” as quoted “rap coding,” a tentative reading that still needs the author. Qwen removed that phrase entirely. No substitute joke was invented.

Remaining factual note: the original historical “Last year, they were mostly cloud-based” remains in the draft as the author's claim, not an independently verified history. Superwhisper's current offline capability is verified; the author should consider clarifying the comparison before publication. Parakeet defaults remain explicitly tentative.

## Title suggestions and page generation

Model selection: use installed `qwen/qwen3.8-27b` for this installment as an experiment, without claiming it outperforms Qwen3-Coder. Its local `config.json` reports 4-bit affine MLX quantization, group size 64. The 35B cleanup model was unloaded before loading this model with a 32,768-token context.

[Title prompt](../../prompts/005-titles-post002.md) includes the complete checked prose. An initial request through `run.sh` with default reasoning and a 12k output budget was cancelled after about four minutes without message content. There is no completed raw reply from that cancelled run. It was not the previous 8k context failure: the model was loaded with 32k context.

Retried using LM Studio's documented native REST endpoint `POST /api/v1/chat`, with `reasoning: "off"`, temperature 0.3, 32,768-token context, `max_output_tokens: 16000`, and `store: false`. This completed in 12.73 seconds: 2,650 input tokens, 110 output tokens, zero reasoning tokens. [Raw title suggestions](../../raw/005-titles-post002--qwen_qwen3.8-27b--20261115-175636.md) and [complete native response with stats](../../raw/005-titles-post002--qwen_qwen3.8-27b--20261115-175636.json) are preserved.

Title suggested by Qwen and chosen by GPT-6.1 Sol for the preview: **A writer discovers dictation**. It reflects the author's perspective without claiming he stopped typing altogether. Alternatives included **Thinking aloud with local speech-to-text** and **Local speech-to-text for better prompting**. The author approved the selected title and publication after reviewing the page. Model assistance with the title is explicitly authorized and disclosed in the page's making-of section.

[Page prompt](../../prompts/006-page-post002.md) contains the complete checked prose and requests exact paragraph conversion, a self-contained design, light/dark support, phone readability and explicit making-of fields. Page generation used the same native API settings with reasoning off. It completed in **343.22 seconds, one attempt**: 3,262 input tokens, 5,294 output tokens, zero reasoning tokens, about 15.75 output tokens/second. [Unedited page reply](../../raw/006-page-post002--qwen_qwen3.8-27b--20261115-175715.md) and [complete native response](../../raw/006-page-post002--qwen_qwen3.8-27b--20261115-175715.json) are preserved.

## Page review and preview

Generated page: [A writer discovers dictation](index.html). GPT-6.1 Sol extracted the HTML and checked every paragraph against the Markdown, comparing decoded HTML text and rendered link labels while normalizing whitespace. **All 20 paragraphs match exactly**, including punctuation, quoted wording and the Speak-Y link. No prose restoration or CSS edits were needed.

Browser checks used Chromium at 375px and 1440px widths, in light and dark modes. All four cases passed paragraph equality and link checks, had no horizontal overflow, and used no scripts or external stylesheets/images. Inspected desktop light and phone dark screenshots. Checked text colors met contrast thresholds in both themes: minimum measured text contrast 6.45:1 in light mode and 6.62:1 in dark mode. The reading and layout checks cover these widths and this browser; they are not a full assistive-technology audit.

Frontier edits to the generated page were limited to filling the requested making-of placeholders and replacing the raw-directory link with direct links to the actual saved replies. The directory link came from the prompt; GitHub Pages does not provide a directory listing. Added the provisional post title and link to the home page. Post 001 remains untouched.

Left as generated: no `main` landmark surrounding the article; the masthead wraps on a narrow phone. Neither prevented reading. Editorial uncertainties from the transcript are still listed above. The author approved the page and its selected title for publication on 2026-11-15. Final preparation replaced the pending-title wording in the making-of section with the author's approval; the article prose and design stayed as reviewed.

Temporary prompt assembly scripts, browser tooling, screenshots and local preview copies live in ignored `.context/`. The preview copies only public HTML, Markdown, JSON and transcript text; private WAV recordings are excluded.