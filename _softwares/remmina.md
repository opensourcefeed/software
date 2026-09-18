---
layout: software
title: "Remmina"
slug: remmina
tagline: "Open source remote desktop client for Linux"
type: open-source
license: GPL-2.0-or-later
website: https://remmina.org
platforms: [Linux, BSD]
category: remote-desktop
logo: /assets/images/software/remmina.svg
alternative_to:
  - anydesk
  - nomachine
  - teamviewer
description: "Remmina is a free, open source remote desktop client for Linux and other POSIX systems, supporting RDP, VNC, SSH, SPICE, and X2Go through a single GTK application."
featured_image: remmina.webp
last_modified_at: 2026-09-18
---

## Overview

Remmina is an open source remote desktop client originally created by Vic Lee in 2009 and released under the GNU General Public License version 2 or later. Unlike remote-access tools that bundle their own proprietary server and client, Remmina is a connection client: it uses existing, widely supported protocols — RDP, VNC, SSH, SPICE, and X2Go, built largely on the FreeRDP library — to connect to remote machines running standard remote-desktop servers, rather than requiring a matching Remmina server on the other end.

Remmina has been Ubuntu's default remote desktop client since Ubuntu 11.04, replacing the earlier `tsclient`, and remains widely packaged across mainstream Linux distributions. Its GTK-based interface lets users manage multiple saved remote connections across different protocols from a single application.

## Key Features

- **Multi-protocol support** — Connects via RDP, VNC, SSH, SPICE, and X2Go from one client
- **Connection profiles** — Save and organize multiple remote connections with per-connection settings
- **Remote desktop gateway support** — Connect through an RDS gateway for RDP sessions in enterprise networks
- **Plugin architecture** — Protocol support and extra features are implemented as loadable plugins
- **Tabbed and grouped sessions** — Manage several simultaneous remote sessions in one window
- **Built on FreeRDP** — Uses the actively maintained, open source FreeRDP implementation for its RDP protocol support

## Use Cases

- **Connecting to Windows machines** — Linux users accessing Windows desktops or servers over RDP
- **Linux and Unix remote administration** — Using VNC or SSH to manage remote Linux and BSD systems
- **Accessing virtual machine consoles** — SPICE support for connecting to VM consoles, including those managed by `virt-manager`
- **Cross-protocol IT support** — Administrators who need one tool to reach machines exposing different remote-access protocols

## Who It's For

Remmina is aimed at Linux and BSD users who need a client to connect *to* existing RDP, VNC, SSH, SPICE, or X2Go servers, rather than a full proprietary remote-access platform with its own client-server ecosystem. It's a natural default choice on Linux desktops where the remote machine already runs a standard remote-desktop server, and pairs well with self-hosted tools like RustDesk when the remote end also needs a modern, open source server component.
