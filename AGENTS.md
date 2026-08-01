# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Project Overview

This is a personal blog built with [Hugo](https://gohugo.io/), a static site generator. The site uses the PaperMod theme (included as a git submodule in `themes/papermod/`) and is deployed to GitHub Pages.

### Key Commands

**Development server:**
```bash
hugo server -D
```
The `-D` flag includes draft posts in the preview.

**Build for production:**
```bash
hugo --destination ./public
```

**Create a new post:**
```bash
hugo new posts/my-post.md
```
This uses the archetype in `archetypes/default.md` which generates frontmatter with a draft status of `true`.

## Architecture

### Content Structure

- `content/posts/` - Blog posts (Markdown with TOML frontmatter)
- `content/about.md` - About page
- `static/img/` - Static images (referenced as `/img/filename.jpg`)
- `assets/css/` - Custom CSS that extends the PaperMod theme
- `public/` - Generated static site (gitignored)

### Frontmatter Format

Posts use Hugo TOML frontmatter wrapped in `+++` delimiters:
```toml
+++
title = 'Post Title'
url = '/posts/url-slug'
date = 2024-11-30T22:25:53-05:00
draft = true
+++
```

The `url` field overrides the default URL pattern. Setting `draft = false` or removing `draft` publishes the post.

### Deployment

The site is published via GitHub Pages. The `CNAME` file at the repo root (`www.tmaffia.com`) sets the custom domain GitHub Pages serves.

### Theme Customization

The PaperMod theme is a git submodule. Direct theme modifications should be avoided. Custom styles go in `assets/css/custom.css` (referenced in `config.yml` under `custom_css`).

### Configuration

Main configuration is in `config.yml` (not TOML). Notable settings:
- `params.defaultTheme: auto` - Respects system dark/light mode preference
- `markup.goldmark.renderer.unsafe: true` - Allows raw HTML in Markdown
- Social icons and navigation are defined in the `menu` and `socialIcons` sections
