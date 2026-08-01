---
layout: software
title: "Syncthing"
slug: syncthing
tagline: "Decentralized, peer-to-peer file synchronization"
type: open-source
license: MPL-2.0
website: https://syncthing.net
platforms: [Linux, Windows, macOS]
category: cloud-storage
logo: /assets/images/software/syncthing.svg
alternative_to:
  - dropbox
  - google-drive
  - onedrive
description: "Syncthing is an open source tool that syncs files directly between devices over encrypted peer-to-peer connections, with no central server or cloud storage."
last_modified_at: 2026-07-26
---

## Overview

Syncthing is a continuous file synchronization program originally created by Jakob Borg, with its first public release on December 15, 2013. It spent roughly five years in beta before reaching version 1.0.0 on January 1, 2019, and is licensed under the Mozilla Public License 2.0 (MPL-2.0). Unlike hosted cloud storage services such as Dropbox or Nextcloud, Syncthing does not store data on any third-party or company-operated server. Instead, it establishes direct, encrypted connections between a user's own devices and synchronizes folders between them using its own open Block Exchange Protocol, with each device authenticated by a cryptographic certificate.

Because there is no central server, data never leaves devices the user controls: files are transferred directly, device-to-device, over TLS connections with perfect forward secrecy, and discovery/relay servers are only used to help devices find and reach each other, not to store file contents. Syncthing supports folder-level sharing between an arbitrary number of devices, keeps prior versions of changed or deleted files depending on the configured versioning method, and is configured and monitored through a web-based GUI. The project runs on Linux, Windows, macOS, and BSD/Solaris variants; an official Android app was published on Google Play but was discontinued by the developers after version 1.28.0 in October 2024, with community forks such as Syncthing-Fork continuing to provide an Android client. There is no official iOS app, largely due to Apple's platform restrictions on background networking and file access; the third-party Möbius Sync app fills this gap for iOS users who want to sync with a Syncthing network.

## Key Features

- **Peer-to-peer synchronization** — Files sync directly between devices with no central server or third-party cloud storage involved
- **Block Exchange Protocol** — An open, documented protocol used to transfer only the changed portions of files between devices
- **End-to-end encrypted transport** — Device-to-device connections use TLS with perfect forward secrecy, authenticated by cryptographic device IDs/certificates
- **Folder sharing** — Any folder can be shared selectively across an arbitrary set of trusted devices
- **File versioning** — Configurable versioning (simple, staggered, trash can, or external) keeps prior copies of changed or deleted files
- **Web GUI** — Browser-based interface for configuring devices, folders, and monitoring sync status
- **Automatic discovery** — Devices find each other on local networks or via global discovery/relay servers without manual IP configuration
- **Cross-platform** — Official builds for Linux, Windows, macOS, and various BSD/Solaris systems

## Use Cases

- **Personal file sync** — Keeping documents, photos, and folders in sync across a laptop, desktop, and home server without a cloud middleman
- **Backup redundancy** — Mirroring important folders to a NAS or a second machine as an additional copy
- **Privacy-conscious teams** — Sharing project folders between collaborators' own machines without routing data through a third-party provider
- **Self-hosters** — Running Syncthing alongside other self-hosted services as part of a fully owned infrastructure stack

## Who It's For

Syncthing is suited to individuals and organizations that want to keep files synchronized across their own devices without trusting the data to a hosted cloud storage provider. It particularly appeals to privacy-conscious users, self-hosters, and anyone who wants full control over where their data physically resides, at the cost of the always-on server convenience (e.g., always-available sharing links, server-side apps) that hosted services like Dropbox or Nextcloud provide.
