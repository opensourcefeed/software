---
layout: software
title: "Funkwhale"
slug: funkwhale
tagline: "Federated, open source music streaming platform"
type: open-source
license: AGPL-3.0
website: https://www.funkwhale.audio
platforms: [Linux, Windows, macOS via web, Android]
category: music-streaming
logo: /assets/images/software/funkwhale.svg
alternative_to:
  - spotify
  - apple-music
  - youtube-music
description: "Funkwhale is a free, open source, federated music streaming server built on ActivityPub, letting communities share and stream self-hosted music libraries across independent servers."
last_modified_at: 2026-08-01
---

## Overview

Funkwhale started in 2017 as a project by French developer Eliot Berriot, built around the idea of applying the federated, ActivityPub-based social networking model popularized by Mastodon to music streaming. Rather than a single centralized service, Funkwhale instances (called "pods") are independently operated servers that can federate with one another, letting users on one pod follow artists, libraries, and playlists hosted on a completely different, independently administered pod — similar to how Mastodon servers interconnect.

The project is released under the AGPL-3.0 license and is self-hosted, typically via Docker, with each pod's administrator responsible for their own storage, moderation, and user accounts. Funkwhale supports uploading a personal music library (including podcasts) and streaming it through a web player or any Subsonic-compatible mobile app, and its federation model means a small pod's library can effectively be extended by following and streaming from other pods without duplicating storage.

## Key Features

- **Federation (ActivityPub)** — Independent pods can interconnect, letting users discover and stream libraries hosted elsewhere
- **Self-hosted** — Deployed via Docker on infrastructure you or your community controls
- **Subsonic API compatibility** — Works with existing Subsonic-compatible mobile and desktop clients
- **Podcast support** — Hosts and streams podcasts alongside music
- **Radio and playlists** — Algorithmic and manual playlist/radio features per pod
- **Multi-user pods** — Community-run instances with per-user libraries and permissions

## Use Cases

- **Community-run music servers** — Groups or collectives hosting a shared, federated library
- **Personal self-hosted streaming** — Individuals streaming their own ripped or purchased music collection
- **Privacy-conscious listeners** — Avoiding licensing-catalog dependencies and third-party tracking
- **Podcast hosting** — Self-hosted podcast distribution alongside music

## Who It's For

Funkwhale suits self-hosters and communities who want a music streaming service built around user-owned libraries and federation rather than a licensed, centralized catalog. It appeals particularly to users already familiar with the Fediverse (Mastodon and similar platforms) who want the same federated model applied to music.
