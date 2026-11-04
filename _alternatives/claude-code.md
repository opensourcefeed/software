---
layout: alternative-to
title: "Open Source Alternatives to Claude Code"
slug: claude-code
proprietary_slug: claude-code
alternatives:
  - slug: opencode
    best_for: "A terminal agent that works most like Claude Code"
  - slug: aider
    best_for: "Lightweight terminal edits committed to git"
  - slug: goose
    best_for: "A general-purpose agent with a desktop app and MCP"
  - slug: cline
    best_for: "An agent inside VS Code or JetBrains"
  - slug: openhands
    best_for: "Autonomous tasks in a sandboxed environment"
  - slug: continue
    best_for: "Existing users only; no longer actively maintained"
description: "Open source Claude Code alternatives: OpenCode, Aider, goose, Cline, and OpenHands, free coding agents that work with any model provider, including local LLMs."
verdict: "[OpenCode](/software/opencode/) works most like Claude Code in the terminal and supports any model provider, including local models. [Aider](/software/aider/) is the lightweight git-first option, and [Cline](/software/cline/) brings the same agent workflow into your editor."
last_modified_at: 2026-11-04
comparison:
  columns: ["License", "Local Models", "Interface", "Self-hostable"]
  rows:
    - feature: "OpenCode"
      values: ["MIT", "Yes (Ollama, llama.cpp, LM Studio)", "Terminal UI, desktop app (beta), IDE", "Yes"]
    - feature: "Aider"
      values: ["Apache-2.0", "Yes (Ollama, LM Studio)", "Terminal / CLI", "Yes"]
    - feature: "goose"
      values: ["Apache-2.0", "Yes (Ollama)", "Desktop app, CLI, API", "Yes"]
    - feature: "Cline"
      values: ["Apache-2.0", "Yes (Ollama)", "VS Code, JetBrains (early access), CLI, SDK", "Yes"]
    - feature: "OpenHands"
      values: ["MIT", "Yes, via local endpoints", "Browser UI, self-hosted or cloud", "Yes"]
    - feature: "Continue"
      values: ["Apache-2.0", "Yes (Ollama, LM Studio)", "VS Code, JetBrains", "Yes (unmaintained since mid-2026)"]
faq:
  - question: "Is there a free alternative to Claude Code?"
    answer: "Yes. OpenCode, Aider, goose, Cline, and OpenHands are all free and open source. The model you connect them to (for example Claude or GPT) is a separate cost unless you run a local model through Ollama or LM Studio. OpenCode can also use an existing ChatGPT, GitHub Copilot, or GitLab Duo subscription, and goose can use Claude, ChatGPT, or Gemini subscriptions."
  - question: "Can I run Claude Code alternatives locally?"
    answer: "Yes. Every tool on this page supports local models through [Ollama](/software/ollama/) or another OpenAI-compatible local server, and can run entirely on your own machine or infrastructure with no cloud dependency, though local models are generally less capable than hosted frontier models at multi-step agentic tasks."
  - question: "What is the open source equivalent of Claude Code?"
    answer: "There's no exact clone, since Claude Code is a terminal-based agent tied to Anthropic's models. OpenCode is the closest match: a terminal-first agent that reads the codebase, edits files, and runs commands, with a read-only planning mode. Aider is a lighter, git-centric terminal alternative; goose is a general-purpose agent with a desktop app and CLI; Cline covers the IDE-integrated experience; and OpenHands targets autonomous, sandboxed multi-step tasks."
---

Claude Code ties you to Anthropic's models. The open source agents below let you choose any LLM provider, including local models via [Ollama](/software/ollama/) or [llama.cpp](/software/llama-cpp/) for offline or air-gapped use, and run on your own machine or infrastructure instead of depending on one vendor. They differ mainly in interface (terminal, desktop app, IDE, or browser), so the right pick depends more on your workflow than on raw capability.

## Which One Should You Pick?

- **Want a terminal agent that works most like Claude Code?** → [OpenCode](/software/opencode/)
- **Want a lightweight terminal tool that commits every change to git?** → [Aider](/software/aider/)
- **Want a general-purpose agent with a desktop app, extended through MCP?** → [goose](/software/goose/)
- **Want it built into VS Code or JetBrains?** → [Cline](/software/cline/)
- **Want a full autonomous agent with its own sandboxed browser/shell access?** → [OpenHands](/software/openhands/)
- **Already have Continue configured and don't need new features?** → [Continue](/software/continue/) still works, but it's no longer maintained (acquired by Cursor, June 2026). Don't start a new setup on it; pick one of the tools above for anything long-term.
