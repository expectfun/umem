`index.html`
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Unified Memory</title>
  <style>
    :root {
      --bg: #ffffff;
      --text: #333333;
      --link: #0066cc;
      --border: #dddddd;
      --code-bg: #f5f5f5;
    }

    @media (prefers-color-scheme: dark) {
      :root {
        --bg: #1a1a1a;
        --text: #e0e0e0;
        --link: #4da6ff;
        --border: #444444;
        --code-bg: #2d2d2d;
      }
    }

    body {
      margin: 0 auto;
      padding: 1rem;
      max-width: 65ch;
      background-color: var(--bg);
      color: var(--text);
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
      line-height: 1.6;
      font-size: 1rem;
    }

    header {
      margin-bottom: 2rem;
      border-bottom: 1px solid var(--border);
    }

    h1 {
      margin: 0;
      font-size: 2rem;
    }

    .tagline {
      color: #666;
      font-style: italic;
    }

    main {
      margin-bottom: 2rem;
    }

    nav a {
      color: var(--link);
      text-decoration: none;
    }

    nav a:hover {
      text-decoration: underline;
    }

    ul {
      padding-left: 1.2rem;
    }

    li {
      margin-bottom: 0.5rem;
    }

    footer {
      border-top: 1px solid var(--border);
      padding-top: 1rem;
      font-size: 0.9rem;
      color: #666;
    }

    .post-date {
      font-size: 0.9rem;
      color: #666;
    }

    .how-made {
      background-color: var(--code-bg);
      border-left: 4px solid var(--link);
      padding: 1rem;
      margin-top: 2rem;
    }

    .how-made h3 {
      margin-top: 0;
    }

    dl {
      display: grid;
      grid-template-columns: auto 1fr;
      gap: 0.5rem 1rem;
    }

    dt {
      font-weight: bold;
    }
  </style>
</head>
<body>
  <header>
    <h1>Unified Memory</h1>
    <p class="tagline">it works on my machine</p>
  </header>

  <main>
    <p>Hello, I'm writing this journal about running AI models locally on a laptop with 48 GB of unified memory. This website is built by local AI models too. Every post is a standalone page, made by whatever model I used at the time, and is never edited after publishing. So readers can see how tools improve (or fail) from post to post.</p>

    <h2>Posts</h2>
    <ul>
      <li><a href="posts/001/index.html">001: Hello from a 30B model</a> <span class="post-date">2026-11-08</span></li>
    </ul>
  </main>

  <footer>
    &copy; 2026 Unified Memory
  </footer>
</body>
</html>
```

`posts/001/index.html`
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Hello from a 30B model - Unified Memory</title>
  <style>
    :root {
      --bg: #ffffff;
      --text: #333333;
      --link: #0066cc;
      --border: #dddddd;
      --code-bg: #f5f5f5;
    }

    @media (prefers-color-scheme: dark) {
      :root {
        --bg: #1a1a1a;
        --text: #e0e0e0;
        --link: #4da6ff;
        --border: #444444;
        --code-bg: #2d2d2d;
      }
    }

    body {
      margin: 0 auto;
      padding: 1rem;
      max-width: 65ch;
      background-color: var(--bg);
      color: var(--text);
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
      line-height: 1.6;
      font-size: 1rem;
    }

    header {
      margin-bottom: 2rem;
      border-bottom: 1px solid var(--border);
    }

    h1 {
      margin: 0;
      font-size: 2rem;
    }

    .tagline {
      color: #666;
      font-style: italic;
    }

    main {
      margin-bottom: 2rem;
    }

    nav a {
      color: var(--link);
      text-decoration: none;
    }

    nav a:hover {
      text-decoration: underline;
    }

    footer {
      border-top: 1px solid var(--border);
      padding-top: 1rem;
      font-size: 0.9rem;
      color: #666;
    }

    .post-date {
      font-size: 0.9rem;
      color: #666;
    }

    .how-made {
      background-color: var(--code-bg);
      border-left: 4px solid var(--link);
      padding: 1rem;
      margin-top: 2rem;
    }

    .how-made h3 {
      margin-top: 0;
    }

    dl {
      display: grid;
      grid-template-columns: auto 1fr;
      gap: 0.5rem 1rem;
    }

    dt {
      font-weight: bold;
    }
  </style>
</head>
<body>
  <header>
    <h1>Hello from a 30B model</h1>
    <p class="post-date">2026-11-08</p>
  </header>

  <main>
    <p><a href="../../index.html">← Back to home</a></p>

    <p>[POST TEXT GOES HERE]</p>

    <section class="how-made">
      <h3>How this page was made</h3>
      <dl>
        <dt>Model</dt><dd>[TODO]</dd>
        <dt>Quantization</dt><dd>[TODO]</dd>
        <dt>Runtime</dt><dd>[TODO]</dd>
        <dt>Hardware</dt><dd>[TODO]</dd>
        <dt>Prompt</dt><dd>[TODO]</dd>
        <dt>Time and attempts</dt><dd>[TODO]</dd>
        <dt>What broke</dt><dd>[TODO]</dd>
        <dt>What was fixed, and by whom</dt><dd>[TODO]</dd>
        <dt>Left broken on purpose</dt><dd>[TODO]</dd>
      </dl>
    </section>
  </main>

  <footer>
    &copy; 2026 Unified Memory
  </footer>
</body>
</html>
```
