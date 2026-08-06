---
layout: software
title: "Signal"
slug: signal
tagline: "Open source, end-to-end encrypted messenger"
type: open-source
license: AGPL-3.0
website: https://signal.org
platforms: [Windows, macOS, Linux, Android, iOS]
category: communication
logo: /assets/images/software/signal.svg
alternative_to:
  - whatsapp
  - telegram
description: "Signal is a free, open source messaging app with end-to-end encryption enabled by default for all chats, calls, and groups, run by a non-profit foundation instead of a for-profit company."
last_modified_at: 2026-08-06
---

## Overview

Signal traces back to 2013, when Moxie Marlinspike and Open Whisper Systems built TextSecure and RedPhone, which merged into the Signal app in 2015. In 2018, WhatsApp co-founder Brian Acton — after leaving Meta and publicly criticizing its data practices — contributed $50 million to launch the non-profit Signal Foundation, which has run the project since. That non-profit structure is a key differentiator: Signal has no advertising business and no shareholders to satisfy, funded instead by grants and donations.

Both Signal's client apps and its server code are open source, and the Signal Protocol it pioneered — a double-ratchet end-to-end encryption scheme — has since been licensed and adopted by WhatsApp, Google Messages (RCS), and others, making Signal's cryptography arguably the most independently vetted in the industry. Unlike Telegram, encryption is on for every chat, call, and group by default, with no separate "secret chat" mode to opt into. Signal also minimizes metadata collection more aggressively than most competitors, including sealed sender technology that hides who is messaging whom even from Signal's own servers.

The tradeoff is dependence on a phone number for registration (like WhatsApp) and a smaller feature set — no built-in large public channels or bot platform comparable to Telegram, and a smaller user base than either WhatsApp or Telegram, which can make it harder to get contacts to switch.

## Is Signal Open Source?

Yes, on both sides of the connection: the client apps and the server code are both published under AGPL-3.0 on [GitHub](https://github.com/signalapp). That's a stronger openness position than Telegram (open clients, closed server) or most other mainstream messengers, and it's part of why the Signal Protocol has been independently reviewed and subsequently adopted by other encrypted messaging products.

## Key Features

- **End-to-end encryption by default** — Every chat, group, and call, with no separate mode required
- **Open source, non-profit** — Client and server code both public; run by the Signal Foundation with no ad-driven business model
- **Minimal metadata** — Sealed sender and disappearing messages reduce what's retained even by Signal itself
- **Voice and video calls** — Including group calls, all encrypted the same way as messages
- **Cross-platform** — Android, iOS, Windows, macOS, and Linux, with a linked desktop client
- **Usernames** — Optional usernames let contacts reach you without sharing your phone number

## Use Cases

- **Privacy-focused personal messaging** — Default end-to-end encryption without needing to configure anything
- **Journalists and activists** — Minimal metadata retention and sealed sender for higher-risk communication
- **Small teams wanting simple, secure chat** — A lighter-weight alternative to self-hosted platforms like Element for groups that don't need federation

## Who It's For

Signal is for anyone who wants encryption on by default without trusting a for-profit company's data practices, and who values Signal's non-profit structure and academically vetted cryptography. It's a weaker fit for communities that need Telegram-scale public channels, extensive bots, or very large groups, since Signal deliberately keeps its feature set narrower in service of privacy and simplicity.
