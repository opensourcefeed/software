---
layout: software
title: "Transmission"
slug: transmission
tagline: "Lightweight, low-resource open source BitTorrent client"
type: open-source
license: GPL-2.0
website: https://transmissionbt.com
platforms: [Linux, Windows, macOS]
category: torrent-client
logo: /assets/images/software/transmission.svg
alternative_to:
  - utorrent
description: "Transmission is a free, open source BitTorrent client designed to be lightweight and easy to use, shipped by default in many Linux distribution repositories and available as a native GTK app, Qt app, daemon, or web interface."
last_modified_at: 2026-08-11
---

## Overview

Transmission was first released in 2005 with a focus on staying out of the user's way: a small memory footprint, sensible defaults, and a minimal interface rather than a long list of configurable options. It was one of the earliest torrent clients to ship a native macOS app, and its cross-platform reach later expanded to include a GTK client for GNOME desktops, a Qt client, a headless daemon for servers, and a web interface for remote control.

Because of its low resource use and straightforward packaging, Transmission has long been the default or recommended torrent client in the official repositories of several major Linux distributions, including Ubuntu and Fedora, which has made it one of the most widely installed open source BitTorrent clients on Linux even for users who never seek it out directly.

## Key Features

- **Low memory and CPU footprint** — Built to run efficiently, including on older hardware or low-power servers
- **Multiple front ends** — Native GTK and Qt desktop clients, a headless daemon, and a web UI, all sharing the same backend
- **Simple, uncluttered interface** — Fewer configuration screens than most competing clients, favoring sensible defaults
- **Remote access** — Web interface and remote-control protocol for managing a headless instance over the network
- **Encryption and peer exchange** — Standard BitTorrent protocol encryption and PEX/DHT support
- **Watch directories** — Automatically starts torrents added to a designated folder

## Use Cases

- **Distribution package downloads** — The default or preinstalled client for downloading Linux distro ISOs on several major distributions
- **Headless NAS or server seeding** — Running the daemon on always-on hardware and managing it remotely through the web UI
- **Low-resource systems** — Older machines, single-board computers, or lightweight VMs where a heavier client would be wasteful
- **Users who want minimal configuration** — A client that works well with default settings out of the box

## Who It's For

Transmission fits users who want a torrent client that just works without much tuning, particularly on Linux where it's often already installed. It's also a strong choice for headless setups — NAS boxes, home servers, and Raspberry Pi-class hardware — thanks to its daemon-plus-web-UI architecture and small resource footprint.
