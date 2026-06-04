# AstroLens V1

AstroLens is an iPhone-first AR astrology app concept: a SwiftUI, RealityKit, and ARKit product that turns a birth chart into a living spatial "grand clock" instead of a flat symbolic wheel.

This repository is the public execution home for V1. It currently contains the sanitized planning source, brand source, and swarm coordination packet. App source will be added by the Phase 1 implementation tasks.

## Current Source of Truth

- Product task system: `.planning/Docs/tasks.md`
- Flagship product spec: `.planning/Docs/astro_lens_flagship_product_spec.md`
- Vedic AR clock spec: `.planning/Docs/vedic-ar-clock-spec.md`
- Math/geometry visualization spec: `.planning/Docs/vedic-math-viz.md`
- Brand guidelines: `.planning/Branding/ASTROLENS-BRAND-GUIDELINES.md`
- Execution tracker: `tasks/todo.md`
- Lessons tracker: `tasks/lessons.md`

## Technical Target

- Platform: iPhone, iOS 17+
- UI: SwiftUI
- 3D/AR: RealityKit + ARKit
- State: Combine and Swift observable state
- Product policy: no third-party product packages unless the task system is explicitly revised
- External services: AstrologyAPI for chart data, Gemini Live or OpenAI Realtime for AI tutoring

## Execution Model

Work is organized as a phase, wave, and swarm plan:

- Phase 0: repo and GitHub bootstrap
- Phase 1: foundation contract freeze
- Phase 2: data and visualization build
- Phase 3: interaction, time, AR, and AI
- Phase 4: hardening and release readiness

Every implementation task should have one issue, one owner, one branch, and one worktree. Shared contract or app-shell changes are lock zones and must be serialized through the orchestrator.

## Verification Baseline

Before the first app scaffold exists, the verification gate is repository hygiene:

```bash
git status --short --branch
git remote -v
git ls-remote origin
```

Once the Xcode project exists, the required gates move to the commands in `.planning/Docs/tasks.md`, starting with `xcodebuild -list -project AstroLens.xcodeproj` and simulator builds.

