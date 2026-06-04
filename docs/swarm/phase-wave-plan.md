# AstroLens V1 Phase/Wave/Swarm Plan

## Discovery Summary

- Planning depth: standard, with detailed issue-level tracking.
- Delivery mode: production-oriented V1 build from planning specs.
- Release model: phased rollout with wave-boundary integration.
- Quality bar: simulator builds, tests, privacy/security review, and device AR proof before AR completion claims.
- Team topology: orchestrator plus app, backend/AI, and validation workers.
- External constraints: public repository, no local-state leakage, iPhone iOS 17+ product target.

## Agent Ownership

| Concern | Primary owner | Reviewer | Notes |
|---|---|---|---|
| Planning and issue graph | Planner/orchestrator | Human lead | Owns milestones, dependencies, and wave boundaries. |
| App and scene implementation | App implementation agent | Orchestrator | Owns SwiftUI, RealityKit, ARKit, interactions, and visual polish. |
| Data, cloud, and AI integration | Backend/AI agent | Orchestrator | Owns AstrologyAPI, provider adapters, env contracts, and privacy boundaries. |
| Validation and regression | Validation agent | Orchestrator | Owns test design, adversarial checks, and evidence review. |

## Phase Map

### Phase 0 - Repo and GitHub Bootstrap

Goal: create the public execution repo, import sanitized planning sources, and establish GitHub tracking.

Exit criteria:
- initial commit pushed to `main`,
- milestones and labels created,
- task issues created or intentionally bundled,
- remote and safety scan verified.

### Phase 1 - Foundation Contract Freeze

Goal: create a runnable iOS app baseline and freeze shared contracts before parallel work.

Waves:
- Wave 1.1: Xcode/iOS scaffold and source module layout.
- Wave 1.2: `ChartGraph`, birth input, visual tokens, app state, and AI tool contracts.
- Wave 1.3: CI, simulator build, and no-third-party dependency gate.

### Phase 2 - Data and Visualization Build

Goal: implement chart data flow and the core RealityKit Grand Clock scene.

Swarms:
- Data swarm: AstrologyAPI client, normalization, errors, tests, secrets/logging.
- Scene swarm: angular math, rings, planets, beams, axes, dasha, transits, resonance field.
- Validation swarm: contract tests, scene smoke proof, performance baseline.

### Phase 3 - Interaction, Time, AR, and AI

Goal: complete the product behaviors that make the scene explainable and interactive.

Swarms:
- App swarm: causal reveal, detail sheets, walkthrough, timeline, lenses, AR scale modes, Sky Mode.
- AI swarm: realtime provider adapters, tool handlers, guardrails, time-aware intents.
- Validation swarm: end-to-end smoke, privacy/security, simulator and device AR checklist.

### Phase 4 - Hardening and Release Readiness

Goal: performance, security/privacy, final docs, changelog, and wave closeout.

## Dependency Rationale

- Repo bootstrap must land before any worker branch.
- App scaffold must land before model, scene, or UI workers start.
- Shared model and tool contracts must freeze before parallel data, scene, AI, and UI work.
- CI/project config is a lock zone and should be owned by one task at a time.
- AR/Sky Mode completion requires physical-device evidence, not only simulator proof.

## Branch and Worktree Pattern

- Branch: `swarm/astrelens/<phase>-<wave>/<swarm>/<task-id>-<agent>`
- Worktree: `.worktrees/<task-id>-<agent>`

