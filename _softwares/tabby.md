---
layout: software
title: "Tabby"
slug: tabby
tagline: "Self-hosted AI code completion server"
type: open-source
license: "Apache-2.0 (ee/ enterprise directory under a separate license)"
website: https://www.tabbyml.com
platforms: [Linux, Windows, macOS, Docker]
category: development
logo: /assets/images/software/tabby.png
alternative_to:
  - github-copilot
  - cursor
description: "Tabby is a free, open source, self-hosted AI code completion server built in Rust, offering GitHub Copilot-style inline suggestions that run entirely on your own infrastructure and GPUs."
last_modified_at: 2026-08-01
---

## Overview

Tabby is an open source AI coding assistant developed by TabbyML and released on GitHub under the Apache-2.0 license, with roughly 33,000 stars as of mid-2026. It's written in Rust and distributed as a single self-contained server binary or Docker image that bundles model serving, an inference runtime, and a web dashboard, with no external database or cloud service required to run it. Code outside of the repository's `ee/` (enterprise edition) directory is Apache-2.0 licensed; that directory carries its own separate license covering additional team-management features, and bundled third-party components retain their original licenses.

Where Tabby differs sharply from other tools already covered on this site is scope: Aider, Cline, Continue, and OpenHands are agentic editors that plan and execute multi-file changes across a codebase, often driving a remote frontier model through an API. Tabby instead focuses specifically on the inline, ghost-text autocomplete experience that GitHub Copilot popularized — predicting the next few lines as you type — and is built to run the completion model itself on hardware you own, down to a single consumer-grade GPU, rather than sending completion requests to a vendor's cloud. It ships official IDE extensions for VS Code, JetBrains, and Vim/Neovim that call its local API in real time, plus a chat panel and a retrieval layer ("Answer Engine") that can index a team's repositories and documentation to ground suggestions and answers in internal code.

## Key Features

- **Self-hosted inference** — Runs the full completion pipeline on your own server or workstation, including consumer GPUs, with no mandatory cloud dependency
- **IDE extensions** — Official plugins for VS Code, JetBrains IDEs, and Vim/Neovim
- **Inline code completion** — Real-time, context-aware ghost-text suggestions similar to Copilot's core experience
- **In-IDE chat** — Ask questions and get explanations without leaving the editor
- **Repository-aware context** — Indexes connected repositories and docs so completions reflect internal codebases, not just public training data
- **Model flexibility** — Works with a range of open-weight and hosted code models, swappable via configuration
- **No external dependencies** — Runs without an external DBMS or third-party cloud service, simplifying air-gapped or on-premises deployment
- **Team dashboard** — Web UI for managing users, monitoring usage, and configuring models (enterprise features live under a separate `ee/` license)

## Use Cases

- **Air-gapped or regulated environments** — Teams that cannot send source code to a third-party API but still want Copilot-style completions
- **GPU-owning teams** — Organizations with existing on-prem or cloud GPU capacity looking to avoid per-seat completion subscriptions
- **Completion-focused workflows** — Developers who want fast inline suggestions rather than a full agentic multi-file editing loop
- **Internal codebase grounding** — Teams wanting completions and chat answers informed by their own private repositories rather than only public code

## Who It's For

Tabby is for organizations and individual developers who want the specific experience of GitHub Copilot's inline autocomplete — not an agentic assistant that edits files on its own — but with the model running on infrastructure they control instead of a vendor's servers. It's a strong fit for regulated industries, security-conscious teams, or anyone with spare GPU capacity who wants completion latency and data locality under their own control. Developers who want an agent that plans and executes multi-file changes should look instead at Aider, Cline, or OpenHands, which Tabby is intentionally narrower than by design.
