---
layout: software
title: "llama.cpp"
seo_title: "llama.cpp: Fast Local LLM Inference in C/C++"
slug: llama-cpp
tagline: "Lightweight C/C++ engine for running LLMs on local hardware"
type: open-source
license: MIT
website: https://github.com/ggml-org/llama.cpp
developer: "The ggml authors (ggml-org)"
repository: https://github.com/ggml-org/llama.cpp
latest_version: "b12804"
version_tag: '^(b\d+)$'
version_checked_at: 2026-11-27
platforms: [Linux, Windows, macOS, Docker]
category: ai-assistant
self_hostable: true
logo: /assets/images/software/llama-cpp.svg
alternative_to:
  - claude
description: "llama.cpp is an MIT-licensed C/C++ engine for running LLMs locally on CPUs and GPUs, with a command-line chat tool and an OpenAI-compatible server."
last_modified_at: 2026-11-04
faq:
  - question: "What is the difference between llama.cpp and Ollama?"
    answer: "llama.cpp is the low-level inference engine, with fine-grained control over models, quantization, and hardware settings. [Ollama](/software/ollama/) is a friendlier tool that manages models for you and exposes a simple local API. Many desktop apps, including [Jan](/software/jan/), bundle llama.cpp as their engine."
  - question: "What is a GGUF file?"
    answer: "GGUF is the model file format llama.cpp uses. It stores a model's weights, often quantized to fewer bits so the model needs less memory, along with the metadata needed to run it. Many open-weight models are published on Hugging Face in GGUF form."
  - question: "Why does llama.cpp use version numbers like b12103?"
    answer: "The project publishes a build for nearly every change, numbered sequentially, instead of occasional named releases. Higher numbers are newer."
---

## Overview

llama.cpp is an open source engine for running large language models with minimal setup and strong performance on ordinary hardware. Written in C and C++ with no heavy dependencies, it began in 2023 as a way to run Meta's LLaMA models on a laptop and has grown into one of the most widely used local inference projects, supporting a broad range of open-weight model families.

Much of its popularity comes from efficiency. llama.cpp runs models in the GGUF format, usually quantized to 2–8 bits per weight so large models fit in far less memory, and it can split work between CPU and GPU. It supports many hardware back ends, including NVIDIA CUDA, Apple Metal, Vulkan, and AMD GPUs, and it runs on Linux, Windows, and macOS, with official Docker images.

You can use it directly from the command line to chat with a model, or start its built-in server, which exposes an OpenAI-compatible API that other applications can call. Models can be downloaded straight from Hugging Face by name. Many friendlier tools are built on llama.cpp, including [Jan](/software/jan/), which bundles it as its engine. The project is MIT-licensed and publishes new builds almost daily.

## Key Features

- **Efficient local inference** — Runs quantized models on CPUs and GPUs with low memory overhead
- **GGUF model format** — Widely used format for distributing quantized open-weight models
- **Broad hardware support** — CUDA, Metal, Vulkan, AMD, and other back ends, plus CPU-only operation
- **OpenAI-compatible server** — Serve a model over an API that existing OpenAI-style clients understand
- **Direct Hugging Face downloads** — Fetch and run GGUF models by repository name
- **Embeddable library** — A C/C++ library that other applications build on

## Use Cases

- **Getting the most from limited hardware** — Run the largest model your RAM or VRAM can hold with fine-grained control
- **Self-hosted API servers** — Serve a local model to other apps on your machine or network
- **Developers building AI apps** — Embed local inference directly into desktop or server software
- **Experimenting with models and quantization** — Compare model sizes, quantization levels, and settings

## Who It's For

llama.cpp suits technical users and developers who want direct control over local inference and are comfortable with the command line. It's free and requires no account. People who'd rather not manage model files and settings usually start with [Ollama](/software/ollama/) or [Jan](/software/jan/), both of which build on the same ideas.
