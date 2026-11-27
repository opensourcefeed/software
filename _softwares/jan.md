---
layout: software
title: "Jan"
seo_title: "Jan: Open Source, Offline ChatGPT and Claude Alternative"
slug: jan
tagline: "Desktop AI chat app that runs models locally or connects to cloud APIs"
type: open-source
license: Apache-2.0
website: https://jan.ai
developer: "Menlo Research"
repository: https://github.com/janhq/jan
latest_version: "0.8.8"
version_tag: '^v(\d+\.\d+\.\d+)$'
version_checked_at: 2026-11-27
platforms: [Windows, macOS, Linux]
category: ai-assistant
logo: /assets/images/software/jan.png
alternative_to:
  - claude
description: "Jan is a free, Apache-2.0 desktop app for chatting with AI models that run on your own computer, with optional connections to cloud providers."
last_modified_at: 2026-11-04
faq:
  - question: "Does Jan work offline?"
    answer: "Yes. Once you've downloaded a model, chats with local models run entirely on your computer with no internet connection."
  - question: "Can Jan use Claude or GPT models?"
    answer: "Yes. Besides local models, Jan can connect to cloud providers such as Anthropic, OpenAI, Mistral, and Groq using your own API keys. Those chats are then sent to that provider."
  - question: "Is Jan free?"
    answer: "Yes. Jan is free and open source under the Apache-2.0 license, with no account required."
---

## Overview

Jan is a free and open source desktop app for chatting with AI models, developed by Menlo Research. It looks and feels like a familiar AI chat app, but by default the models run on your own computer: you download an open-weight model such as Llama, Gemma, or Qwen from Hugging Face inside the app and chat with it without sending prompts anywhere.

Under the hood, Jan bundles the [llama.cpp](/software/llama-cpp/) inference engine, so it can use your GPU when available and fall back to the CPU otherwise. It runs on Windows, macOS, and Linux (as a .deb package or AppImage, including Arm64 builds), and it's built as a lightweight native app rather than a browser tab.

Jan isn't limited to local models. It can also connect to cloud providers, including Anthropic's Claude models, OpenAI, Mistral, and Groq, with your own API keys, so you can keep local and cloud models in one interface. It also runs an OpenAI-compatible API server on `localhost:1337`, letting other applications use the models you've set up in Jan, and it supports the Model Context Protocol (MCP) for connecting tools. The project is licensed under Apache-2.0.

## Key Features

- **Local models from Hugging Face** — Browse, download, and run open-weight models inside the app
- **Offline chat** — Conversations with local models stay on your machine
- **Cloud providers in the same app** — Optional connections to Anthropic, OpenAI, Mistral, Groq, and others with your own keys
- **Local API server** — An OpenAI-compatible endpoint on port 1337 for other apps and scripts
- **MCP support** — Connect tools and data sources through the Model Context Protocol
- **Cross-platform** — Windows, macOS, and Linux, including Arm64 Linux builds

## Use Cases

- **Private everyday assistant** — Drafting, summarizing, and brainstorming without a cloud account
- **Trying open-weight models** — Compare models and sizes on your own hardware from one interface
- **Mixing local and cloud** — Use a local model for sensitive work and a cloud model when you need more capability
- **Local API for other tools** — Serve models to editors, scripts, and agents through the built-in server

## Who It's For

Jan is the easiest starting point for people who want a ChatGPT- or Claude-style chat app that runs locally, without touching the command line. It's free with no account. How fast and capable local chats feel depends on your hardware and the model size you choose.
