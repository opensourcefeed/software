---
layout: software
title: "RustDesk"
slug: rustdesk
tagline: "Open source, self-hostable remote desktop software"
type: open-source
license: AGPL-3.0
website: https://rustdesk.com
platforms: [Windows, macOS, Linux, Android, iOS, Web]
category: remote-desktop
logo: /assets/images/software/rustdesk.svg
alternative_to:
  - anydesk
  - nomachine
  - teamviewer
description: "RustDesk is an open source remote desktop application written in Rust, designed for self-hosting your own relay server as a free, auditable alternative to AnyDesk, NoMachine, and TeamViewer."
featured_image: rustdesk.webp
last_modified_at: 2026-09-18
---

## Overview

RustDesk is an open source remote desktop application written primarily in Rust, built explicitly as a self-hostable alternative to closed source tools like TeamViewer, AnyDesk, and NoMachine. Its client and server code, including the relay server that brokers connections between devices, is published on GitHub under the GNU Affero General Public License version 3 (AGPL-3.0), meaning the entire connection-handling stack can be inspected and audited.

By default, RustDesk clients connect through the project's own public relay servers, but the software is designed so that individuals or organizations can run their own `rustdesk-server` instance instead, keeping all connection traffic and metadata under their own infrastructure rather than a third party's. This self-hosting option is a core part of RustDesk's design rather than an enterprise-only add-on.

## Key Features

- **Self-hostable relay server** — Run your own `rustdesk-server` for full control over connection routing and metadata
- **Cross-platform clients** — Windows, macOS, Linux, Android, iOS, and a web client
- **File transfer** — Transfer files between local and remote systems during a session
- **Unattended access** — Configure permanent access to a machine without requiring someone at the remote end to approve each connection
- **End-to-end encryption** — Connections are encrypted, and self-hosted deployments avoid relaying decrypted traffic through third-party servers
- **Open source codebase** — Full client, server, and protocol source is publicly auditable on GitHub

## Use Cases

- **Privacy-conscious remote access** — Individuals and organizations that want to avoid routing remote sessions through a vendor's servers
- **Self-hosted IT support** — Businesses running their own relay infrastructure for internal remote support
- **Personal remote access** — Free, unlimited personal use without the session or feature caps of some proprietary free tiers
- **Auditable deployments** — Environments where the remote-access tool's code must be reviewable for security compliance

## Who It's For

RustDesk suits users and organizations who want a free, open source remote desktop tool and are willing to either use RustDesk's public relay servers or self-host their own for full control. It's a natural fit for anyone moving away from AnyDesk or NoMachine who wants the underlying connection code to be open and auditable rather than proprietary.
