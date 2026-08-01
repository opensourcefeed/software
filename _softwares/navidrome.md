---
layout: software
title: "Navidrome"
slug: navidrome
tagline: "Self-hosted music streaming server for your own library"
type: open-source
license: GPL-3.0
website: https://www.navidrome.org
platforms: [Linux, Windows, macOS, Docker]
category: music-streaming
alternative_to:
  - spotify
  - apple-music
  - youtube-music
description: "Navidrome is a free, open source, self-hosted music server that streams your own audio library through a modern web player and Subsonic-compatible mobile apps, as an alternative to licensed streaming services."
last_modified_at: 2026-07-27
---

## Overview

Navidrome is an open source music server designed to stream a user's own audio file collection rather than a licensed catalog. It implements the long-standing Subsonic API, which means it works with the large existing ecosystem of Subsonic-compatible mobile and desktop clients, while also shipping its own modern web-based player out of the box. The project is written in Go and distributed as a lightweight single binary or Docker container, making it straightforward to run on a home server, NAS, or small VPS.

Because Navidrome only streams files the user already owns or has legally acquired, it sidesteps the licensing restrictions, regional catalog gaps, and removal risk inherent to services like Spotify. The trade-off is that it has no built-in catalog or discovery engine — users are responsible for building and maintaining their own music library, typically ripped CDs, purchased downloads, or other files organized with proper tags and metadata.

## Key Features

- **Subsonic API compatibility** — Works with a wide range of existing Subsonic client apps
- **Self-hosted** — Runs on your own server, NAS, or Docker host with no vendor dependency
- **Modern web player** — Built-in responsive web UI for browsing and streaming
- **Multi-user support** — Separate accounts, playlists, and play history per user
- **Lightweight** — Single Go binary with low resource requirements
- **Metadata scanning** — Automatic library scanning and tag-based organization

## Use Cases

- **Personal music libraries** — Streaming a self-owned collection from anywhere
- **NAS and home server users** — Running a private streaming service alongside other self-hosted tools
- **Privacy-conscious listeners** — Avoiding third-party tracking and licensing dependencies
- **Archival collections** — Making ripped CDs or purchased downloads accessible on mobile devices

## Who It's For

Navidrome is for people who already own or maintain a personal music collection and want to stream it the way a commercial service would, without relying on a label's licensing terms. It suits home server enthusiasts and privacy-conscious listeners more than casual users looking for a large ready-made catalog with discovery features.
