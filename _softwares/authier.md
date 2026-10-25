---
layout: software
title: "Authier"
slug: authier
tagline: "Early-stage open source password manager with encrypted sync"
type: open-source
license: AGPL-3.0-or-later
website: https://www.authier.pm/
platforms: [Windows, macOS, Linux, Android, Web]
category: password-manager
alternative_to:
  - 1password
  - lastpass
description: "Authier is an early-stage open source password manager for credentials and TOTP codes, with browser autofill, client-side encrypted sync, and optional trusted-device approval."
last_modified_at: 2026-09-01
---

## Overview

Authier is an open source password manager for storing credentials and time-based one-time password (TOTP) seeds. Its public TypeScript monorepo contains the browser extension, web vault, API, and landing site, and is licensed under the GNU Affero General Public License v3.0 or later. Authier runs through extensions for Chrome, Firefox, and Microsoft Edge on Windows, macOS, and Linux; its Firefox extension also supports Firefox for Android.

Vault items are encrypted in the client with AES-256-GCM before synchronization, so the API stores ciphertext rather than readable credentials or TOTP seeds. Authier can require a new browser to be approved by an existing trusted device before it completes enrollment and synchronizes the vault. The project is actively developed but has a short operating history and has not yet published an independent third-party security audit.

## Key Features

- **Client-side encrypted sync** — Credentials and TOTP seeds are encrypted with AES-256-GCM before they are sent to the API
- **Browser autofill** — Extensions can fill saved credentials in Chrome, Firefox, and Microsoft Edge
- **TOTP support** — Stores TOTP seeds, generates current codes, and can autofill them in supported browsers
- **Optional device approval** — Account policy can keep a new browser pending until an approved device accepts its enrollment request
- **Web vault** — Provides browser-based access to credentials, TOTP codes, connected devices, and security settings
- **Revocable devices** — Connected devices can be reviewed and removed when they are lost or retired

## Use Cases

- **Individuals** — Storing and autofilling credentials across supported browsers
- **Multi-device users** — Synchronizing encrypted vault data between approved browsers and reviewing device access
- **TOTP users** — Keeping credentials and TOTP codes in the same vault, with per-device synchronization controls
- **Open source contributors** — Inspecting or contributing to the browser extension, web vault, API, and cryptography implementation

## Who It's For

Authier is intended for individuals and contributors who want to evaluate a browser-first, open source password manager with encrypted synchronization and device-aware enrollment. Because the project is early-stage and has not undergone an independent security audit, users should evaluate its maturity and recovery model before relying on it for high-impact credentials.
