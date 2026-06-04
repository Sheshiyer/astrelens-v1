# Shared Contract Packet

## Project Brief

- Project: AstroLens V1
- Delivery mode: production-oriented iPhone AR app build.
- Release model: phased rollout with wave-boundary integration.
- Quality bar: no completion without test, build, screenshot, log, metric, or device evidence appropriate to the task.

## Frozen Contracts for Phase 1

These are expected contracts to define and freeze before broad parallel implementation begins.

### Chart Domain

- `ChartGraph` is the canonical source of truth for UI, scene, interactions, and AI.
- Domain objects cover planets, houses, signs, nakshatras, padas, axes, aspects, dasha periods, transits, and lens state.
- Vedic and Western modes should share the same core graph where possible.

### Birth Input and Data

- Required user inputs: date, time, and place of birth.
- Resolved internal fields: latitude, longitude, timezone, astrology system, house system where relevant, and Vedic ayanamsa.
- AstrologyAPI is treated as a structured data provider only; all responses normalize into the internal graph before app use.
- Secrets must come from local config or CI secrets, never committed plist/env files.

### Scene Control

- `GrandClockScene` owns RealityKit scene construction and accepts normalized chart state plus focused interaction state.
- Scene control actions include highlight planet, highlight house, highlight axis, scrub time, switch lens, set scale mode, and advance walkthrough step.
- Interaction state changes should be inspectable and testable without asking AI to calculate astrology.

### AI Tutor

- AI acts as a visual tutor and scene controller, not a chart calculator.
- Tool calls must be grounded in the `ChartGraph` and must not invent chart facts outside provided data.
- Time-aware answers use app timing state and normalized transit/dasha data.

### Config and Environment

- Product target: iPhone iOS 17+.
- Frameworks: SwiftUI, RealityKit, ARKit, Combine/Observable state.
- Product package policy: no third-party dependencies unless the task system is revised.
- Provider keys: AstrologyAPI and AI provider keys must be local/CI secrets only.

## Coordination Rules

- One issue, one owner, one branch, one worktree.
- Merge at wave boundaries unless the orchestrator changes the rule.
- Lock-zone files are serialized.
- Contract changes require orchestrator review.

## Required Evidence

- Repo tasks: remote proof, clean status, safety scan.
- Foundation tasks: `xcodebuild -list`, simulator build, unit tests.
- Data tasks: mapping tests and error-path tests.
- Scene tasks: visual/smoke proof plus performance notes.
- AR tasks: device proof when claiming real AR/Sky Mode behavior.
- AI tasks: tool-call tests, privacy tests, and grounded-output checks.

