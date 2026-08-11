---
layout: software
title: "rTorrent"
slug: rtorrent
tagline: "Terminal-based BitTorrent client for servers and seedboxes"
type: open-source
license: GPL-2.0
website: https://github.com/rakshasa/rtorrent
platforms: [Linux, macOS]
category: torrent-client
logo: /assets/images/software/rtorrent.svg
alternative_to:
  - utorrent
description: "rTorrent is a free, open source, text-based BitTorrent client that runs entirely in the terminal, commonly paired with the ruTorrent web front end for remote management on seedboxes and headless servers."
last_modified_at: 2026-08-11
---

## Overview

rTorrent was created by Jari Sundell as a ncurses-based, terminal-only BitTorrent client, with no graphical interface at all. That design makes it lightweight enough to run continuously on low-resource VPS instances and remote servers, controlled entirely over SSH, which is why it became a standard choice for "seedbox" hosting providers and self-managed remote seeding boxes.

Because rTorrent has no built-in web interface of its own, it's almost always deployed alongside ruTorrent, a separate open source PHP web front end that connects to rTorrent's XML-RPC interface to provide browser-based monitoring and control. The two projects are maintained independently but are commonly packaged and documented together.

## Key Features

- **Terminal-only interface** — No GUI dependencies at all, making it viable on minimal server installs
- **Low resource usage** — Designed to run continuously on constrained VPS or shared hosting environments
- **Session and watch-directory support** — Resumes state after restart and can auto-load torrents dropped into a folder
- **XML-RPC interface** — Enables external tools like ruTorrent to monitor and control it remotely
- **Scriptable configuration** — Text-based `.rtorrent.rc` config file suited to automation and version control

## Use Cases

- **Seedbox hosting** — The de facto standard client on many commercial and self-hosted seedbox setups
- **Headless VPS seeding** — Long-running, unattended seeding on remote servers accessed over SSH
- **Automated pipelines** — Scriptable configuration and watch directories for hands-off torrent handling
- **Resource-constrained hosting** — Servers where a GUI or heavier daemon isn't practical

## Who It's For

rTorrent is built for users comfortable working entirely from the command line, particularly those running a dedicated seedbox or VPS for long-term seeding. It's not aimed at desktop users looking for a point-and-click experience — for that, qBittorrent, Transmission, or Deluge are a better fit — but it's a strong choice when the actual desktop is a terminal window over SSH.
