---
layout: software
title: "Session"
slug: session
tagline: "Decentralized messenger with no phone number required"
type: open-source
license: GPL-3.0
website: https://getsession.org
platforms: [Windows, macOS, Linux, Android, iOS]
category: communication
logo: /assets/images/software/session.svg
alternative_to:
  - whatsapp
  - telegram
description: "Session is a free, open source messenger that requires no phone number or email, routing encrypted messages through a decentralized onion-routing network instead of central servers."
last_modified_at: 2026-08-01
---

## Overview

Session was released in 2020 by the Oxen Privacy Tech Foundation (renamed Session Technology Foundation in 2023), building on earlier work from the Signal Protocol codebase before diverging into its own architecture. Its central design goal is removing identifying information from the registration process entirely: there's no phone number, no email, and no username required to create an account — only a locally generated cryptographic key pair, from which a Session ID is derived.

Instead of centralized servers, Session routes messages through Session Onion Requests, a network of independently run Service Nodes that relay encrypted traffic in a way similar to Tor, so no single node knows both the sender and recipient of a message. This trades some of the reliability and speed of a centralized service like Signal or WhatsApp for stronger metadata resistance — even Session's own infrastructure operators can't easily map who is talking to whom. The client and protocol are fully open source under GPL-3.0, and the project is funded through the Session Technology Foundation rather than advertising or a subscription model.

The tradeoffs are real: without phone-number-based discovery, finding contacts requires manually exchanging Session IDs or QR codes, there's no SMS fallback, and the onion-routed network can introduce more latency than a direct connection to centralized servers. Session also has a much smaller user base than WhatsApp, Telegram, or even Signal, which limits its network effect.

## Key Features

- **No phone number or email required** — Accounts are just a locally generated cryptographic key pair
- **Decentralized onion routing** — Messages relay through independent Service Nodes instead of a company's central servers
- **Open source** — Fully open client and protocol under GPL-3.0
- **Disappearing messages** — Configurable per-conversation message expiration
- **Voice messages and file attachments** — Core messaging features alongside the privacy-focused architecture
- **Cross-platform** — Android, iOS, Windows, macOS, and Linux

## Use Cases

- **Metadata-resistant communication** — Situations where hiding who is talking to whom matters as much as message content
- **Anonymous or pseudonymous contact** — No phone number tie-in makes it usable without revealing a real-world identity
- **Censorship-prone regions** — Decentralized routing makes Session harder to block at the network level than a single-server service

## Who It's For

Session is for people who want messaging with the least possible identifying footprint — no phone number, no central server to subpoena or shut down — and are willing to trade some convenience and speed for that. It's a weaker fit for anyone who wants to reach existing WhatsApp or Telegram contacts easily, since Session's contact discovery has no bridge to phone-number-based networks and its smaller user base means fewer people are already on it.
