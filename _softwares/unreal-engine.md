---
layout: software
title: "Unreal Engine"
slug: unreal-engine
tagline: "Proprietary high-fidelity game engine from Epic Games"
type: proprietary
license: Proprietary (source-available, royalty-based)
website: https://www.unrealengine.com
platforms: [Windows, macOS, Linux]
category: game-development
logo: /assets/images/software/unreal-engine.svg
alternative_to: []
has_alternatives: true
description: "Unreal Engine is Epic Games' proprietary, source-available game engine known for high-fidelity 3D rendering, distributed free of upfront cost but with a royalty on commercial revenue above a threshold."
last_modified_at: 2026-08-06
---

## Overview

Unreal Engine was first developed by Tim Sweeney and Epic Games for the 1998 first-person shooter Unreal, and has since gone through multiple major versions, with Unreal Engine 5 (released in 2022) introducing headline rendering technologies Nanite (virtualized micropolygon geometry) and Lumen (dynamic global illumination) that pushed real-time visual fidelity closer to pre-rendered film quality. It has become one of the two dominant general-purpose game engines alongside Unity, and is also widely used outside games in film/TV virtual production, architectural visualization, and automotive design.

Unreal Engine's licensing is source-available rather than fully open source: the complete C++ engine source is published on GitHub (behind an Epic Games account and end-user license agreement), and developers can modify and recompile it, but it remains proprietary software owned by Epic. There is no upfront license fee, and small creators pay nothing; Epic instead charges a 5% royalty on a game's gross revenue once it exceeds a set threshold (excluding revenue through the Epic Games Store, where the royalty is waived). This royalty-based model, combined with Epic's Unreal Engine Marketplace/Fab asset store, differs meaningfully from Unity's historical per-seat and per-install pricing debates.

## Is Unreal Engine Open Source?

No, not in the free/libre sense, even though the source code is public. Epic publishes the full C++ engine source on GitHub, but access requires an Epic Games account and acceptance of the Unreal Engine End User License Agreement, and the code carries no license to redistribute a competing engine or strip out Epic's royalty terms. This is what's usually called "source-available," a distinct category from open source licenses like the MIT or GPL that Unreal's competitor Godot uses — Unreal remains Epic's proprietary product even though you can read and modify its internals.

## Key Features

- **Nanite virtualized geometry** — Renders film-quality detailed meshes without manual level-of-detail optimization
- **Lumen global illumination** — Fully dynamic, real-time lighting and reflections without pre-baking
- **Blueprint visual scripting** — Node-based visual scripting alongside full C++ support
- **MetaHuman** — Tools for creating photorealistic digital humans
- **Source-available codebase** — Full engine source published on GitHub for inspection and modification
- **Cross-industry tooling** — Virtual production (in-camera VFX), architectural visualization, and automotive/product design tools built on the same engine

## Use Cases

- **AAA and high-fidelity game development** — Console and PC titles requiring advanced rendering
- **Film and TV virtual production** — Real-time in-camera VFX using LED walls, popularized by shows like The Mandalorian
- **Architectural and automotive visualization** — Real-time photorealistic rendering outside games
- **Cinematics and animation** — MetaHuman and Sequencer tools for narrative content

## Who It's For

Unreal Engine is aimed at developers and studios that need high-end, film-quality real-time rendering, from AAA game studios to virtual production teams and architectural visualization firms. It's free to use with no upfront cost, with Epic taking a 5% royalty on revenue above a set threshold, and its source-available (not fully open source) engine appeals to teams that want to inspect or modify engine internals without Unity's historical per-seat licensing debates.
