---
layout: software
title: "Neovim"
slug: neovim
tagline: "Open source, extensible terminal-based text editor and IDE"
type: open-source
license: Apache-2.0
website: https://neovim.io
platforms: [Linux, Windows, macOS]
category: code-editor
logo: /assets/images/software/neovim.svg
alternative_to:
  - vs-code
description: "Neovim is a free, open source refactor of Vim, focused on extensibility and modern plugin architecture while keeping Vim's modal editing model and terminal-based interface."
last_modified_at: 2026-09-05
---

## Overview

Neovim launched in 2014 as a fork of Vim, aimed at modernizing Vim's aging codebase without abandoning its modal editing model. The project rewrote large parts of Vim's internals to expose a proper plugin API, added built-in support for asynchronous jobs and the Language Server Protocol, and introduced a formal Lua-based configuration and scripting system alongside legacy Vimscript.

Unlike VS Code, Neovim runs entirely in the terminal by default (GUI front ends are available separately), and its editing model is modal — commands and text objects rather than a mouse-driven interface. Its plugin ecosystem, built around Lua and native LSP/Treesitter integration, has made it a common choice for developers who want an IDE-like experience without leaving the terminal.

## Key Features

- **Native LSP support** — Built-in Language Server Protocol client for autocompletion, diagnostics, and go-to-definition
- **Treesitter integration** — Incremental parsing for accurate syntax highlighting and code navigation
- **Lua configuration and plugins** — A modern, fast scripting layer alongside legacy Vimscript compatibility
- **Terminal-native** — Runs directly in a terminal emulator, usable over SSH with no GUI required
- **Extensive plugin ecosystem** — A large community plugin library covering file trees, fuzzy finders, and Git integration

## Use Cases

- **Remote and SSH-based development** — Editing code directly on a remote server without a GUI
- **Keyboard-driven workflows** — Modal editing for developers who prefer to avoid the mouse
- **Building a custom IDE-like setup** — Assembling LSP, Treesitter, and plugins into a tailored editing environment

## Who It's For

Neovim suits developers comfortable with (or willing to learn) modal editing and terminal-based workflows, especially those doing a lot of remote or SSH-based development. It's a different paradigm from VS Code rather than a drop-in replacement, so it particularly appeals to people who already know Vim or want a lighter, keyboard-first alternative.
