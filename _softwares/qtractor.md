---
layout: software
title: "Qtractor"
slug: qtractor
tagline: "Linux-native open source multitrack audio and MIDI editor"
type: open-source
license: GPL-2.0-or-later
website: https://qtractor.org
platforms: [Linux]
category: audio-editing
logo: /assets/images/software/qtractor.svg
alternative_to:
  - adobe-audition
description: "Qtractor is a free, open source multitrack audio and MIDI editor for Linux, built on the JACK Audio Connection Kit and ALSA sequencer."
last_modified_at: 2026-09-05
---

## Overview

Qtractor was created by Rui Nuno Capela and first released in 2005, built specifically for the Linux audio ecosystem around JACK for audio routing and the ALSA sequencer for MIDI. Unlike cross-platform DAWs, it has remained a Linux-only project throughout its development, which has let it integrate tightly with Linux-native audio infrastructure rather than abstracting it away for portability.

Development has continued steadily as part of the broader Qt-based Linux audio application ecosystem, alongside related tools built by the same author. Qtractor supports LADSPA, DSSI, LV2, and VST plugin formats, and is commonly used alongside other JACK-based applications in a modular Linux audio production setup.

## Key Features

- **JACK and ALSA integration** — Native routing through JACK for audio and ALSA sequencer for MIDI
- **Multitrack recording and editing** — Non-destructive audio and MIDI track editing
- **Plugin support** — Compatible with LADSPA, DSSI, LV2, and VST plugin formats
- **MIDI sequencing** — Full MIDI track editing alongside recorded audio
- **Session management** — Integrates with Linux session managers for multi-application audio setups

## Use Cases

- **Linux studio setups** — Multitrack recording and mixing in a JACK-based Linux audio environment
- **Modular audio production** — Working alongside other JACK-connected applications and plugins
- **MIDI-heavy composition** — Sequencing MIDI alongside recorded audio tracks

## Who It's For

Qtractor is aimed at Linux users already working within the JACK/ALSA ecosystem who want a native multitrack editor rather than a cross-platform tool with less direct integration. It suits users building a modular, JACK-connected production setup more than those wanting a single all-in-one application.
