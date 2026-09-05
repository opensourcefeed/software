---
layout: software
title: "VSCodium"
slug: vscodium
tagline: "Community builds of VS Code without Microsoft branding or telemetry"
type: open-source
license: MIT
website: https://vscodium.com
platforms: [Linux, Windows, macOS]
category: code-editor
logo: /assets/images/software/vscodium.svg
alternative_to:
  - vs-code
description: "VSCodium provides free, community-built binaries of Microsoft's open source 'Code - OSS' project, with telemetry disabled and Microsoft's branding and licensing removed."
last_modified_at: 2026-09-05
---

## Overview

VSCodium was created in 2017 to solve a specific problem: Microsoft publishes the source code behind Visual Studio Code as MIT-licensed "Code - OSS," but doesn't publish official binary builds of that unbranded source — only the proprietary, telemetry-enabled Microsoft build. VSCodium compiles the same "Code - OSS" source directly and ships the resulting binaries without Microsoft's branding, icons, telemetry, or licensing terms.

Because it's built from the same source tree, VSCodium behaves identically to VS Code in day-to-day use — same interface, same core editing and debugging features, same extension APIs. The main practical difference is access to extensions: since the official Visual Studio Marketplace's terms restrict it to Microsoft's own builds, VSCodium uses the community-run Open VSX Registry instead, which has slightly less coverage for a small number of proprietary extensions (like some Microsoft-published language servers).

## Key Features

- **No telemetry** — Microsoft's usage data collection and telemetry endpoints are compiled out entirely
- **Identical core editor** — Same editing, debugging, and IntelliSense features as VS Code, since it's built from the same source
- **Open VSX extension registry** — Access to the community-maintained Open VSX Registry instead of the restricted Microsoft Marketplace
- **No Microsoft branding or licensing** — Ships under the plain MIT license with Microsoft's proprietary product terms removed
- **Regular release cadence** — New builds published to track each upstream VS Code release

## Use Cases

- **Privacy-conscious development** — Using VS Code's editing experience without any telemetry reporting to Microsoft
- **Fully open source toolchains** — Development setups that require every component to be under an OSI-approved license
- **Migrating from VS Code** — A near drop-in replacement requiring no relearning of shortcuts or workflow

## Who It's For

VSCodium is aimed squarely at existing or prospective VS Code users who want the exact same editing experience without Microsoft's telemetry, branding, or proprietary licensing terms. It's the most direct possible substitute for VS Code, at the cost of slightly reduced access to a handful of Microsoft-exclusive extensions.
