---
layout: software
title: "Visual Studio Code"
slug: vs-code
tagline: "Proprietary code editor built by Microsoft on an open source core"
type: proprietary
license: Proprietary (built on the MIT-licensed "Code - OSS" core)
website: https://code.visualstudio.com
platforms: [Linux, Windows, macOS]
category: code-editor
logo: /assets/images/software/vs-code.png
alternative_to: []
has_alternatives: true
description: "Visual Studio Code is Microsoft's proprietary code editor, built on top of the MIT-licensed 'Code - OSS' project but distributed under a closed license with added telemetry, branding, and a proprietary extension marketplace."
last_modified_at: 2026-09-05
---

## Overview

Visual Studio Code was released by Microsoft in 2015, built on Electron and the same open source "Code - OSS" codebase that Microsoft publishes on GitHub under the MIT license. It grew quickly into the most widely used code editor, driven largely by its extension ecosystem, built-in Git integration, and integrated debugging support across a huge range of languages and frameworks.

The Microsoft-branded VS Code binary that most people download, however, is not the same as the open source "Code - OSS" repository. Microsoft's official build adds Microsoft branding, telemetry and usage data collection, and — critically — ships under a proprietary product license that restricts access to the official Visual Studio Marketplace to Microsoft's own builds. Third-party builds of the identical open source code, like VSCodium, cannot legally use the Microsoft marketplace or telemetry endpoints as a result.

## Is VS Code Open Source?

Not exactly. The underlying "Code - OSS" source code that Microsoft publishes on GitHub is MIT-licensed and genuinely open source, but the official Visual Studio Code product — the branded build most people install — ships under a separate, proprietary Microsoft license that adds telemetry and restricts marketplace access to Microsoft's own builds. If you want the same editor experience without Microsoft's telemetry, branding, or marketplace restrictions, [VSCodium](/software/vscodium/) builds the identical open source code without any of that. [Neovim](/software/neovim/), [Zed](/software/zed/), and [Pulsar](/software/pulsar/) are independent open source editors that offer different but comparable workflows.

## Key Features

- **Extension marketplace** — A vast library of extensions for language support, linting, themes, and tooling
- **Integrated debugging** — Built-in debuggers for many languages, with breakpoints and variable inspection
- **Built-in Git support** — Source control view, diffing, and staging without a separate Git client
- **IntelliSense** — Context-aware code completion and parameter hints across supported languages
- **Remote development** — Editing code running on WSL, containers, or remote SSH hosts from a local window
- **Integrated terminal** — A full terminal panel inside the editor window

## Use Cases

- **General-purpose software development** — Writing and debugging code across nearly any language or framework
- **Remote and containerized development** — Editing code that lives on a remote server, WSL instance, or dev container
- **Notebook-based data science** — Running and editing Jupyter notebooks directly inside the editor

## Who It's For

VS Code suits developers who want a fast, extensible editor with strong out-of-the-box language support and don't mind Microsoft's telemetry or a proprietary marketplace license. Its closed licensing and data collection are the main reasons some developers move to fully open source builds or editors instead.
