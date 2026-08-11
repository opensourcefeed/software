---
layout: software
title: "qBittorrent"
slug: qbittorrent
tagline: "Free and open source BitTorrent client with no ads"
type: open-source
license: GPL-2.0-or-later
website: https://www.qbittorrent.org
platforms: [Linux, Windows, macOS]
category: torrent-client
logo: /assets/images/software/qbittorrent.svg
alternative_to:
  - utorrent
description: "qBittorrent is a free, open source BitTorrent client built with the Qt toolkit, offering a built-in search engine, RSS downloader, and remote-control web UI with no ads or bundled software."
last_modified_at: 2026-08-11
---

## Overview

qBittorrent was started in 2006 by Christophe Dumez, a computer science student, as a lightweight, Qt-based alternative to the existing BitTorrent clients of the time. Its stated goal from the outset was to match the feature set of popular proprietary clients like uTorrent while remaining completely free of advertising, bundled offers, and other bundleware that later became common in closed-source torrent software.

The project uses its own BitTorrent implementation, libtorrent-rasterbar (written by Arvid Norberg), rather than building on another client's codebase, and ships an interface closely modeled on uTorrent's classic layout, which has made it a common first stop for users migrating away from proprietary clients. qBittorrent is now maintained by a community of contributors and sees frequent releases across Linux, Windows, and macOS.

## Key Features

- **No ads or bundled software** — The client itself carries no advertising, sponsored offers, or third-party bundleware
- **Built-in search engine** — Plugin-based search across multiple torrent sites directly from the client
- **Web UI** — Full-featured browser-based remote control, useful for running qBittorrent headless on a server or NAS
- **RSS downloader** — Automatic downloading of torrents matching RSS feed filters
- **IP filtering and encryption** — Peer connection encryption and IP blocklist support
- **Torrent creator** — Built-in tool for creating and seeding new .torrent files
- **Sequential and prioritized downloading** — Useful for streaming media while it downloads

## Use Cases

- **Downloading Linux distributions** — A common way to fetch official ISOs distributed via torrent by projects like Ubuntu, Fedora, and Debian
- **Headless server or NAS use** — Running via its web UI on a home server without a desktop environment
- **Automated downloads** — RSS-based automatic downloading for content that publishes torrent feeds
- **Bandwidth-managed downloading** — Scheduling and per-torrent speed limits for shared or metered connections

## Who It's For

qBittorrent suits anyone who wants a full-featured torrent client without ads, bundled offers, or a paid tier — from casual users downloading Linux ISOs to people running a always-on download box who need the web UI for remote management. Its close resemblance to uTorrent's classic interface also makes it an easy switch for users leaving that client behind.
