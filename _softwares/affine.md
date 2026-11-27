---
layout: software
title: "AFFiNE"
slug: affine
tagline: "Local-first workspace combining documents, whiteboards, and databases"
type: open-source
license: MIT
license_note: "MIT for the editor and apps; the self-hosted server is source-available under the AFFiNE Enterprise Edition license."
website: https://affine.pro
developer: "Toeverything"
repository: https://github.com/toeverything/AFFiNE
latest_version: "0.27.4"
version_checked_at: 2026-11-27
platforms: [Linux, Windows, macOS, Android, iOS, Web]
category: note-taking
self_hostable: true
logo: /assets/images/software/affine.svg
alternative_to:
  - notion
description: "AFFiNE is a local-first workspace combining docs, an infinite whiteboard, and databases, with MIT-licensed apps and a source-available self-hosted server."
last_modified_at: 2026-09-25
faq:
  - question: "Is AFFiNE open source?"
    answer: "Mostly. The editor (BlockSuite), the desktop and mobile apps, and most of the codebase are MIT-licensed. The backend server used for self-hosted sync is published under AFFiNE's Enterprise Edition license, which is source-available rather than open source: the code can be read, but modifying, compiling, or redistributing it requires a commercial agreement with AFFiNE."
  - question: "Is AFFiNE free to self-host?"
    answer: "Yes, within limits. AFFiNE's free self-hosted tier allows up to 10 members per workspace. Workspaces with more than 10 members need the self-hosted Team tier, which AFFiNE lists at $10 per seat per month."
  - question: "Can AFFiNE be used without an account?"
    answer: "Yes. Local workspaces are stored on the device and can be used without signing in. An account is only needed for AFFiNE Cloud sync and collaboration, or to connect to a self-hosted server."
---

## Overview

AFFiNE is a workspace application developed by Toeverything Pte. Ltd., a Singapore-based company, with its source code published on GitHub since 2022. It combines three kinds of content that are usually split across separate tools: rich-text documents, an infinite whiteboard canvas, and databases. Any page can be switched between a linear document view ("Page" mode) and a freeform canvas ("Edgeless" mode), so the same content can be written as a document and then rearranged, annotated, or connected to diagrams on a whiteboard.

The editor is built on BlockSuite, AFFiNE's own open source block-based editing framework, and uses CRDT-based data structures so that edits made offline or on different devices can be merged when they sync. AFFiNE is designed as local-first software: workspaces are stored on the device and remain fully usable without a network connection or an account, and cloud sync is an optional layer on top.

Native apps are available for Windows, macOS (Apple silicon and Intel), and Linux (AppImage, deb, and Flatpak), along with iOS and Android apps released in 2025 and a browser version. The mobile apps focus on capturing and reviewing notes; the desktop app provides the complete feature set, including the full Edgeless whiteboard.

## License and Pricing

AFFiNE uses a split licensing model. The editor, the desktop and mobile apps, and most of the repository are MIT-licensed. The backend server under `packages/backend`, which provides sync and collaboration for self-hosted deployments, is licensed under the AFFiNE Enterprise Edition license: its source is public, but modifying, compiling, or redistributing it requires a commercial agreement. This means the local app is open source, while the self-hosted server is source-available.

Local use is free with no account. AFFiNE Cloud has a free plan (10 GB of storage and up to 3 members per workspace) and paid Pro and Team plans, and AFFiNE AI is sold as a separate add-on. For self-hosting, AFFiNE's pricing page lists a free tier with up to 10 members per workspace, and a Team tier at $10 per seat per month for workspaces with more than 10 members.

## Key Features

- **Page and Edgeless modes** — Switch any page between a document layout and an infinite whiteboard canvas
- **Whiteboard tools** — Shapes, connectors, sticky notes, freehand drawing, frames, and mind maps on the Edgeless canvas
- **Databases** — Table and Kanban views embedded in documents for tracking tasks and structured information
- **Local-first storage** — Workspaces are stored on the device and work offline without an account
- **CRDT-based sync** — Changes from multiple devices or collaborators merge automatically when they sync
- **Self-hosted deployment** — Run the full stack with Docker on your own infrastructure
- **Import and export** — Import from Notion and Markdown; export to Markdown, HTML, PDF, and PNG
- **Cross-platform apps** — Windows, macOS, Linux, iOS, Android, and web

## Use Cases

- **Visual note-taking** — Combining written notes with diagrams, sketches, and mind maps in one place
- **Planning and brainstorming** — Moving from free-form whiteboard ideas to structured documents and task lists
- **Personal knowledge base** — Local, offline-capable notes that stay on your own devices
- **Small-team wikis** — Shared documentation synced through AFFiNE Cloud or a self-hosted server

## Who It's For

AFFiNE fits people and small teams who want documents and a whiteboard in the same tool, and who value local, offline-first storage. It is a close match for users who use Notion for documents and databases but also rely on a separate whiteboard app. Organizations that specifically need a fully open source server should note that AFFiNE's self-hosted backend is source-available rather than open source, and that workspaces with more than 10 members need a paid self-hosted plan.
