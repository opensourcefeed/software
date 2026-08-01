---
layout: software
title: "Cline"
slug: cline
tagline: "Autonomous coding agent as SDK, IDE extension, or CLI"
type: open-source
license: Apache-2.0
website: https://cline.bot
platforms: [Linux, Windows, macOS]
category: development
logo: /assets/images/software/cline.png
alternative_to:
  - claude-code
  - github-copilot
  - cursor
description: "Cline is an open source autonomous coding agent for VS Code, JetBrains, CLI, or SDK use. Supports Claude, GPT, Gemini, and local models."
last_modified_at: 2026-07-26
---

## Overview

Cline began in June 2024 as "Claude Dev," a VS Code extension built by developer Saoud Rizwan shortly after Anthropic released Claude 3.5 Sonnet, to test how far an agentic coding assistant could go with a model capable of multi-step, multi-file reasoning. The project was renamed Cline later that year as it added support for OpenAI, Google Gemini, and other providers beyond Anthropic's models. It is released under the Apache-2.0 license, has surpassed 65,000 stars on GitHub with over 250 contributors, and has been installed more than 8 million times across supported platforms.

Cline is available as a VS Code extension, a JetBrains plugin (early access), a standalone CLI installable via npm, and an embeddable SDK for building custom agent integrations; it also runs inside Cursor and Windsurf. Unlike tools that only autocomplete or answer questions in a chat sidebar, Cline is built around an approval loop: it proposes file edits and terminal commands, shows a diff or command preview, and waits for the user to approve, reject, or edit each step before proceeding, rather than executing changes automatically. It supports Anthropic Claude, OpenAI, Google Gemini, AWS Bedrock, Azure and GCP Vertex, Ollama, DeepSeek, xAI, Mistral, and any OpenAI-compatible endpoint, so users are not locked into a single model provider.

## Key Features

- **Multi-interface** — Available as a VS Code extension, JetBrains plugin (early access), CLI tool, or SDK
- **Multi-model support** — Works with Claude, GPT, Gemini, and local models via Ollama
- **Autonomous coding** — Writes, edits, and refactors code across files with full project context
- **Terminal access** — Runs shell commands, installs dependencies, and manages environments
- **Browser integration** — Can browse documentation, test web apps, and gather information
- **Custom tool integration** — Extend with custom tools via the SDK for specialized workflows
- **Context management** — Intelligent handling of large codebases with automatic context prioritization
- **Permission-based execution** — Every file edit and terminal command requires explicit user approval before it runs

## Use Cases

- **In-editor development** — Get AI assistance directly within VS Code for real-time coding
- **CLI-based workflows** — Use terminal-native agent for development on remote servers and headless environments
- **Custom tooling** — Build your own AI-powered development tools using the SDK
- **Code exploration** — Understand and navigate unfamiliar codebases with AI-guided assistance
- **Automated debugging** — Let Cline investigate, diagnose, and fix issues across your project
- **Documentation generation** — Automatically generate code comments, READMEs, and API docs

## Who It's For

Cline is for developers who want a flexible, model-agnostic AI coding assistant. It suits those who work primarily in VS Code, developers who prefer terminal-based tools, and teams building custom AI-powered development workflows. With support for local models, it is also ideal for privacy-conscious developers who want to keep their code on their own machines.