# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Project Overview

This is a personal blog built with [Hugo](https://gohugo.io/), a static site generator. The site uses the PaperMod theme (included as a git submodule in `themes/papermod/`) and is deployed to DigitalOcean App Platform via Terraform.

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
The build command used in production is `rm -r ./public; hugo --destination ./public` (defined in `tf/blog-app.tf`).

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

The `tf/` directory contains Terraform configuration for deploying to DigitalOcean App Platform:
- `provider.tf` - DigitalOcean provider configuration
- `blog-app.tf` - App spec that builds from GitHub on push to the `release` branch

The build uses DigitalOcean's `hugo` environment slug which includes Hugo pre-installed.

### Theme Customization

The PaperMod theme is a git submodule. Direct theme modifications should be avoided. Custom styles go in `assets/css/custom.css` (referenced in `config.yml` under `custom_css`).

### Configuration

Main configuration is in `config.yml` (not TOML). Notable settings:
- `params.defaultTheme: auto` - Respects system dark/light mode preference
- `markup.goldmark.renderer.unsafe: true` - Allows raw HTML in Markdown
- Social icons and navigation are defined in the `menu` and `socialIcons` sections