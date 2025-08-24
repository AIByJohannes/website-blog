# Johannes Copeland — Personal Blog (Hugo + GitHub Pages)

Open-source personal blog built with Hugo and the Ananke theme. Fast, minimal, and deploys to GitHub Pages from the `docs/` folder.

[Live site](https://blog.johannescopeland.com/) • [RSS](https://blog.johannescopeland.com/index.xml)

Badges: ![Hugo](https://img.shields.io/badge/Static%20Site-Hugo-ff4088?logo=hugo) ![GitHub Pages](https://img.shields.io/badge/Deploy-GitHub%20Pages-222?logo=github) ![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)

## Features
- Hugo static site with Ananke theme
- Posts with tags, categories, and pretty permalinks (`/year/month/slug/`)
- Dark style + One Dark code highlighting
- Social share and follow (configurable)
- SEO-friendly: sitemap, RSS feed, clean HTML

## Quick start
Prerequisites: Hugo Extended v0.128+ (recommended latest). Install: https://gohugo.io/installation/

Run locally:

```bash
hugo server -D
```

Build for production (outputs to `docs/`):

```bash
hugo --minify
```

## Create a new post
```bash
hugo new post/my-first-post.md
```
Edit the file in `content/post/`, then set `draft: false` when ready to publish.

## Configure social links (Ananke)
Add to `hugo.toml`:

```toml
[params.ananke.social.follow]
  networks = ["github", "linkedin", "x-twitter", "rss"]

[params.ananke.social.github]
  username = "AIByJohannes"
[params.ananke.social.linkedin]
  username = "johannescopeland"
[params.ananke.social.x-twitter]
  username = "johannescopeland"
```

## Deployment (GitHub Pages)
This repo publishes to `docs/` (see `publishDir` in `hugo.toml`).

- Local build: `hugo --minify`
- Commit and push the updated `docs/` folder
- In GitHub: Settings → Pages → Deploy from a branch → select your default branch and `/docs`

Tip: Use GitHub Actions for automatic builds on push.

## Project structure
```
content/         # Markdown posts and pages
layouts/         # Optional overrides
themes/ananke/   # Theme
static/          # Static assets
docs/            # Built site (published by GitHub Pages)
```

## Suggested GitHub topics
hugo, ananke, blog, github-pages, static-site, personal-website, tech-blog, markdown

## License
Code: MIT (see LICENSE). Theme: Ananke (see `themes/ananke/LICENSE.md`).

Content: © 2025 Johannes Copeland. All rights reserved.
