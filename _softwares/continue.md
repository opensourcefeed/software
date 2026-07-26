---
layout: software
title: "Continue"
slug: continue
tagline: "Open source coding agent for VS Code and JetBrains"
type: open-source
license: Apache-2.0
website: https://continue.dev
platforms: [Linux, Windows, macOS]
category: development
logo: /assets/images/software/continue.png
alternative_to:
  - claude-code
description: "Continue is an open source AI coding agent for VS Code and JetBrains with autocomplete, chat, and agentic editing. No longer actively maintained since mid-2026."
last_modified_at: 2026-07-26
---

**Note:** Continue is no longer actively maintained. Continue Dev's team was acquired by Cursor in June 2026 and the project was discontinued; the existing extensions and CLI still work, but there are no ongoing updates, bug fixes, or security patches.

## Overview

Continue is an open source AI coding agent that integrates directly into VS Code and JetBrains IDEs, as well as a standalone CLI. It provides inline autocomplete, conversational chat, and agentic code editing, and is model-agnostic — it can be configured to use Claude, GPT, Gemini, DeepSeek, Llama, and other models through a JSON configuration file, including local models served via Ollama or LM Studio. The project was originally built by Continue Dev, Inc., and its extension is distributed on both the VS Code Marketplace and the OpenVSX Registry, making it usable in VS Code-compatible editors that don't use Microsoft's marketplace.

In June 2026, Continue Dev's team was acquired by Cursor, and the standalone Continue product was discontinued as part of the deal. The `continuedev/continue` GitHub repository was set to read-only following a final v2.0.0 release, which removed anonymous telemetry and authentication requirements before the archive. The codebase remains licensed under Apache-2.0 and continues to function — the VS Code extension, JetBrains plugin, and CLI are still installable and usable — but the project is no longer actively developed or supported by its original maintainers.

## Key Features

- **Inline autocomplete** — Real-time code completions as you type, with full context awareness
- **Chat interface** — Ask questions, get explanations, and discuss code without leaving the editor
- **Agentic editing** — Let Continue plan and execute multi-step code changes autonomously
- **Multi-model support** — Works with Claude, GPT, Gemini, DeepSeek, Llama, and other LLMs
- **Custom slash commands** — Create reusable prompts and workflows with custom slash commands
- **Context providers** — Automatically pull in relevant files, documentation, and context
- **Local models** — Works with Ollama, LM Studio, and other local LLM runtimes for offline use
- **Configurable** — Fully configurable via a JSON config file for team standardization

## Use Cases

- **Inline code completion** — Accelerate typing with context-aware code suggestions
- **Codebase Q&A** — Ask questions about your codebase and get instant answers
- **Refactoring** — Automate complex refactoring across multiple files with agentic editing
- **Code review** — Use chat to review changes, suggest improvements, and catch issues
- **Onboarding** — New developers can explore and understand the codebase through conversation
- **Custom workflows** — Build team-specific slash commands for common development patterns

## Who It's For

Continue is for developers who want AI assistance deeply integrated into their existing IDE workflow. It suits teams that use VS Code or JetBrains editors and want a configurable, model-agnostic tool that can be standardized across the organization. With support for local models, it is also a strong choice for developers working with sensitive code that cannot leave their machine. Since the project is no longer actively maintained, teams should weigh that against tools receiving ongoing development before adopting it for long-term use.