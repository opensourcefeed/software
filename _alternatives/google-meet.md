---
layout: alternative-to
title: "Open Source Alternatives to Google Meet"
slug: google-meet
proprietary_slug: google-meet
alternatives:
  - jitsi
  - bigbluebutton
description: "Open source alternatives to Google Meet: Jitsi Meet for everyday video calls and BigBlueButton for online classes, both self-hostable with no Google account or Workspace subscription."
last_modified_at: 2026-09-25
comparison:
  columns: ["License", "Best for", "Account to join", "Recording", "Hosting"]
  rows:
    - feature: "Jitsi Meet"
      values: ["Apache-2.0", "General meetings and quick calls", "No", "Self-hosted via Jibri", "Free public instance (meet.jit.si) or self-hosted"]
    - feature: "BigBlueButton"
      values: ["LGPL-3.0", "Online classes and training", "No", "Built in, with slide and whiteboard playback", "Self-hosted on a dedicated server, or managed by third-party hosts"]
faq:
  - question: "Is there a free open source alternative to Google Meet?"
    answer: "Yes. Jitsi Meet is the closest general-purpose replacement: it is free, open source, and runs in the browser. On the free public instance at meet.jit.si, the person starting a meeting signs in with a Google, GitHub, or Facebook account (required since August 2023), while participants join without an account. A self-hosted Jitsi server has no sign-in requirement by default and no participant time limits."
  - question: "Which open source Google Meet alternative is best for teaching?"
    answer: "BigBlueButton. It is designed for online classes, with a shared whiteboard, breakout rooms, polls, shared notes, and recordings that replay slides and annotations, and it is built into Moodle and available for Canvas and other learning platforms."
  - question: "Can I record meetings with an open source Google Meet alternative?"
    answer: "Yes. BigBlueButton records sessions natively and plays them back with slides, whiteboard annotations, chat, and audio in sync. Self-hosted Jitsi Meet records through its Jibri component, which has to be deployed alongside the Jitsi server."
---

Switching from Google Meet to an open source alternative removes the dependency on a Google account or a Workspace subscription, and self-hosting keeps meeting traffic and recordings on infrastructure you control, which matters for organizations with data-residency requirements. Neither alternative replicates Meet's Calendar and Gmail scheduling integration or Gemini-generated meeting notes, and running your own server takes ongoing administration, but both cover video calls, screen sharing, and recording without per-user fees.

## Which One Should You Pick?

- **Want quick, general-purpose video calls, hosted or self-hosted?** → [Jitsi Meet](/software/jitsi/)
- **Running online classes or training with a whiteboard, polls, and breakout rooms?** → [BigBlueButton](/software/bigbluebutton/)
