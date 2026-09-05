---
layout: software
title: "Zed"
slug: zed
tagline: "Open source, GPU-accelerated code editor built in Rust"
type: open-source
license: GPL-3.0
website: https://zed.dev
platforms: [Linux, macOS]
category: code-editor
logo: /assets/images/software/zed.svg
alternative_to:
  - vs-code
description: "Zed is a free, open source code editor built in Rust by former Atom and Tree-sitter developers, designed for high performance and built-in real-time collaboration."
last_modified_at: 2026-09-05
---

## Overview

Zed was built starting in 2021 by Zed Industries, a team that includes several of the original creators of Atom and the Tree-sitter parsing library. It was designed from scratch in Rust specifically to address performance complaints leveled at Electron-based editors like Atom and VS Code, using GPU-accelerated rendering to keep the interface responsive even with large files or many open panes.

The editor's source code is published under a mix of GPL-3.0 (for the main application) and Apache-2.0 (for several underlying libraries), and it ships with real-time collaborative editing built directly into the core product rather than as an add-on extension. Zed currently supports Linux and macOS, with Windows support in active development.

## Key Features

- **GPU-accelerated rendering** — A custom rendering engine designed for low-latency scrolling and typing, even in large files
- **Built-in real-time collaboration** — Shared editing sessions and voice chat without a separate extension
- **Native LSP and Tree-sitter integration** — Language server support and accurate syntax highlighting out of the box
- **AI-assisted editing** — Built-in support for AI code completion and chat, configurable with different model providers
- **Extension system** — A growing plugin API for language support and editor customization

## Use Cases

- **Performance-sensitive editing** — Working with large codebases or files where editor responsiveness matters
- **Real-time pair programming** — Built-in collaborative editing without setting up a separate screen-share or Live Share session
- **Rust and systems programming** — Strong out-of-the-box support given the editor's own Rust codebase and contributor base

## Who It's For

Zed suits developers who want a fast, modern editor built around real-time collaboration and are comfortable with a newer, smaller extension ecosystem than VS Code's. It's a strong fit for macOS and Linux users specifically, since Windows support isn't yet available.
