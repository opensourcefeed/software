---
layout: software
title: "Anytype"
slug: anytype
tagline: "Local-first, source-available workspace for notes and objects"
type: source-available
license: "Any Source Available License (clients/middleware); MIT (any-sync protocol)"
website: https://anytype.io
platforms: [Windows, macOS, Linux, Android, iOS]
category: note-taking
logo: /assets/images/software/anytype.svg
alternative_to:
  - notion
  - obsidian
description: "Anytype is a local-first, source-available workspace that mirrors Notion's block-and-database model while storing data on-device and syncing peer-to-peer, without requiring a central server."
last_modified_at: 2026-08-01
---

## Overview

Anytype was built by a Swiss/Cyprus-based team to offer a Notion-like block and database editing experience without depending on a company's cloud servers. Early versions ran on an invite-only closed beta with a proprietary backend, which drew criticism from open source advocates given the project's positioning. The team subsequently published the client's source and moved to a local-first architecture built on their own "any-sync" protocol, storing data on the user's device and syncing directly between devices or through self-hosted infrastructure rather than a mandatory central service.

Anytype's licensing is not fully open source and should be stated precisely: the underlying any-sync and any-block protocol layers are MIT-licensed, but the actual client applications (desktop, iOS, Android) and the any-heart middleware are released under the Any Source Available License — a source-available license that is not OSI-approved, restricting commercial redistribution. Users can read and self-compile the code, but Anytype does not meet the standard definition of open source at the application layer.

Anytype's data model is close to Notion's: pages are built from blocks, and structured data lives in "sets" and "collections" similar to Notion databases, with relations linking objects together. Because the underlying storage is local-first, Anytype spaces remain accessible offline and aren't tied to the availability of a hosted product, which is the main trade-off users are making relative to Notion's simpler, always-online cloud model.

## Key Features

- **Local-first storage** — Data lives on-device by default, with peer-to-peer or self-hosted sync
- **Block-based editor** — Notion-style composable blocks for pages
- **Objects and sets** — Structured, relational data similar to Notion databases
- **Offline access** — Full functionality without an internet connection
- **End-to-end encryption** — Sync traffic between devices is encrypted
- **Cross-platform** — Native apps for desktop and mobile

## Use Cases

- **Personal knowledge management** — Notion-style notes and databases without cloud lock-in
- **Offline-first workflows** — Working without reliable internet access
- **Privacy-conscious teams** — Keeping structured workspace data off third-party servers
- **Self-hosters** — Running their own sync infrastructure instead of a vendor's

## Who It's For

Anytype suits users who like Notion's block-and-database editing model but want their data stored locally and synced without a mandatory central server. It's a reasonable fit for privacy-conscious individuals and small teams willing to trade some of Notion's collaboration polish and template ecosystem for data ownership and offline access.
