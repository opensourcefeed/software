---
layout: software
title: "Standard Notes"
slug: standard-notes
tagline: "End-to-end encrypted, open source note-taking app"
type: open-source
license: AGPL-3.0
website: https://standardnotes.com
platforms: [Windows, macOS, Linux, Android, iOS, Web]
category: note-taking
logo: /assets/images/software/standard-notes.png
alternative_to:
  - evernote
description: "Standard Notes is a free, open source, end-to-end encrypted note-taking app focused on long-term, dependable plain-text notes, offered as a privacy-first alternative to Evernote."
last_modified_at: 2026-08-01
---

## Overview

Standard Notes was created with a deliberately narrow founding premise: notes are a form of personal record that should still be readable in twenty years, so the application's core should stay small, stable, and encrypted by default rather than accumulate feature bloat. The client and server code are published on GitHub under the AGPL-3.0 license, and every note is encrypted and decrypted locally on the user's device using AES-256 before it ever touches a sync server — including Standard Notes' own hosted servers — so the company itself cannot read note content even if it wanted to. Self-hosting the sync server is also supported for users who want to run the entire stack themselves rather than trust any third party.

Where Joplin and Obsidian lean into Markdown files and a broad plugin/theme ecosystem as their core value, Standard Notes' differentiator is keeping the base app deliberately simple and encryption-first: the free tier is a plain, reliable encrypted notes and to-do list experience across unlimited devices, with no feature gating on the encryption itself. Standard Notes' business model is a straightforward hybrid: the base app and sync are free forever, while an optional paid subscription called **Standard Notes Extended** unlocks additional productivity editors (Markdown, code, spreadsheets, rich text), a library of themes, and cloud conveniences like automatic daily backups emailed to the user or pushed to a connected Dropbox/Google Drive account. This is a precise distinction worth stating clearly — the encryption and core note-taking are never behind a paywall, only the extra editors, themes, and backup automation are.

## Key Features

- **End-to-end encryption by default** — AES-256 encryption applied locally before sync, on every plan, with no unencrypted tier
- **Open source client and server** — Full source published under AGPL-3.0, independently auditable
- **Self-hostable sync server** — Run the entire backend yourself instead of using Standard Notes' hosted service
- **Cross-platform sync** — Native apps for Windows, macOS, Linux, Android, iOS, and web, all syncing encrypted notes
- **Extended editors (paid)** — Markdown, code, spreadsheet, and rich text editors available via the Standard Notes Extended subscription
- **Themes (paid)** — A set of additional visual themes bundled with Extended
- **Automatic encrypted backups (paid)** — Daily backups delivered by email or synced to a connected cloud storage account
- **Version history** — Track and restore previous versions of a note

## Use Cases

- **Privacy-first personal notes** — Journaling, passwords-adjacent notes, and sensitive personal records that should never be readable by a vendor
- **Evernote migration for privacy-conscious users** — Moving away from a proprietary, non-encrypted note database
- **Long-term note archiving** — Users who want confidence their notes will remain readable and portable for decades
- **Simple cross-device note-taking** — Teams or individuals who want reliable sync without a large plugin ecosystem to configure

## Who It's For

Standard Notes is for people whose top priority is that nobody but them can read their notes — including the company running the servers — and who would rather have a smaller, dependable core app than a large plugin ecosystem. It's a better fit than Joplin for users who want encryption as the default rather than an optional setting, though Joplin's plain Markdown files and flexible sync backends (Dropbox, WebDAV, Nextcloud) give it an edge for users who want to browse or edit their notes with an ordinary text editor outside the app. The free tier covers solid encrypted note-taking indefinitely; the paid Extended subscription is only necessary for extra editors, themes, and automated backups.
