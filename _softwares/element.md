---
layout: software
title: "Element"
slug: element
tagline: "Secure, decentralized messaging app"
type: open-source
license: AGPL-3.0
website: https://element.io
platforms: [Linux, Windows, macOS, Android, iOS]
category: communication
logo: /assets/images/software/element.png
alternative_to:
  - slack
  - discord
  - microsoft-teams
description: "Element is a free, open source messaging app built on the Matrix protocol, offering end-to-end encryption, decentralized hosting, and team collaboration."
last_modified_at: 2026-08-06
faq:
  - question: "Is Element secure?"
    answer: "Yes — Element encrypts messages, files, and calls end-to-end by default in encrypted rooms, using the Matrix protocol's Olm/Megolm cryptographic ratchet, the same cryptographic approach used by Signal's protocol."
  - question: "Is Element free?"
    answer: "Yes, the Element client apps are free to use and free to self-host. Element the company also sells paid hosting, support, and enterprise features on top of the free, open source core."
  - question: "Can I self-host Element?"
    answer: "Yes. You'll need to run a Matrix homeserver (typically Synapse) plus the Element Web client — see the Self-Hosting Element section above for a starting docker-compose setup."
  - question: "What protocol does Element use?"
    answer: "Element is built on Matrix, an open standard for decentralized, real-time communication maintained by the non-profit Matrix.org Foundation — independent of Element the company."
---

## Overview

Element is a free and open source messaging client built on the Matrix protocol, an open standard for decentralized, real-time communication. Matrix was created in 2014 by Matthew Hodgson and Amandine Le Pape, who also founded the company behind Element — originally called New Vector, later renamed Element, and now operating as Element Creations Ltd. The Matrix protocol itself is governed independently by the non-profit Matrix.org Foundation, of which Element is a Platinum member alongside other organizations that build on the standard.

Element's client code is released under a dual/triple licensing model: it can be used for free under the AGPL-3.0 license or the GPL-3.0 license, or under a paid Element Commercial License for organizations that need different terms. This structure lets Element remain fully open source while funding continued development through commercial support and hosting contracts. Because Matrix is a federated protocol, Element users can communicate with people on other Matrix-compatible clients and homeservers without needing to use Element itself, and self-hosters retain full control over their data.

## Is Element Open Source?

Yes. Element's client applications (Element Web, Desktop, Android, and iOS) are dual/triple-licensed under AGPL-3.0, GPL-3.0, or a paid Element Commercial License for organizations that need different terms — source is public on [GitHub](https://github.com/element-hq). The Matrix protocol itself, along with the reference Synapse homeserver, is developed separately under the non-profit Matrix.org Foundation. It's worth noting Element is a Matrix *client*, not a standalone messenger — it's one of several apps (including Cinny, FluffyChat, and SchildiChat) built on the same open Matrix network, so "is Element open source" and "is Matrix open source" are related but distinct questions.

## Key Features

- **End-to-end encryption** — Messages, files, and calls are encrypted by default
- **Decentralized** — Host your own server or use a public homeserver
- **Rooms and spaces** — Organize conversations into rooms and group them into spaces
- **Bridges** — Connect to IRC, Slack, Discord, Telegram, and other networks
- **File sharing** — Upload and share files with encrypted storage
- **Voice and video calls** — Built-in VoIP with end-to-end encryption
- **Integrations** — Webhooks and bots for automation
- **Federation** — Communicate with users on other Matrix servers

## Use Cases

- **Privacy-conscious teams** — Self-hosted, encrypted team communication
- **Open source projects** — Community chat without vendor lock-in
- **Cross-platform messaging** — Unified chat across networks via bridges
- **Enterprise** — Self-hosted collaboration with data sovereignty

## Self-Hosting Element

Self-hosting Element means running two separate pieces: a Matrix homeserver (most commonly [Synapse](https://github.com/element-hq/synapse), Matrix.org's reference implementation) that stores accounts and messages, and the Element Web client that people actually log into. Element Desktop is just Element Web wrapped in Electron, so it talks to the same homeserver — there's nothing extra to self-host for the desktop app itself.

A minimal starting point looks like this (Synapse still needs a one-time `generate` step to create its config and signing keys before this will start cleanly — see the [Synapse documentation](https://element-hq.github.io/synapse/latest/setup/installation.html) for that step):

```yaml
services:
  synapse:
    image: matrixdotorg/synapse:latest
    volumes:
      - ./synapse-data:/data
    environment:
      - SYNAPSE_SERVER_NAME=your.domain
      - SYNAPSE_REPORT_STATS=no
    ports:
      - "8008:8008"

  element-web:
    image: vectorim/element-web:latest
    ports:
      - "80:80"
    depends_on:
      - synapse
```

In production you'll also want TLS termination (e.g. via a reverse proxy) and, for federation with other Matrix servers, a `.well-known` delegation setup — both covered in Synapse's own docs.

## Element vs Signal vs Telegram

| Feature | Element (Matrix) | Signal | Telegram |
|---|---|---|---|
| Client open source | Yes — AGPL-3.0/GPL-3.0 | Yes — AGPLv3 | Yes (clients only) |
| Server open source | Yes — Synapse, AGPL-3.0 | Yes — AGPLv3 | No — proprietary |
| Self-hostable | Yes | Not practically (client pins Signal's servers) | No |
| Federated | Yes — any Matrix server can interoperate | No — single Signal network | No — single Telegram network |
| E2E encryption by default | Yes, in encrypted rooms | Yes, all chats | No — only opt-in "Secret Chats" |

The key distinction: Element/Matrix is the only one of the three built as an open, federated network where anyone can run their own server and still talk to everyone else — Signal and Telegram are open-source-client, closed-network products.

## Element Clients

- [Element Web](https://app.element.io) — runs in any modern browser, no install required
- [Element Desktop](https://element.io/download) — Electron wrapper around Element Web for Windows, macOS, and Linux
- [Element Android](https://play.google.com/store/apps/details?id=im.vector.app) — native Android client
- [Element iOS](https://apps.apple.com/app/id1083446067) — native iOS client

## Who It's For

Element is for teams and individuals who prioritize privacy, data sovereignty, and open standards. It is particularly suited for organizations that need self-hosted communication infrastructure, open source communities, and users who want to escape vendor lock-in.