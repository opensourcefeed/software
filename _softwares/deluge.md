---
layout: software
title: "Deluge"
slug: deluge
tagline: "Plugin-based open source BitTorrent client with a client/daemon split"
type: open-source
license: GPL-3.0
website: https://deluge-torrent.org
platforms: [Linux, Windows, macOS]
category: torrent-client
logo: /assets/images/software/deluge.svg
alternative_to:
  - utorrent
description: "Deluge is a free, open source BitTorrent client that separates its download daemon from its GTK, web, and console front ends, and extends its core functionality through a plugin system."
last_modified_at: 2026-08-11
---

## Overview

Deluge was first released in 2007 with a deliberate client/daemon architecture: the actual torrent downloading runs in a background daemon process (`deluged`), while the GTK desktop app, a web interface, and a console client all connect to it as interchangeable front ends. This split makes it straightforward to run the daemon on a headless server and control it from a desktop or browser on a different machine.

The project also built a plugin system into its core rather than treating extra features as separate forks, so functionality like a web UI, an RSS reader, notifications, or label-based organization ships as official plugins that can be enabled per install rather than always-on. Deluge uses libtorrent-rasterbar, the same underlying BitTorrent implementation used by several other open source clients, for its actual protocol handling.

## Key Features

- **Client/daemon architecture** — Run the daemon headless on a server and connect from a separate GTK, web, or console client
- **Plugin system** — Official plugins for a web UI, RSS downloads, notifications, scheduling, and label organization
- **Cross-platform daemon and clients** — Daemon and front ends available on Linux, Windows, and macOS
- **Encryption and DHT/PEX** — Standard BitTorrent protocol encryption plus decentralized peer discovery
- **Per-torrent bandwidth and queue controls** — Fine-grained scheduling for shared connections

## Use Cases

- **Remote-controlled seedbox setups** — Running the daemon on a VPS or home server and managing it from a laptop's GTK or web client
- **Headless NAS installs** — Enabling the WebUI plugin to control downloads entirely through a browser
- **Users who want optional features, not a fixed feature set** — Enabling only the plugins that are actually needed
- **Multi-machine workflows** — One daemon serving multiple front ends across different devices

## Who It's For

Deluge suits users comfortable with a slightly more technical setup in exchange for flexibility — particularly people running a dedicated seedbox or NAS who want to separate the always-on download process from whatever device they use to check on it. The plugin system also appeals to users who'd rather add features as needed than work around a client that tries to do everything by default.
