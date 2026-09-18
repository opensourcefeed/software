---
layout: software
title: "NoMachine"
slug: nomachine
tagline: "Cross-platform proprietary remote desktop software"
type: proprietary
license: "Proprietary (free for personal, non-commercial use)"
website: https://www.nomachine.com
platforms: [Windows, macOS, Linux, Raspberry Pi]
category: remote-desktop
logo: /assets/images/software/nomachine.svg
alternative_to: []
has_alternatives: true
description: "NoMachine is a proprietary remote desktop application built on the NX protocol, offering fast cross-platform remote access with a free personal-use edition and paid Enterprise subscriptions for business use."
faq:
  - question: "Is NoMachine free to use?"
    answer: "NoMachine offers a free \"NoMachine\" edition for personal, non-commercial use with no session time limits. Commercial and enterprise use requires a paid subscription, such as the Enterprise Desktop license."
  - question: "Is NoMachine open source?"
    answer: "No. NoMachine's client and server applications are closed source proprietary software. RustDesk and Remmina are open source remote desktop alternatives."
last_modified_at: 2026-09-18
---

## Overview

NoMachine is a remote desktop application developed by the Italian company NoMachine S.r.l., built around the NX protocol, a compression and remote display technology originally developed by NoMachine's founders for the earlier open source FreeNX/NX project. NoMachine markets the current product as a proprietary continuation focused on low-latency remote desktop access, distinct from that earlier open source codebase.

The software is distributed as a free "NoMachine" personal edition with no session time limits and no feature restrictions on core remote-desktop functionality, alongside several paid Enterprise tiers (Enterprise Desktop, Terminal Server, and Cloud Server subscriptions) aimed at business deployments needing centralized licensing, terminal server support, or cloud-hosted access. Client and server binaries are available for Windows, macOS, Linux, and Raspberry Pi.

## Key Features

- **NX protocol compression** — Optimized for responsiveness over slower or higher-latency network connections
- **File transfer** — Drag-and-drop file transfer between local and remote sessions
- **Audio streaming** — Remote audio playback forwarded to the local machine
- **Multi-monitor support** — Remote sessions can span multiple displays
- **Session persistence** — Reconnect to an existing remote session rather than starting a new one each time
- **Browser-based access** — Some editions support connecting through a web browser without installing a client

## Use Cases

- **Remote IT support** — Accessing and troubleshooting a colleague's or client's desktop remotely
- **Accessing a home or office PC** — Personal users connecting to their own machine while away
- **Terminal server deployments** — Enterprise tiers support multiple concurrent remote sessions to a single server
- **Cross-platform remote work** — Connecting between Windows, macOS, and Linux machines with one client

## Who It's For

NoMachine suits individuals who want a fast, free remote desktop tool for personal use, and businesses willing to pay for enterprise licensing, terminal server support, and vendor-backed maintenance. Users who need the client and server source code to be open and auditable, or who want to self-host without per-seat licensing, may prefer RustDesk or Remmina instead.
