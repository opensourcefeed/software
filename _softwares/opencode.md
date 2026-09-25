---
layout: software
title: "OpenCode"
slug: opencode
tagline: "Open source AI coding agent for the terminal, desktop, and IDE"
type: open-source
license: MIT
website: https://opencode.ai
platforms: [Linux, Windows, macOS]
category: development
logo: /assets/images/software/opencode.svg
alternative_to:
  - claude-code
description: "OpenCode is a free, MIT-licensed AI coding agent with a terminal interface, desktop app, and IDE integration that works with 75+ model providers, local models, and existing ChatGPT, GitHub Copilot, or GitLab Duo subscriptions."
last_modified_at: 2026-09-25
faq:
  - question: "Is OpenCode free?"
    answer: "Yes. OpenCode is open source under the MIT license and free to use. You pay only for the model you connect it to, whether that's an API key from a provider, an existing ChatGPT, GitHub Copilot, or GitLab Duo subscription, or nothing at all if you run a local model through Ollama, llama.cpp, or LM Studio."
  - question: "Does OpenCode work with local models?"
    answer: "Yes. OpenCode can use local inference servers such as Ollama, llama.cpp, and LM Studio through their OpenAI-compatible APIs, so it can run without sending code to a cloud provider."
  - question: "Is OpenCode the same project as Charm's Crush?"
    answer: "No. An earlier Go-based terminal assistant also called OpenCode was continued by Charm under the name Crush. The current OpenCode is a separate TypeScript codebase developed by Anomaly, the team behind the SST framework, which kept the OpenCode name and the opencode.ai domain."
---

## Overview

OpenCode is an open source AI coding agent developed by Anomaly, the company behind the SST (Serverless Stack) framework. It launched publicly in June 2025, is released under the MIT license, and is maintained on GitHub under the `anomalyco` organization with frequent releases. Its primary interface is a terminal user interface (TUI) where the agent reads a codebase, edits files, and runs shell commands in response to natural-language instructions, and it is also available as a desktop app (in beta) and through IDE and web integrations.

OpenCode is model-agnostic. It uses the AI SDK and the Models.dev catalog to support more than 75 LLM providers, including Anthropic, OpenAI, and Google models, as well as local inference servers such as Ollama, llama.cpp, and LM Studio. It can also sign in with existing ChatGPT Plus/Pro, GitHub Copilot, and GitLab Duo subscriptions instead of separate API keys. The OpenCode team additionally offers OpenCode Zen, an optional curated set of models the team has tested with the agent, accessed with an OpenCode API key.

Internally, OpenCode uses a client/server architecture: the agent runs as a server process that different front ends connect to, which is how the same agent can be driven from the terminal, the desktop app, or other clients. It also integrates with Language Server Protocol (LSP) servers, so the agent can use diagnostics from the project's own language tooling while it works.

## Key Features

- **Terminal UI** — A full-screen TUI for chatting with the agent, reviewing its changes, and switching sessions
- **Build and plan agents** — Switch with the Tab key between a full-access "build" agent and a read-only "plan" agent that denies file edits and asks before running commands
- **Subagents** — A built-in "general" subagent handles complex searches and multi-step tasks, invoked with `@general`
- **75+ model providers** — Anthropic, OpenAI, Google, OpenRouter, and many others via Models.dev, plus local models
- **Existing subscriptions** — Use ChatGPT Plus/Pro, GitHub Copilot, or GitLab Duo accounts
- **LSP integration** — Uses language servers for diagnostics and code intelligence
- **Desktop app (beta)** — Native builds for macOS, Windows, and Linux
- **Client/server design** — One agent server can be driven from several front ends
- **GitHub and GitLab integration** — Run the agent from issues and merge requests

## Installation

OpenCode is distributed through an install script and most common package managers, including npm (`opencode-ai`), Homebrew, Scoop, Chocolatey, the Arch Linux repositories, mise, and Nix. The desktop app is available as a DMG for macOS, an installer for Windows, and `.deb`, `.rpm`, or AppImage packages for Linux.

## Use Cases

- **Terminal-based agentic coding** — Delegating multi-file changes, refactors, and bug fixes from the command line
- **Codebase exploration** — Using the read-only plan agent to understand an unfamiliar project before making changes
- **Mixed-model workflows** — Switching between hosted frontier models and local models depending on the task or data sensitivity
- **Offline or restricted environments** — Running entirely against a local model with no cloud dependency

## Who It's For

OpenCode is suited to developers who want a terminal-first coding agent that isn't tied to one model vendor, and who may want to reuse an existing ChatGPT, Copilot, or GitLab subscription or run local models. Its release pace is fast, so teams standardizing on it should pin versions and follow the changelog. Developers who prefer working inside an editor may find an IDE-native extension a more natural fit.
