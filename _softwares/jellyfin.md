---
layout: software
title: "Jellyfin"
slug: jellyfin
tagline: "Free, self-hosted media server with no telemetry or fees"
type: open-source
license: GPL-2.0-or-later
website: https://jellyfin.org
platforms: [Linux, Windows, macOS, Docker]
category: music-streaming
logo: /assets/images/software/jellyfin.svg
alternative_to:
  - spotify
  - apple-music
description: "Jellyfin is a free, open source media server you self-host to stream your own movies, TV, and music library, forked from Emby in 2018 after Emby moved toward a closed, paid model."
last_modified_at: 2026-08-06
faq:
  - question: "Is Jellyfin open source?"
    answer: "Yes. Jellyfin's server is licensed under GPL-2.0-or-later, with source on GitHub, and the project takes no telemetry and charges nothing — it's community-run rather than backed by a company."
---

## Overview

Jellyfin was created in 2018 as a community fork of Emby, after Emby began moving some of its server features behind a paid subscription and closing parts of its source. Jellyfin kept the whole project fully open source and community-governed instead, with no company behind it and no premium tier. It's built primarily in C#/.NET and organizes your own media files — movies, TV shows, music, photos, and more — into a Plex- or Emby-style browsing experience with metadata, artwork, and transcoding for whatever device you're watching or listening on.

While often compared to Plex and Emby as a media server, Jellyfin is also a legitimate self-hosted alternative specifically to music-streaming services: point it at a library of your own audio files and it streams them to web, mobile, and TV apps much like Navidrome or Funkwhale, just bundled with video and photo support in the same server if you want it.

## Key Features

- **Self-hosted** — Runs on your own Linux, Windows, or macOS machine, NAS, or Docker host
- **No telemetry, no fees** — No account requirement, no paid tier, no usage tracking
- **Transcoding** — Converts media on the fly for whatever device is playing it, including hardware-accelerated transcoding
- **Broad client support** — Official and community apps for web, Android, iOS, Roku, Android TV, and more
- **Live TV and DVR** — Optional integration with tuner hardware for live TV and recording
- **Plugin system** — Extend metadata providers, subtitles, and other functionality

## Use Cases

- **Personal media libraries** — Streaming your own movies, shows, and music from a home server
- **Music streaming replacement** — Serving a self-owned audio library to mobile and web apps
- **Privacy-conscious households** — No telemetry or cloud dependency, all data stays on your own hardware
- **NAS users** — Common companion app for Synology, QNAP, and other home server setups

## Who It's For

Jellyfin is for anyone who wants a full, free media server without vendor lock-in, subscription fees, or telemetry — whether that's for movies and TV or as a self-hosted stand-in for a music-streaming service. It suits home server enthusiasts most directly, but its official mobile and web apps make it usable for less technical household members too.
