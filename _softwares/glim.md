---
layout: software
title: "Glim"
slug: glim
tagline: "A macOS workspace for reading local files"
type: open-source
license: MIT
website: https://github.com/NeoPanic/Glim
platforms: [macOS]
category: pdf-tools
logo: /assets/images/software/glim.png
description: "Glim is a free macOS file viewer for Markdown, source code, PDFs, and other documents, with basic editing for ordinary UTF-8 text files."
last_modified_at: 2026-10-19
---

## Overview

Glim brings several kinds of local files into one macOS workspace. It is written in Rust using GPUI Kit and uses native readers for supported document formats. The project is MIT-licensed, with source code and Apple Silicon and Intel downloads available on GitHub.

## Key Features

- **Markdown preview** — Read Markdown with supported diagrams and mathematical formulas.
- **Documents and images** — Preview PDFs, Office documents, and images without editing their contents.
- **Structured data** — Inspect JSON trees, CSV tables, and read-only SQLite snapshots.
- **Text editing** — Make basic changes to ordinary UTF-8 files, with automatic saving and explicit saving.
- **Git review** — View diffs alongside source files, with explicit staging and unstaging controls.

## Use Cases

Glim is useful for reviewing a folder containing Markdown notes, code, data files, and exported documents without opening a separate application for every format. It can also help inspect outputs produced by coding agents, such as reports, diffs, and tables.

## Platform Support and Limitations

Glim supports macOS on Apple Silicon and Intel. PDF and Office previews are read-only; it is not an Office editor or a PDF annotation suite. Format support varies by reader, and the project documents it in its [supported-format inventory](https://github.com/NeoPanic/Glim/blob/main/docs/file-format-support.md).

The current downloadable DMGs are ad-hoc signed and are not Apple-notarized. Read the [installation and first-launch instructions](https://github.com/NeoPanic/Glim#download) before installing. Installers are available from [GitHub Releases](https://github.com/NeoPanic/Glim/releases/latest).
