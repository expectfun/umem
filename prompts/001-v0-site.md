You are building the first version of a small personal static website. Plain HTML and CSS only.

## The site

- Title: **Unified Memory**
- Tagline: *it works on my machine*
- What it is: a writer's journal about running AI models locally on a laptop with 48 GB of unified memory. The website itself is built by local AI models. Every post is a standalone page, made by whatever model the author used at the time, and is never edited after publishing. So readers can see how the tools improve (or fail) from post to post.

## Files to produce

Produce exactly two files.

### 1. `index.html` (the home page)

- The site title and tagline.
- A short "About" paragraph (2–3 sentences) based on the description above. Write it in first person, plainly, with no hype.
- A list of posts. For now it has one entry: "001: Hello from a 30B model", linking to `posts/001/index.html`, dated 2026-11-08.

### 2. `posts/001/index.html` (the first post)

- Heading: "Hello from a 30B model".
- Date: 2026-11-08.
- A link back to the home page (`../../index.html`).
- The body is a placeholder: one paragraph that says exactly `[POST TEXT GOES HERE]`. Do not write the post.
- At the end, a section titled **"How this page was made"**, styled as a distinct box. It contains a definition list (`<dl>`) with these fields, every value set to `[TODO]`:
  - Model
  - Quantization
  - Runtime
  - Hardware
  - Prompt
  - Time and attempts
  - What broke
  - What was fixed, and by whom
  - Left broken on purpose

## Constraints

- Each file is fully self-contained: CSS in a `<style>` tag in the `<head>`. No JavaScript. No external fonts, images, CDNs or frameworks.
- Semantic HTML5: `<header>`, `<main>`, `<article>`, `<footer>`, `<nav>` where they fit. Include `<meta charset>` and a viewport meta tag.
- Readable on a phone and on a laptop: a comfortable line length (around 65 characters), a decent font size, enough contrast.
- Support dark mode with `@media (prefers-color-scheme: dark)`.
- Keep it simple. Aim for under 120 lines per file.

## Output format

Output only the two files, each in its own fenced code block, with the file path on the line directly before the block, like this:

`index.html`
```html
...
```

`posts/001/index.html`
```html
...
```

No explanations before or after.
