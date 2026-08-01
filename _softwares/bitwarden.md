---
layout: software
title: "Bitwarden"
slug: bitwarden
tagline: "Open source password manager"
type: open-source
license: GPL-3.0
website: https://bitwarden.com
platforms: [Linux, Windows, macOS, Android, iOS]
category: password-manager
logo: /assets/images/software/bitwarden.svg
alternative_to:
  - 1password
  - lastpass
description: "Bitwarden is an open source password manager with end-to-end encryption, cross-platform apps, and self-hosting, offered as an alternative to 1Password and LastPass."
last_modified_at: 2026-07-26
---

## Overview

Bitwarden is an open source password management platform originally created in 2016 by Kyle Spearrin under 8bit Solutions LLC, now operating as Bitwarden, Inc. The project provides password storage, generation, and synchronization across browsers, desktop, mobile, and command-line clients, with the underlying code published on GitHub. The client applications (browser extensions, desktop, web vault, and CLI) are released under the GPL-3.0 license, while the separate server repository, used for self-hosting the backend, is released under the AGPL-3.0 license; both repositories also contain a small amount of code under the proprietary Bitwarden License, limited to specific enterprise-only directories.

All vault data is protected with end-to-end encryption, meaning items are encrypted and decrypted locally on the user's device using a key derived from the master password, so Bitwarden's servers never have access to unencrypted vault contents. Organizations and individuals can choose to use Bitwarden's hosted cloud service or run the server components themselves via Docker on their own infrastructure. As of mid-2026, the client applications are on the 2026.7.0 release series, which includes features such as direct KeePass import alongside ongoing maintenance updates. Bitwarden also supports logging in and unlocking vaults with passkeys, including FIDO2 WebAuthn credentials with PRF support for vault decryption.

## Key Features

- **End-to-end encryption** — Vault data is encrypted and decrypted locally using AES-256 bit encryption before ever leaving the device
- **Self-hosting** — The server components can be deployed on-premises or on private cloud infrastructure using Docker
- **Cross-platform clients** — Browser extensions, desktop apps, mobile apps, a web vault, and a command-line interface
- **Password generator** — Generates strong, random passwords and passphrases
- **Passkey support** — Supports FIDO2/WebAuthn passkeys for both logging into accounts and, with PRF-capable authenticators, unlocking the vault
- **Two-step login** — Supports authenticator apps, security keys (YubiKey, FIDO2), email, and Duo as additional login factors
- **Secure sharing** — Organization and family plans allow sharing logins, notes, and cards between members
- **Built-in authenticator** — Can store TOTP secrets and generate two-factor codes directly within the vault

## Use Cases

- **Individuals** — Storing and autofilling logins, generating unique passwords per site
- **Families** — Sharing logins and secure notes across family members via shared vaults
- **Small businesses and enterprises** — Centralized credential management, access controls, and audit logs for teams
- **Developers and administrators** — Storing API keys and secrets, and managing credentials via the CLI or self-hosted deployments

## Who It's For

Bitwarden is suitable for individuals who want a free password manager, privacy-conscious users who prefer to self-host their credential vault, and organizations that need team-based password sharing with administrative controls. Its open source clients also make it a common choice for users who want to audit the code securing their passwords.
