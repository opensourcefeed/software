---
layout: software
title: "KeePassXC"
slug: keepassxc
tagline: "Cross-platform offline password manager"
type: open-source
license: GPL-3.0
website: https://keepassxc.org
platforms: [Linux, Windows, macOS]
category: password-manager
logo: /assets/images/software/keepassxc.svg
alternative_to:
  - 1password
  - lastpass
description: "KeePassXC is a free, open source password manager that stores credentials in an offline encrypted database, with no cloud dependency and browser integration."
last_modified_at: 2026-07-26
---

## Overview

KeePassXC is a free and open source password manager that stores usernames, passwords, URLs, attachments, and notes in a locally encrypted KDBX database file. The project began in 2016 as a community-driven fork of KeePassX, itself a cross-platform C++/Qt port of the original Windows-only KeePass Password Safe. KeePassX development had slowed considerably by the mid-2010s, and a group of contributors started KeePassXC (the "XC" standing for "Cross-platform Community edition") to provide more active maintenance, faster releases, and new features while remaining compatible with the KDBX database format used by KeePass and KeePassX. The repository was created in February 2016 and the project is maintained by the KeePassXC Team under the GNU General Public License, dual-licensed under GPL-2 or GPL-3.

Because KeePassXC keeps its database as a single encrypted file on the user's own storage, there is no account to create and no vendor server involved in normal use — data can be synced between devices with any file-syncing tool the user chooses, such as Syncthing or a self-hosted WebDAV server. The project describes itself as ad-free, tracker-free, and cloud-free, and its source code is fully auditable on GitHub. As of writing, the current stable release is version 2.7.12. KeePassXC does not publish official mobile apps; it is developed and distributed as a desktop application for Linux, Windows, and macOS, with third-party or community KDBX-compatible apps available separately for mobile platforms.

## Key Features

- **Local encrypted database** — Credentials are stored in an AES/ChaCha20-encrypted KDBX file kept entirely under the user's control, with no data sent to remote servers
- **Browser integration** — The KeePassXC-Browser extension for Firefox, Chrome, and other Chromium-based browsers enables auto-fill and per-site access confirmation
- **Hardware key support** — Unlocking the database can be secured with a YubiKey or other FIDO2/HMAC-SHA1 hardware security key, in addition to a master password and/or key file
- **Auto-Type** — Global auto-typing of credentials into any application window, with customizable sequences per entry
- **Built-in TOTP support** — Generates time-based one-time passwords directly inside entries for two-factor authentication
- **Password generator** — Configurable generator for random passwords and passphrases (including diceware-style wordlists)
- **Database import** — Import tools for KeePass 1/2, Bitwarden, and other password manager export formats
- **CLI and browser-less usage** — A command-line interface (`keepassxc-cli`) for scripting and headless environments

## Use Cases

- **Individuals** — Managing personal logins, secure notes, and software license keys in a single encrypted vault
- **Privacy-conscious users** — Keeping credentials off third-party cloud servers while still syncing across devices via a file-sync tool of their choosing
- **Developers and sysadmins** — Storing API keys, SSH key passphrases, and server credentials, with CLI access for scripts
- **Teams sharing offline vaults** — Sharing a single KDBX file (secured with a shared master password or key file) over existing file-sync infrastructure

## Who It's For

KeePassXC is suited to users who want full control over where their password database is stored, are comfortable managing their own syncing if needed, and prefer a desktop-first tool over a hosted cloud service. It is a common choice among Linux users, privacy-focused individuals, and those who want browser auto-fill without relying on a subscription-based password manager.
