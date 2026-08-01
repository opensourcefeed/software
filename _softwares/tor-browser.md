---
layout: software
title: "Tor Browser"
slug: tor-browser
tagline: "Anonymous browsing through the Tor network"
type: open-source
license: MPL-2.0
website: https://www.torproject.org
platforms: [Windows, macOS, Linux, Android]
category: web-browser
logo: /assets/images/software/tor-browser.svg
alternative_to:
  - chrome
  - edge
  - safari
description: "Tor Browser is a free, open source Firefox ESR fork maintained by The Tor Project that routes traffic through the Tor network for anonymous, censorship-resistant browsing."
last_modified_at: 2026-08-01
---

## Overview

Tor Browser is developed and maintained by The Tor Project, a nonprofit that grew out of onion routing research originally funded by the U.S. Naval Research Laboratory in the mid-1990s and later developed further by DARPA. The Tor Project itself was founded in 2006 to continue that work as independent, publicly-funded research and software development, and Tor Browser followed in 2008 as a way to make the underlying Tor network usable by ordinary people without manual proxy configuration. The browser is a modified build of Firefox ESR (Extended Support Release) — Mozilla's long-term-support channel — bundled with the Tor proxy, NoScript, and hardening patches from the Tor Uplift project, and it inherits Firefox's Mozilla Public License 2.0. Roughly once a year the project rebases onto the newest Firefox ESR to pull in Mozilla's upstream security fixes, most recently landing on Firefox ESR 140 with the Tor Browser 15.0 release.

What sets Tor Browser apart from every other browser on this site is its network model, not its interface. Instead of connecting to a website directly, Tor Browser routes each connection through a circuit of three relays run by volunteers worldwide — a guard relay, a middle relay, and an exit relay — each layer of encryption stripped one hop at a time so that no single relay knows both where a request came from and where it's going. This is a fundamentally different value proposition than Brave, Firefox, or LibreWolf, which aim to make everyday browsing faster and less tracked while you stay identifiable to the sites you visit. Tor Browser instead aims to make you anonymous and to get you past network censorship, at a real cost in speed and site compatibility that the other browsers on this site don't impose.

## Key Features

- **Onion routing** — Traffic passes through three volunteer-run relays (guard, middle, exit) so no single hop can see both source and destination
- **Firefox ESR base** — Built on Mozilla's long-term-support Firefox branch, rebased roughly annually to inherit upstream security fixes
- **Per-site circuit isolation** — Each site gets its own Tor circuit by default, limiting cross-site correlation
- **Security levels** — Standard, Safer, and Safest modes progressively disable JavaScript and other attack surface for higher-risk browsing
- **Fingerprinting resistance** — Uniform window sizing and spoofed system fonts/timezone make individual users harder to distinguish from one another
- **No persistent history** — Cookies, cache, and browsing history are discarded when the browser closes unless explicitly saved
- **Bridges and pluggable transports** — Obfs4 and other pluggable transports disguise Tor traffic to get around censorship that blocks known Tor relays
- **.onion service support** — Can reach onion services directly, without exiting the Tor network to the regular internet at all

## Use Cases

- **Circumventing censorship** — Reaching blocked news sites, social media, or messaging platforms from countries or networks that filter internet access
- **Whistleblowing and sensitive research** — Journalists, activists, and researchers who need to hide their identity or location from the sites and services they access
- **Avoiding network-level surveillance** — Preventing an ISP, employer, or local network operator from seeing which sites are visited
- **Accessing onion services** — Reaching Tor-only hidden services that aren't reachable on the regular web at all

## Who It's For

Tor Browser is for people who specifically need anonymity or censorship circumvention, not a faster or more private daily browser for routine use — it is honestly slower than Chrome, Brave, or Firefox because every request takes three extra network hops, and a meaningful number of sites block Tor exit node IP ranges outright or throw up extra CAPTCHAs when they detect Tor traffic. Anyone who just wants less tracking during normal day-to-day browsing is better served by Brave, Firefox, or LibreWolf; Tor Browser earns its tradeoffs specifically for the subset of browsing where hiding your identity or location matters more than speed or compatibility.
