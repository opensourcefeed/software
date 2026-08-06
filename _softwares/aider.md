---
layout: software
title: "Aider"
slug: aider
tagline: "AI pair programming in your terminal"
type: open-source
license: Apache-2.0
website: https://aider.chat
platforms: [Linux, Windows, macOS]
category: development
logo: /assets/images/software/aider.svg
alternative_to:
  - claude-code
  - github-copilot
  - cursor
description: "Aider is a free, open source AI pair programming tool for the terminal. It works with Claude, GPT, Gemini, DeepSeek, and local LLMs to edit code in git repos."
last_modified_at: 2026-08-06
---

## Overview

Aider is a free and open source AI pair programming tool that runs in the terminal, developed by Aider AI LLC and released on GitHub under the Apache-2.0 license. It is written in Python and connects to a wide range of large language models, including Anthropic Claude, OpenAI's GPT and o-series models, Google Gemini, DeepSeek, and local models served through Ollama or LM Studio, as well as most other providers via OpenAI-compatible APIs. Unlike IDE-integrated AI assistants that live inside an editor plugin, Aider operates as a standalone command-line program that sits alongside any editor or IDE and interacts directly with a project's git repository.

A core part of Aider's design is its repository map, a condensed summary of a codebase's classes, functions, and call signatures that is built using a graph-ranking algorithm — each source file is treated as a node and edges represent dependencies between files, letting Aider select the most relevant context within a limited token budget instead of feeding an entire codebase to the LLM. Aider also integrates tightly with git: every change it makes is committed automatically with a generated commit message, so edits can be reviewed, diffed, or reverted using standard git tooling. The project supports most popular programming languages, including Python, JavaScript, TypeScript, Rust, Go, C++, PHP, HTML, and CSS.

## Is Aider Open Source?

Yes. Aider is released under the Apache-2.0 license, with source on [GitHub](https://github.com/Aider-AI/aider). Apache-2.0 is a permissive license — anyone can fork, modify, or build commercial products on top of Aider's code, unlike copyleft licenses (e.g. AGPL) that would require derivative works to also be open-sourced. Note that being open source covers Aider itself, not the LLMs it connects to — cloud models like Claude or GPT are separate, proprietary services unless you point Aider at a local model.

## Key Features

- **Multi-model support** — Works with Claude, GPT-4o, Gemini, DeepSeek, Llama, Qwen, and other LLMs
- **Git-aware** — Automatically commits changes with meaningful commit messages
- **Multi-file editing** — Coordinates edits across multiple files in a single request
- **Repository map** — Builds a map of your entire codebase for context-aware assistance
- **Voice coding** — Supports voice-to-code interactions for hands-free coding
- **Image support** — Share screenshots and diagrams for UI/design feedback
- **Local models** — Works with Ollama, LM Studio, and other local LLM runtimes
- **Web chat mode** — Interactive chat interface for asking questions and refining changes

## Use Cases

- **Pair programming** — Get real-time AI assistance while coding in your terminal
- **Code reviews** — Ask Aider to review changes and suggest improvements
- **Refactoring** — Automate large-scale code transformations across your project
- **Test generation** — Generate unit tests and integration tests from existing code
- **Documentation** — Create and update READMEs, docstrings, and comments
- **Learning** — Explore unfamiliar codebases by asking questions about architecture

## Who It's For

Aider is for developers who want AI coding assistance without vendor lock-in. It is ideal for those who prefer terminal-based workflows, need the flexibility to choose their own LLM provider, or want to keep their code and API calls under their control. Works with git repositories in Python, JavaScript, TypeScript, Rust, Go, Java, and dozens of other languages.