# AstroLens Task System

## Source Specs
- `/Users/mohankumarv/Desktop/Projects/Personal/Astrolens/Docs/astro_lens_flagship_product_spec.md`
- `/Users/mohankumarv/Desktop/Projects/Personal/Astrolens/Docs/rork-master-prompt.md`
- `/Users/mohankumarv/Desktop/Projects/Personal/Astrolens/Docs/self-assembly-walkthrough.md`
- `/Users/mohankumarv/Desktop/Projects/Personal/Astrolens/Docs/vedic-ar-clock-spec.md`
- `/Users/mohankumarv/Desktop/Projects/Personal/Astrolens/Docs/vedic-math-viz.md`
- `/Users/mohankumarv/Desktop/Projects/Personal/Astrolens/.github/copilot-instructions.md`

Assumption Overrides:
- Scope lock: full flagship `Build now` track is authoritative for active execution.
- This means real `AstrologyAPI` integration and live conversational AI are active tasks (even though `rork-master-prompt.md` marks them later).
- Sky-aligned real-world `Sky Mode` is an active extension of the AR track and is not deferred.
- Deferred list still tracks all non-immediate expansions.

### Spec-to-Task Traceability Map
| Req ID | Requirement | Source | Task IDs |
|---|---|---|---|
| REQ-001 | iOS 17+, SwiftUI + RealityKit + ARKit + Combine only | Rork tech stack | T-FND-001, T-FND-002, T-FND-004 |
| REQ-002 | No third-party packages | Rork tech stack | T-FND-005 |
| REQ-003 | Layered architecture: calculation, chart graph, visualization, AI, app shell | Flagship §5 | T-FND-002, T-DAT-004, T-DAT-005, T-VIZ-003, T-AI-001 |
| REQ-004 | AstrologyAPI as data provider | Flagship §5.1, §25 | T-DAT-004, T-DAT-005, T-DAT-007 |
| REQ-005 | ChartGraph as single source of truth for UI + scene + AI | Flagship §5.2, §19; Rork key note #1 | T-DAT-002, T-DAT-005, T-AI-001 |
| REQ-006 | Required birth inputs and onboarding flow | Flagship §6; Rork screens 1-3 | T-FND-003, T-DAT-003, T-DAT-007 |
| REQ-007 | Multi-dimensional grand clock with 5 rings | Flagship §7; Vedic AR spec | T-VIZ-003, T-VIZ-004 |
| REQ-008 | Visual grammar for planets, conjunctions, aspects, axes, nodes, dasha, transit | Flagship §8; Vedic math/UX specs | T-VIZ-005, T-VIZ-006 |
| REQ-009 | Causal reveal interaction pattern | Flagship §11 | T-INT-002, T-INT-003 |
| REQ-010 | Time scrubber + timelapse + key life moments | Flagship §12; Rork time system | T-TIM-001, T-TIM-002, T-TIM-003 |
| REQ-011 | Guided walkthrough as hero flow | Flagship §13; self-assembly walkthrough | T-WLK-001, T-WLK-002 |
| REQ-012 | Beginner-first progressive reveal | Flagship §14, §21 | T-INT-002, T-INT-003, T-WLK-002 |
| REQ-013 | Vedic + Western support in one visual engine | Flagship §15 | T-CFG-002, T-CFG-003 |
| REQ-014 | Divisional lenses as overlays, not separate screens | Flagship §16; Vedic AR spec | T-CFG-003 |
| REQ-015 | AR scale modes Palm/Desk/Room/Dome | Flagship §10; Rork scale modes | T-AR-001, T-AR-002 |
| REQ-016 | AR + non-AR fallback parity | Rork key note #10 | T-AR-002 |
| REQ-017 | Sky-aligned AR mode that lets the user point at the real sky and view current planets/chart overlays in place | User-requested extension; Flagship §3, §9, §12 | T-AR-003, T-AR-004 |
| REQ-018 | Sky calibration, heading/orientation accuracy handling, and fallback behavior for poor sensor quality | User-requested extension | T-AR-003, T-AR-004, T-QLT-002 |
| REQ-019 | Walkthrough state machine and scene animator | Rork key note #4 | T-WLK-001, T-WLK-002 |
| REQ-020 | Opacity focus policy on selection | Rork key note #5; Vedic opacity language | T-INT-002 |
| REQ-021 | Transit date recalculates scene in real-time | Rork key note #6 | T-TIM-002 |
| REQ-022 | Lens switching remaps planet positions | Rork key note #7 | T-CFG-003 |
| REQ-023 | All color tokens centralized | Rork key note #8 | T-FND-004 |
| REQ-024 | Resonance field formula and mesh generation | Rork key note #9; vedic-math-viz | T-VIZ-007 |
| REQ-025 | AI tutor guardrails (grounded, inspectable, tool-driven) | Flagship §17, §20 | T-AI-001, T-AI-003, T-AI-004 |
| REQ-026 | Time-aware AI queries and scene controls | Flagship §12.5 | T-AI-005 |
| REQ-027 | Priority build order compliance | Rork "what to build" | T-FND-001 -> T-QLT-004 |
| REQ-028 | App Store-grade polish/performance quality bar | Rork final quality bar | T-VIZ-008, T-QLT-001, T-QLT-002 |
| REQ-029 | Security controls for API + AI integrations | Workspace instructions + AGENTS mandates | T-DAT-008, T-AI-006, T-QLT-003 |
| REQ-030 | CI pipeline and test discipline | AGENTS + plan | T-FND-006, T-QLT-001 |

## Status Legend
| Status | Meaning | Update Rule |
|---|---|---|
| TODO | Not started | Default state for all new tasks |
| IN_PROGRESS | Active execution in current Ralph loop | Set when loop starts work |
| BLOCKED | Cannot proceed due to dependency/risk | Add blocker note in `## Risks / Blockers` |
| REVIEW | Implementation done, awaiting verification/review | Only after commands run |
| DONE | Verified and accepted | Requires Definition of Done and verification evidence |

Priority Legend:
- `P0`: on critical path for current milestone gate
- `P1`: needed for milestone completion but can be parallelized
- `P2`: hardening/polish after core acceptance

## Execution Protocol (Ralph Loop)
1. Select the highest-priority task with `Status: TODO` and all `DependsOn` tasks in `DONE`.
2. Copy only that task's `Ralph Prompt` into the loop.
3. Execute only the scoped work in that task's `In Scope`.
4. Run all listed `Verification Commands` exactly.
5. If commands pass, move task to `REVIEW`, then `DONE` after acceptance.
6. If blocked, set `Status: BLOCKED` and append a dated blocker entry under `## Risks / Blockers`.
7. Never start a task with unsatisfied dependencies.
8. At each milestone gate, run the milestone verification sequence before proceeding.

## Milestones
### M0 — Project Bootstrapped and Runnable
Entry Criteria:
- `tasks.md` approved.
- No implementation tasks started.

Exit Criteria:
- App project compiles.
- Navigation shell runs from splash to chart container and settings.
- CI build+test workflow exists and runs.

Required Verification Tasks:
- T-FND-005
- T-FND-006

### M1 — Chart Graph + Data Pipeline Stable
Entry Criteria:
- M0 complete.

Exit Criteria:
- Birth input is validated.
- AstrologyAPI call path works through secure client.
- Responses normalize into ChartGraph consumed by app state.
- Data-layer tests pass.

Required Verification Tasks:
- T-DAT-006
- T-DAT-007
- T-DAT-008

### M2 — Core 3D/AR Visualization Complete
Entry Criteria:
- M1 complete.

Exit Criteria:
- Grand Clock renders all required base layers.
- Core scene entities (planets, beams, axes, dasha, transits, resonance field) appear correctly.
- Performance baseline is acceptable on target simulator/device.

Required Verification Tasks:
- T-VIZ-006
- T-VIZ-007
- T-VIZ-008

### M3 — Interaction + Walkthrough Complete
Entry Criteria:
- M2 complete.

Exit Criteria:
- Planet/house/axis causal reveal interactions function with correct detail sheets.
- Walkthrough state machine and scene animations run end-to-end.
- Interaction and walkthrough regression tests pass.

Required Verification Tasks:
- T-INT-004
- T-WLK-003

### M4 — Time Traversal + Scale/AR + Settings/Lenses Complete
Entry Criteria:
- M3 complete.

Exit Criteria:
- Timeline scrubber and timelapse update scene in real-time.
- Palm/Desk/Room/Dome modes function.
- AR placement + non-AR fallback parity implemented.
- Sky Mode can align chart and transit overlays to the real-world sky with calibration and graceful fallback.
- Settings + D1/D9/D10 lens transitions function.

Required Verification Tasks:
- T-TIM-003
- T-AR-002
- T-AR-004
- T-CFG-003

### M5 — AI Tutor + Integration Hardening Complete
Entry Criteria:
- M4 complete.

Exit Criteria:
- AI tool contract and handlers are integrated with scene controls.
- Conversational tutor supports time-aware queries and guardrails.
- End-to-end, performance, security, and documentation gates pass.

Required Verification Tasks:
- T-AI-006
- T-QLT-001
- T-QLT-002
- T-QLT-003
- T-QLT-004

## Task Cards
### [T-FND-001] [Foundation] Initialize iOS project and targets
Status: REVIEW
Priority: P0
DependsOn: none
Estimate: 45m
Owner: ralph-loop

Goal:
Create the initial iOS 17+ project with app and test targets.

In Scope:
- Create `AstroLens` Xcode project configured for iOS 17+.
- Add app target and XCTest unit test target.
- Ensure launch to a placeholder root view.

Out of Scope:
- Feature implementation.
- API/scene logic.

Implementation Notes:
- Keep SwiftUI lifecycle (`@main`) and avoid UIKit except bridge points.

Files/Modules Expected:
- `AstroLens/AstroLens.xcodeproj`
- `AstroLens/App/AstroLensApp.swift`
- `AstroLensTests/`

Ralph Prompt:
"Create an iOS 17+ SwiftUI Xcode project named AstroLens with app + unit-test targets, and wire a minimal launch path to a placeholder root view."

Verification Commands:
- `cd AstroLens && xcodebuild -list -project AstroLens.xcodeproj`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Project builds successfully for simulator.
- App launches to placeholder root screen.

Failure/Blocker Signals:
- Build fails on clean checkout.
- Test target missing or not discoverable.

### [T-FND-002] [Foundation] Scaffold module boundaries from architecture
Status: TODO
Priority: P0
DependsOn: [T-FND-001]
Estimate: 40m
Owner: ralph-loop

Goal:
Create the canonical module/folder layout used by the product specs.

In Scope:
- Add folders/modules: `App`, `Models`, `Views`, `Scene`, `AR`, `AI`, `Utilities`.
- Add placeholder files so compile succeeds.
- Keep one-responsibility boundaries between modules.

Out of Scope:
- Real feature logic.

Implementation Notes:
- Match naming from `rork-master-prompt.md` for future task compatibility.

Files/Modules Expected:
- `AstroLens/App/`
- `AstroLens/Models/`
- `AstroLens/Views/`
- `AstroLens/Scene/`
- `AstroLens/AR/`
- `AstroLens/AI/`
- `AstroLens/Utilities/`

Ralph Prompt:
"Create the module directory/file scaffold from the master prompt so later tasks can implement without renaming churn."

Verification Commands:
- `cd AstroLens && find . -maxdepth 2 -type d | sort`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- All required module folders exist.
- Build still passes.

Failure/Blocker Signals:
- Missing required module path.
- Cross-module imports already tangled.

### [T-FND-003] [Foundation] Implement AppState and navigation shell
Status: TODO
Priority: P0
DependsOn: [T-FND-002]
Estimate: 50m
Owner: ralph-loop

Goal:
Set up app-level state and navigation flow skeleton: splash -> birth input -> loading -> chart viewer -> settings.

In Scope:
- Create `AppState` observable root state.
- Add navigation routes and basic transitions.
- Wire placeholder views for each required screen.

Out of Scope:
- Final visual polish.
- Real API calls.

Implementation Notes:
- Keep transitions deterministic for testing.

Files/Modules Expected:
- `AstroLens/App/AppState.swift`
- `AstroLens/Views/Onboarding/SplashScreen.swift`
- `AstroLens/Views/Onboarding/BirthDataInputView.swift`
- `AstroLens/Views/Onboarding/ChartLoadingView.swift`
- `AstroLens/Views/ChartViewer/ChartViewerContainer.swift`
- `AstroLens/Views/Settings/SettingsView.swift`

Ralph Prompt:
"Implement the top-level app flow state machine and route scaffolding for onboarding, chart viewer, and settings with testable transitions."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- App can navigate across all required shell screens.
- Navigation is driven by `AppState`, not ad-hoc local state.

Failure/Blocker Signals:
- Route dead-ends or compile errors.
- Navigation logic spread across views.

### [T-FND-004] [Foundation] Define centralized visual tokens and haptics constants
Status: TODO
Priority: P1
DependsOn: [T-FND-002]
Estimate: 35m
Owner: ralph-loop

Goal:
Centralize colors, motion timing constants, and haptic patterns.

In Scope:
- Add brand color tokens and semantic color aliases.
- Add haptic pattern enum/utilities.
- Add motion timing constants used by interactions/animations.

Out of Scope:
- Full animation implementation.

Implementation Notes:
- No hardcoded hex values in feature views after this task.

Files/Modules Expected:
- `AstroLens/Utilities/Colors.swift`
- `AstroLens/Utilities/Haptics.swift`
- `AstroLens/Utilities/Motion.swift`

Ralph Prompt:
"Create centralized color, haptic, and motion token utilities so all future UI and scene code imports shared tokens only."

Verification Commands:
- `cd AstroLens && rg -n '#[0-9A-Fa-f]{6}' AstroLens | cat`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Shared token files compile.
- No new view file introduces hardcoded brand hex values.

Failure/Blocker Signals:
- Token names are ambiguous or duplicated.

### [T-FND-005] [Foundation] Enforce platform and dependency constraints
Status: TODO
Priority: P1
DependsOn: [T-FND-001]
Estimate: 20m
Owner: ralph-loop

Goal:
Encode constraints: iOS 17+, Apple frameworks only, no third-party dependencies.

In Scope:
- Verify deployment target and build settings.
- Add dependency policy checks in CI scripts/docs.

Out of Scope:
- External package integration.

Implementation Notes:
- This task prevents silent architectural drift.

Files/Modules Expected:
- `AstroLens/AstroLens.xcodeproj/project.pbxproj`
- `.github/workflows/ios-ci.yml`
- `Docs/dependency-policy.md`

Ralph Prompt:
"Lock iOS target and dependency policy so the project cannot drift into unsupported frameworks or package dependencies."

Verification Commands:
- `cd AstroLens && xcodebuild -showBuildSettings -scheme AstroLens | rg IPHONEOS_DEPLOYMENT_TARGET`
- `cd /Users/mohankumarv/Desktop/Projects/Personal/Astrolens && rg -n 'SwiftPackageManager|Package.resolved|CocoaPods|Carthage' . || true`

Definition of Done:
- Deployment target reflects iOS 17+.
- Policy file and CI guard are in place.

Failure/Blocker Signals:
- Third-party dependency accidentally added.

### [T-FND-006] [Foundation] Set up CI build and test workflow
Status: TODO
Priority: P0
DependsOn: [T-FND-001, T-FND-003]
Estimate: 45m
Owner: ralph-loop

Goal:
Create GitHub Actions workflow to build and run unit tests on PRs.

In Scope:
- Add CI YAML for build + test.
- Configure simulator destination.
- Surface failing tests as required status.

Out of Scope:
- UI test matrix.

Implementation Notes:
- Keep workflow fast enough for loop iteration.

Files/Modules Expected:
- `.github/workflows/ios-ci.yml`

Ralph Prompt:
"Create a GitHub Actions workflow that builds AstroLens and runs unit tests for iOS simulator on every pull request."

Verification Commands:
- `cd /Users/mohankumarv/Desktop/Projects/Personal/Astrolens && test -f .github/workflows/ios-ci.yml`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Workflow file exists and references build + test steps.
- Local test command passes.

Failure/Blocker Signals:
- CI script missing test step.

### [T-DAT-001] [Data] Define core chart domain models
Status: TODO
Priority: P0
DependsOn: [T-FND-002]
Estimate: 55m
Owner: ralph-loop

Goal:
Implement typed domain models for planets, houses, signs, nakshatras, padas, aspects, axes, nodes, and timing.

In Scope:
- Add model structs/enums with strong typing.
- Include identifiers and fields needed by rendering + AI layers.

Out of Scope:
- API parsing logic.

Implementation Notes:
- Model shape must satisfy both Vedic and Western overlays.

Files/Modules Expected:
- `AstroLens/Models/Planet.swift`
- `AstroLens/Models/House.swift`
- `AstroLens/Models/Sign.swift`
- `AstroLens/Models/Nakshatra.swift`
- `AstroLens/Models/Pada.swift`
- `AstroLens/Models/Aspect.swift`
- `AstroLens/Models/Axis.swift`
- `AstroLens/Models/DashaPeriod.swift`

Ralph Prompt:
"Define strongly typed chart domain models that can represent Vedic and Western chart concepts without UI coupling."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- All core entities compile.
- No model depends on view or scene layers.

Failure/Blocker Signals:
- Circular model dependencies.

### [T-DAT-002] [Data] Implement canonical ChartGraph observable model
Status: TODO
Priority: P0
DependsOn: [T-DAT-001]
Estimate: 50m
Owner: ralph-loop

Goal:
Create the single chart graph source of truth consumed by UI, scene, and AI.

In Scope:
- Define `ChartGraph` aggregate with natal, transit, lens, and timing state.
- Add `transitDate`, `currentLens`, and selection/focus fields.

Out of Scope:
- Network fetch.

Implementation Notes:
- `ChartGraph` must remain domain-centric, not view-centric.

Files/Modules Expected:
- `AstroLens/Models/ChartGraph.swift`

Ralph Prompt:
"Implement ChartGraph as one observable canonical state model for rendering, interaction, highlighting, and AI interpretation."

Verification Commands:
- `cd AstroLens && rg -n 'struct ChartGraph|class ChartGraph|@Observable' AstroLens/Models/ChartGraph.swift`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- ChartGraph contains required chart state dimensions.
- App state can hold and observe ChartGraph instance.

Failure/Blocker Signals:
- Duplicate chart state appears in multiple managers.

### [T-DAT-003] [Data] Add birth input contract and validation
Status: TODO
Priority: P0
DependsOn: [T-FND-003, T-DAT-001]
Estimate: 40m
Owner: ralph-loop

Goal:
Validate birth date/time/place inputs before chart generation.

In Scope:
- Define input DTO and validation rules.
- Return user-safe validation errors.

Out of Scope:
- External geocoding implementation.

Implementation Notes:
- Keep format normalization deterministic for tests.

Files/Modules Expected:
- `AstroLens/Models/BirthInput.swift`
- `AstroLens/Managers/BirthInputValidator.swift`
- `AstroLens/Views/Onboarding/BirthDataInputView.swift`

Ralph Prompt:
"Implement strict validation for birth date, time, and place inputs and wire validation errors into onboarding flow."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Invalid input blocks chart generation.
- Validation output is deterministic and testable.

Failure/Blocker Signals:
- Validation tied directly to UI without reusable manager.

### [T-DAT-004] [Data] Implement AstrologyAPI client contract and transport
Status: TODO
Priority: P0
DependsOn: [T-DAT-002, T-DAT-003]
Estimate: 60m
Owner: ralph-loop

Goal:
Provide production-grade AstrologyAPI client with authenticated transport and typed responses.

In Scope:
- Define API protocol interface.
- Implement URLSession transport with timeout/retry/error mapping.
- Add secure key loading path.

Out of Scope:
- Full backend service implementation.

Implementation Notes:
- Do not log secrets or raw PII payloads.

Files/Modules Expected:
- `AstroLens/Services/AstrologyAPIClient.swift`
- `AstroLens/Services/AstrologyAPIModels.swift`
- `AstroLens/Config/Secrets.swift`

Ralph Prompt:
"Create a secure AstrologyAPI client interface and URLSession implementation with retries, error mapping, and secret-safe logging."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`
- `cd AstroLens && rg -n 'print\(|NSLog|debugPrint' AstroLens/Services AstroLens/Config || true`

Definition of Done:
- API client can be called from app layer through protocol.
- Errors are typed and actionable.

Failure/Blocker Signals:
- API key is hardcoded in source.

### [T-DAT-005] [Data] Normalize API responses into ChartGraph
Status: TODO
Priority: P0
DependsOn: [T-DAT-002, T-DAT-004]
Estimate: 60m
Owner: ralph-loop

Goal:
Map AstrologyAPI raw payloads into canonical ChartGraph entities.

In Scope:
- Implement normalization/mapping manager.
- Populate planets, houses, signs, nakshatras, padas, aspects, axes, timing.

Out of Scope:
- UI rendering.

Implementation Notes:
- Preserve raw-to-canonical traceability for debugging.

Files/Modules Expected:
- `AstroLens/Managers/ChartGraphNormalizer.swift`
- `AstroLens/Models/ChartGraph.swift`

Ralph Prompt:
"Implement a normalization pipeline that converts AstrologyAPI responses into the canonical ChartGraph used by scene and AI layers."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Normalizer populates all mandatory chart structures.
- ChartGraph output is stable for equivalent input.

Failure/Blocker Signals:
- Scene layer needs raw API fields directly.

### [T-DAT-006] [Data] Add data-layer unit tests for mapping and errors
Status: TODO
Priority: P0
DependsOn: [T-DAT-005]
Estimate: 50m
Owner: ralph-loop

Goal:
Add deterministic tests for normalizer correctness and failure handling.

In Scope:
- Golden-path payload to ChartGraph test.
- Missing/invalid field tests.
- Retry/error propagation tests.

Out of Scope:
- End-to-end UI tests.

Implementation Notes:
- Use fixture payloads with realistic sample chart values.

Files/Modules Expected:
- `AstroLensTests/ChartGraphNormalizerTests.swift`
- `AstroLensTests/AstrologyAPIClientTests.swift`

Ralph Prompt:
"Write comprehensive unit tests for API response normalization and client error paths using realistic chart fixtures."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/ChartGraphNormalizerTests`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/AstrologyAPIClientTests`

Definition of Done:
- Critical data-path tests pass consistently.
- Edge-case failures produce typed errors.

Failure/Blocker Signals:
- Tests depend on live network.

### [T-DAT-007] [Data] Wire validated input -> API -> ChartGraph load flow
Status: TODO
Priority: P0
DependsOn: [T-DAT-003, T-DAT-005]
Estimate: 45m
Owner: ralph-loop

Goal:
Connect onboarding submission to real chart fetch and chart viewer hydration.

In Scope:
- Trigger chart generation from validated birth input.
- Show loading state and transition to viewer with loaded ChartGraph.

Out of Scope:
- Advanced retry UX.

Implementation Notes:
- Keep side effects in manager/coordinator layer, not view structs.

Files/Modules Expected:
- `AstroLens/App/AppState.swift`
- `AstroLens/Views/Onboarding/ChartLoadingView.swift`
- `AstroLens/Managers/ChartLoadCoordinator.swift`

Ralph Prompt:
"Integrate onboarding flow so valid birth input fetches real chart data, normalizes it, updates AppState, and enters chart viewer."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- End-to-end loading path produces a populated chart viewer state.

Failure/Blocker Signals:
- Viewer opens with empty chart despite successful fetch.

### [T-DAT-008] [Data] Add secret and logging hardening for data path
Status: TODO
Priority: P1
DependsOn: [T-DAT-004, T-DAT-007]
Estimate: 35m
Owner: ralph-loop

Goal:
Prevent sensitive key/PII leakage through logs or source.

In Scope:
- Redact sensitive fields in logs.
- Validate secrets are read from secure runtime config.
- Add test/check script for accidental secret exposure.

Out of Scope:
- Enterprise key vault integration.

Implementation Notes:
- Include static repo scan command in verification.

Files/Modules Expected:
- `AstroLens/Services/AstrologyAPIClient.swift`
- `AstroLens/Config/Secrets.swift`
- `scripts/security_scan.sh`

Ralph Prompt:
"Harden data-layer security by removing sensitive logs, enforcing runtime secret loading, and adding a lightweight secret scan script."

Verification Commands:
- `cd /Users/mohankumarv/Desktop/Projects/Personal/Astrolens && bash scripts/security_scan.sh`
- `cd AstroLens && rg -n 'api[_-]?key|token' AstroLens/Services AstroLens/Config || true`

Definition of Done:
- No plain secrets in repository files.
- Security scan passes.

Failure/Blocker Signals:
- Secret values appear in tracked files.

### [T-VIZ-001] [Visualization] Implement angular math helper utilities
Status: TODO
Priority: P0
DependsOn: [T-DAT-001]
Estimate: 45m
Owner: ralph-loop

Goal:
Create deterministic math helpers for angular positions, arc divisions, orb exactness, and drishti targeting.

In Scope:
- Longitude normalization helpers.
- Ring division helpers (12/27/108).
- Aspect exactness score function.
- Drishti target computations.

Out of Scope:
- Rendering code.

Implementation Notes:
- Functions should be pure and heavily unit-tested.

Files/Modules Expected:
- `AstroLens/Utilities/MathHelpers.swift`
- `AstroLensTests/MathHelpersTests.swift`

Ralph Prompt:
"Implement pure math utilities for ring divisions, angle normalization, aspect exactness, and Vedic drishti geometry with unit tests."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/MathHelpersTests`

Definition of Done:
- Math helper tests pass and cover edge values (0/360 wrap, orb limits).

Failure/Blocker Signals:
- Rendering code contains duplicated angle math.

### [T-VIZ-002] [Visualization] Build shared ARView container abstraction
Status: TODO
Priority: P0
DependsOn: [T-FND-002]
Estimate: 40m
Owner: ralph-loop

Goal:
Provide a shared view container that can host AR and non-AR scene modes.

In Scope:
- Wrap `ARView` for SwiftUI.
- Expose configuration hook for camera passthrough on/off.

Out of Scope:
- Plane detection and anchoring logic.

Implementation Notes:
- Keep lifecycle and scene bootstrapping idempotent.

Files/Modules Expected:
- `AstroLens/AR/ARViewContainer.swift`

Ralph Prompt:
"Create ARViewContainer to host the same scene in AR and non-AR contexts with a clean SwiftUI interface."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Container compiles and can render placeholder scene in both modes.

Failure/Blocker Signals:
- Separate duplicate containers for AR and non-AR paths.

### [T-VIZ-003] [Visualization] Build GrandClock scene root and layer anchors
Status: TODO
Priority: P0
DependsOn: [T-VIZ-001, T-VIZ-002, T-DAT-002]
Estimate: 55m
Owner: ralph-loop

Goal:
Create root scene and depth hierarchy for grand clock layers.

In Scope:
- Root anchor and ring parent entities.
- Depth offsets for houses/signs/nakshatras/padas/planets/transits.

Out of Scope:
- Individual ring geometry details.

Implementation Notes:
- Match depth grammar from Vedic AR spec.

Files/Modules Expected:
- `AstroLens/Scene/GrandClockScene.swift`

Ralph Prompt:
"Implement GrandClockScene root with deterministic layer anchors and depth offsets for all ring/planet/transit layers."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Scene root loads with expected child anchor layout.

Failure/Blocker Signals:
- Layer depths hardcoded in multiple files.

### [T-VIZ-004] [Visualization] Implement ring geometries and zoom-gated granularity
Status: TODO
Priority: P0
DependsOn: [T-VIZ-003]
Estimate: 60m
Owner: ralph-loop

Goal:
Render ecliptic/house/sign/nakshatra/pada rings with appropriate geometry and visibility rules.

In Scope:
- Build ring entities programmatically.
- Add zoom thresholds to reveal pada ring.

Out of Scope:
- Tap interactions.

Implementation Notes:
- No USDZ assets; use generated mesh/materials only.

Files/Modules Expected:
- `AstroLens/Scene/EclipticRing.swift`
- `AstroLens/Scene/HouseRing.swift`
- `AstroLens/Scene/SignRing.swift`
- `AstroLens/Scene/NakshatraRing.swift`
- `AstroLens/Scene/PadaRing.swift`

Ralph Prompt:
"Implement programmatic ring entities for all chart layers and enforce zoom-gated pada visibility for progressive reveal."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- All ring entities appear in scene with correct relative depth.
- Pada ring is hidden by default and visible on zoom threshold.

Failure/Blocker Signals:
- Ring layer visibility not controllable by zoom state.

### [T-VIZ-005] [Visualization] Render planets, conjunctions, aspects, and drishti
Status: TODO
Priority: P0
DependsOn: [T-VIZ-004, T-DAT-002]
Estimate: 60m
Owner: ralph-loop

Goal:
Implement core chart relationship visuals across planets and beams.

In Scope:
- Planet nodes at exact longitudes, height by strength.
- Conjunction cluster detection and merged glow.
- Aspect beams with exactness-based opacity/width.
- Drishti arcs for Vedic rules.

Out of Scope:
- Detail sheets and user interactions.

Implementation Notes:
- Keep geometry updates driven by ChartGraph changes.

Files/Modules Expected:
- `AstroLens/Scene/PlanetNode.swift`
- `AstroLens/Scene/ConjunctionCluster.swift`
- `AstroLens/Scene/AspectBeam.swift`
- `AstroLens/Scene/DrishtiArc.swift`

Ralph Prompt:
"Implement planet nodes and relationship visuals (conjunctions, aspects, drishti) driven by exact chart geometry and ChartGraph state."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Planets and relationship beams render and update from chart data.

Failure/Blocker Signals:
- Relationship rendering uses static mock constants unrelated to chart.

### [T-VIZ-006] [Visualization] Add axes, nodal spine, dasha ring, and transit halo
Status: TODO
Priority: P0
DependsOn: [T-VIZ-005]
Estimate: 55m
Owner: ralph-loop

Goal:
Complete remaining core scene entities for timing and polar structure.

In Scope:
- Axis rods (1-7, 4-10) and nodal spine.
- Dasha inner ring and hand.
- Transit halo outer layer.

Out of Scope:
- Scrubber and playback controls.

Implementation Notes:
- Ensure natal and transit layers are visually distinct.

Files/Modules Expected:
- `AstroLens/Scene/AxisRod.swift`
- `AstroLens/Scene/NodalSpine.swift`
- `AstroLens/Scene/DashaRing.swift`
- `AstroLens/Scene/TransitHalo.swift`

Ralph Prompt:
"Implement structural/timing entities (axes, nodal spine, dasha, transit halo) with clear natal-vs-transit visual separation."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- All listed entities render and respond to chart timing state.

Failure/Blocker Signals:
- Natal/transit visuals are indistinguishable.

### [T-VIZ-007] [Visualization] Implement resonance field mesh
Status: TODO
Priority: P1
DependsOn: [T-VIZ-005, T-VIZ-001]
Estimate: 60m
Owner: ralph-loop

Goal:
Generate resonance field mesh from chart strengths using documented formula.

In Scope:
- Implement field strength calculation.
- Build mesh vertices and material.
- Add toggle integration for visibility.

Out of Scope:
- Advanced optimization.

Implementation Notes:
- Follow formula from Rork key implementation note #9.

Files/Modules Expected:
- `AstroLens/Scene/ResonanceField.swift`

Ralph Prompt:
"Implement the resonance field mesh generator using shadbala-weighted influence formula and render it as a toggleable scene layer."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Resonance mesh appears and changes with chart data.

Failure/Blocker Signals:
- Mesh is static and unrelated to chart strengths.

### [T-VIZ-008] [Visualization] Integrate full scene and baseline performance checks
Status: TODO
Priority: P0
DependsOn: [T-VIZ-006, T-VIZ-007]
Estimate: 45m
Owner: ralph-loop

Goal:
Compose all scene entities and establish baseline performance metrics.

In Scope:
- End-to-end scene assembly path.
- Add debug performance probes (fps, frame time).

Out of Scope:
- Final optimization campaign.

Implementation Notes:
- Capture baseline numbers as comparison anchor.

Files/Modules Expected:
- `AstroLens/Scene/GrandClockScene.swift`
- `AstroLens/Utilities/PerformanceMetrics.swift`

Ralph Prompt:
"Compose the complete Grand Clock scene and record baseline render performance metrics for future optimization gates."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Scene loads end-to-end without missing entities.
- Baseline performance metrics are recorded.

Failure/Blocker Signals:
- Scene load crashes or severe frame instability.

### [T-INT-001] [Interaction] Build chart overlay control shell and routing
Status: TODO
Priority: P0
DependsOn: [T-VIZ-003, T-FND-003]
Estimate: 45m
Owner: ralph-loop

Goal:
Create overlay UI controls and route interaction events to scene and sheets.

In Scope:
- Build top/bottom controls and action bindings.
- Route taps to proper detail sheet presenters.

Out of Scope:
- Detailed sheet content.

Implementation Notes:
- Keep view model/coordinator boundary explicit.

Files/Modules Expected:
- `AstroLens/Views/ChartViewer/ChartOverlayUI.swift`
- `AstroLens/Views/ChartViewer/ChartViewerContainer.swift`

Ralph Prompt:
"Implement the Chart Overlay UI controls and route interaction intents through a coordinator/view-model path."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Overlay controls compile and trigger routed actions.

Failure/Blocker Signals:
- Overlay directly mutates scene entities without coordination layer.

### [T-INT-002] [Interaction] Implement causal reveal for planet/house/axis selection
Status: TODO
Priority: P0
DependsOn: [T-INT-001, T-VIZ-006]
Estimate: 60m
Owner: ralph-loop

Goal:
Implement the tap-or-ask causal chain isolation behavior.

In Scope:
- Selection focus pipeline for planet/house/axis.
- Highlight active entity, connected chain, and dim background.
- Enforce opacity policy and activation glow.

Out of Scope:
- AI-generated textual explanations.

Implementation Notes:
- Must follow beginner-first one-focus-at-a-time principle.

Files/Modules Expected:
- `AstroLens/Managers/SelectionFocusManager.swift`
- `AstroLens/Scene/GrandClockScene.swift`

Ralph Prompt:
"Implement causal reveal selection behavior: isolate selected entity's chain, dim unrelated entities, and visually prioritize active relationships."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Planet/house/axis taps consistently isolate relevant causal chain.

Failure/Blocker Signals:
- Selection reveals all scene complexity at once.

### [T-INT-003] [Interaction] Implement detail sheets for planet, house, and axis
Status: TODO
Priority: P1
DependsOn: [T-INT-002]
Estimate: 50m
Owner: ralph-loop

Goal:
Add detail sheets with structured explanatory content for selected entities.

In Scope:
- Planet detail sheet with Actor -> Stage -> Style -> Pattern sections.
- House and axis detail sheet structures.
- Dasha status and aspect lists in sheet content.

Out of Scope:
- Free-form AI chat UI.

Implementation Notes:
- Content should be tied to selected chart data, not static text.

Files/Modules Expected:
- `AstroLens/Views/ChartViewer/PlanetDetailSheet.swift`
- `AstroLens/Views/ChartViewer/HouseDetailSheet.swift`
- `AstroLens/Views/ChartViewer/AxisDetailSheet.swift`

Ralph Prompt:
"Implement data-driven entity detail sheets for planet, house, and axis selections using the documented explanatory schema."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Each entity type opens correct sheet with chart-derived values.

Failure/Blocker Signals:
- Sheet content is static or inconsistent with selected entity.

### [T-INT-004] [Interaction] Add gesture controls and interaction regression tests
Status: TODO
Priority: P1
DependsOn: [T-INT-003]
Estimate: 55m
Owner: ralph-loop

Goal:
Support pinch zoom and rotation gestures with regression coverage.

In Scope:
- Pinch-to-zoom and two-finger rotate bindings.
- Add regression tests for interaction state transitions.

Out of Scope:
- AR plane gestures.

Implementation Notes:
- Preserve user orientation and avoid abrupt camera jumps.

Files/Modules Expected:
- `AstroLens/Views/ChartViewer/ChartViewerContainer.swift`
- `AstroLensTests/InteractionFlowTests.swift`

Ralph Prompt:
"Implement chart zoom/rotate gestures and add regression tests to prevent interaction behavior regressions."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/InteractionFlowTests`

Definition of Done:
- Gestures work reliably and tests pass.

Failure/Blocker Signals:
- Gesture changes break selection focus behavior.

### [T-WLK-001] [Walkthrough] Define walkthrough state machine and script model
Status: TODO
Priority: P0
DependsOn: [T-VIZ-003, T-DAT-002]
Estimate: 45m
Owner: ralph-loop

Goal:
Create formal walkthrough state machine and data model to drive scene choreography.

In Scope:
- `WalkthroughState` enum and progression rules.
- Script data structures tied to chart data placeholders.

Out of Scope:
- Full animation implementation.

Implementation Notes:
- Keep pause/skip/next transitions explicit and testable.

Files/Modules Expected:
- `AstroLens/AI/WalkthroughScript.swift`
- `AstroLens/Managers/WalkthroughStateMachine.swift`

Ralph Prompt:
"Model walkthrough as a strict state machine with typed script content so animation and UI controls can consume deterministic state."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- State machine includes all required walkthrough steps and transitions.

Failure/Blocker Signals:
- Walkthrough order encoded as ad-hoc conditionals.

### [T-WLK-002] [Walkthrough] Implement scene animator and walkthrough overlay controls
Status: TODO
Priority: P0
DependsOn: [T-WLK-001, T-VIZ-008]
Estimate: 60m
Owner: ralph-loop

Goal:
Animate self-assembly walkthrough and connect controls (next/pause/skip/auto).

In Scope:
- Scene animation sequencing per walkthrough state.
- Overlay control UI and timing.
- Auto-advance behavior with user interrupt support.

Out of Scope:
- Live voice synthesis.

Implementation Notes:
- Align choreography with `self-assembly-walkthrough.md` narrative order.

Files/Modules Expected:
- `AstroLens/Scene/SceneAnimator.swift`
- `AstroLens/Views/ChartViewer/WalkthroughOverlay.swift`

Ralph Prompt:
"Implement the guided self-assembly walkthrough animator and overlay controls, including auto-advance and interrupt-safe pause/skip behavior."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Walkthrough runs from first step to open exploration without manual patching.

Failure/Blocker Signals:
- State and scene animation fall out of sync.

### [T-WLK-003] [Walkthrough] Add walkthrough regression and completion tests
Status: TODO
Priority: P1
DependsOn: [T-WLK-002]
Estimate: 40m
Owner: ralph-loop

Goal:
Protect walkthrough behavior from regressions.

In Scope:
- Test next/pause/skip/auto transitions.
- Test entry to post-walkthrough free exploration mode.

Out of Scope:
- UI snapshot tests.

Implementation Notes:
- Mock timing to keep tests deterministic.

Files/Modules Expected:
- `AstroLensTests/WalkthroughStateMachineTests.swift`
- `AstroLensTests/SceneAnimatorTests.swift`

Ralph Prompt:
"Create deterministic walkthrough tests covering transition correctness, control behavior, and successful handoff to free exploration mode."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/WalkthroughStateMachineTests`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/SceneAnimatorTests`

Definition of Done:
- Walkthrough test suite passes and catches invalid transitions.

Failure/Blocker Signals:
- Walkthrough can enter impossible state path.

### [T-TIM-001] [Time] Build timeline scrubber UI and state bindings
Status: TODO
Priority: P0
DependsOn: [T-INT-001, T-DAT-002]
Estimate: 50m
Owner: ralph-loop

Goal:
Implement bottom timeline scrubber with collapsed and expanded states.

In Scope:
- Clock-icon collapsed state.
- Expanded bar with date handle and labels.
- Bind scrubber to `transitDate` in ChartGraph.

Out of Scope:
- Timelapse autoplay logic.

Implementation Notes:
- Keep interactions smooth and reversible.

Files/Modules Expected:
- `AstroLens/Views/ChartViewer/TimelineScrubber.swift`
- `AstroLens/Models/ChartGraph.swift`

Ralph Prompt:
"Implement timeline scrubber UI with collapsed/expanded behavior and binding to ChartGraph transitDate state."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Scrubber updates date state and displays formatted date label.

Failure/Blocker Signals:
- Scrubber UI does not control chart timing state.

### [T-TIM-002] [Time] Recompute transit layer and timing visuals during scrub
Status: TODO
Priority: P0
DependsOn: [T-TIM-001, T-VIZ-006]
Estimate: 55m
Owner: ralph-loop

Goal:
Update transit nodes, dasha hand, and related beams as scrub date changes.

In Scope:
- Transit position recomputation on drag.
- Dasha hand updates on active period changes.
- Transit-to-natal aspect updates.

Out of Scope:
- Marker pulse effects.

Implementation Notes:
- Use interpolated state to avoid jank.

Files/Modules Expected:
- `AstroLens/Managers/TransitEngine.swift`
- `AstroLens/Scene/TransitHalo.swift`
- `AstroLens/Scene/DashaRing.swift`

Ralph Prompt:
"Implement real-time scrub behavior so transit positions, dasha timing, and active transit aspects update continuously with date changes."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Scene reflects continuous transit changes during scrub.

Failure/Blocker Signals:
- Scrub causes visible stutter or stale transit state.

### [T-TIM-003] [Time] Implement timelapse playback and key-moment markers
Status: TODO
Priority: P1
DependsOn: [T-TIM-002]
Estimate: 55m
Owner: ralph-loop

Goal:
Implement automated time playback and highlight major life timing events.

In Scope:
- Play/pause timelapse with speed controls.
- Add markers for Saturn return, Jupiter return, nodal cycles, dasha transitions.
- Pulse events during playback.

Out of Scope:
- AI commentary content.

Implementation Notes:
- Maintain orientation with natal anchor always visible.

Files/Modules Expected:
- `AstroLens/Managers/TimelapseController.swift`
- `AstroLens/Views/ChartViewer/TimelineScrubber.swift`

Ralph Prompt:
"Build timelapse playback with speed controls and key-life-event markers/pulses while keeping natal chart visually anchored."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Timelapse runs linearly and markers appear at configured events.

Failure/Blocker Signals:
- Playback desynchronizes transit visuals from time label.

### [T-AR-001] [Scale+AR] Implement scale mode manager for Palm/Desk/Room/Dome
Status: TODO
Priority: P0
DependsOn: [T-VIZ-008]
Estimate: 50m
Owner: ralph-loop

Goal:
Support four scale modes with stable scene transforms.

In Scope:
- Add scale mode enum/state.
- Implement transform presets for each mode.
- Wire mode switching controls.

Out of Scope:
- AR plane anchoring.

Implementation Notes:
- Keep interaction grammar consistent across modes.

Files/Modules Expected:
- `AstroLens/AR/ScaleModeManager.swift`
- `AstroLens/Views/ChartViewer/ChartOverlayUI.swift`

Ralph Prompt:
"Implement Palm/Desk/Room/Dome scale mode manager and switch controls with stable transform transitions."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Mode changes update scene scale without breaking interaction controls.

Failure/Blocker Signals:
- Mode switch resets scene state unexpectedly.

### [T-AR-002] [Scale+AR] Implement AR anchoring and non-AR fallback parity
Status: TODO
Priority: P0
DependsOn: [T-AR-001, T-VIZ-002]
Estimate: 60m
Owner: ralph-loop

Goal:
Support AR plane placement with first-surface anchoring and equivalent non-AR 3D viewer fallback.

In Scope:
- Horizontal plane detection and initial anchor placement.
- Non-AR render path with same scene and controls.
- Fallback logic when AR unavailable.

Out of Scope:
- Multi-anchor scene persistence.

Implementation Notes:
- Same scene graph should back both AR and non-AR modes.

Files/Modules Expected:
- `AstroLens/AR/ARSessionManager.swift`
- `AstroLens/AR/ARViewContainer.swift`

Ralph Prompt:
"Implement AR horizontal-plane anchoring plus non-AR fallback mode with equivalent scene behavior and controls."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- AR mode anchors on detected surface.
- Non-AR mode still supports exploration and interaction.

Failure/Blocker Signals:
- Separate scene implementations diverge by mode.

### [T-AR-003] [Scale+AR] Implement sky alignment, calibration, and celestial mapping
Status: TODO
Priority: P0
DependsOn: [T-AR-002, T-VIZ-001, T-TIM-002]
Estimate: 60m
Owner: ralph-loop

Goal:
Establish a stable sky reference so the app can align overlays to the real sky instead of only a detected surface.

In Scope:
- Add device-orientation, heading, and location-based sky alignment pipeline.
- Implement calibration flow for heading accuracy and horizon alignment.
- Map transit and chart positions into a sky-anchored celestial coordinate frame.
- Detect low-confidence sensor state and expose fallback/unavailable state.

Out of Scope:
- Star recognition from camera imagery.
- Deep-sky object catalog rendering.

Implementation Notes:
- Keep alignment logic separate from scene rendering so the same chart entities can be reused in surface AR and Sky Mode.

Files/Modules Expected:
- `AstroLens/AR/SkyAlignmentManager.swift`
- `AstroLens/Managers/CelestialCoordinateMapper.swift`
- `AstroLens/Views/ChartViewer/SkyCalibrationOverlay.swift`

Ralph Prompt:
"Implement a sky-alignment pipeline that uses device heading, orientation, location, and calibration state to anchor chart overlays to the real sky with confidence-aware fallback behavior."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- The app can derive a sky reference frame from device state.
- Calibration flow can mark alignment ready, degraded, or unavailable.

Failure/Blocker Signals:
- Sky overlay drifts visibly with small device motion.
- No fallback state exists for poor heading/location accuracy.

### [T-AR-004] [Scale+AR] Implement Sky Mode real-world sky overlay
Status: TODO
Priority: P0
DependsOn: [T-AR-003, T-VIZ-006, T-INT-001]
Estimate: 60m
Owner: ralph-loop

Goal:
Let the user point the device at the actual sky and see current planets and chart relationships visualized in place at full scale.

In Scope:
- Add an explicit `Sky Mode` entry point/toggle in the chart viewer.
- Render sky-anchored transit planets and chart relationship overlays in camera view.
- Visually distinguish current sky positions from natal/chart-reference overlays.
- Support a full-scale viewing mode optimized for outdoor use and upward pointing.
- Show clear guidance when the sky view is unavailable or calibration is degraded.

Out of Scope:
- Photorealistic planet textures.
- Constellation art or star-map product expansion.

Implementation Notes:
- Prioritize transit layer alignment to the real sky while keeping natal/reference geometry readable and non-confusing.

Files/Modules Expected:
- `AstroLens/AR/SkyModeSceneCoordinator.swift`
- `AstroLens/Views/ChartViewer/SkyModeOverlay.swift`
- `AstroLens/Views/ChartViewer/ChartOverlayUI.swift`
- `AstroLens/AR/ARViewContainer.swift`

Ralph Prompt:
"Implement Sky Mode so pointing the device at the real sky shows sky-aligned transit planets and chart overlays, with clear distinction between live sky objects and chart-reference geometry."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- A user can enter Sky Mode and see sky-aligned overlays rather than only surface-anchored content.
- The mode communicates degraded accuracy or unavailable conditions instead of silently misaligning.

Failure/Blocker Signals:
- Sky Mode reuses tabletop anchoring instead of celestial alignment.
- Live sky and natal/reference overlays are visually indistinguishable.

### [T-CFG-001] [Settings+Lenses] Implement settings screen and persisted preferences
Status: TODO
Priority: P1
DependsOn: [T-FND-003, T-FND-004]
Estimate: 45m
Owner: ralph-loop

Goal:
Build settings surface for system, scale, walkthrough speed, haptics, and layer toggles.

In Scope:
- Add settings controls per spec.
- Persist user preferences between launches.

Out of Scope:
- Advanced account settings.

Implementation Notes:
- Keep defaults beginner-friendly.

Files/Modules Expected:
- `AstroLens/Views/Settings/SettingsView.swift`
- `AstroLens/App/AppState.swift`

Ralph Prompt:
"Implement the settings view with persisted preferences for astrology system, scale mode, layer toggles, walkthrough speed, and haptics."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Settings changes persist and are reflected by scene/UI behavior.

Failure/Blocker Signals:
- Settings values reset on relaunch.

### [T-CFG-002] [Settings+Lenses] Add Vedic/Western system switch architecture
Status: TODO
Priority: P1
DependsOn: [T-CFG-001, T-DAT-002]
Estimate: 50m
Owner: ralph-loop

Goal:
Implement architecture path for Vedic and Western system rendering through same engine.

In Scope:
- Add system mode enum and wiring through ChartGraph and rendering selectors.
- Keep shared geometry engine and swap rule sets.

Out of Scope:
- Full Western interpretive depth parity.

Implementation Notes:
- Avoid branching into separate mini-app flows.

Files/Modules Expected:
- `AstroLens/Models/ChartGraph.swift`
- `AstroLens/Managers/SystemModeManager.swift`
- `AstroLens/Scene/GrandClockScene.swift`

Ralph Prompt:
"Implement a shared-engine astrology system switch (Vedic/Western) that swaps rule sets without creating separate screen flows."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- System toggle propagates through app state and scene pipeline.

Failure/Blocker Signals:
- Separate rendering stacks created per system.

### [T-CFG-003] [Settings+Lenses] Implement D1/D9/D10 lens remapping and transitions
Status: TODO
Priority: P0
DependsOn: [T-CFG-001, T-DAT-002, T-VIZ-005]
Estimate: 55m
Owner: ralph-loop

Goal:
Implement divisional chart lenses as overlays/remaps on the same scene.

In Scope:
- Add `currentLens` behavior in ChartGraph.
- Remap planet positions for D1/D9/D10.
- Animate transition between lens states.

Out of Scope:
- D7/D4/D60 advanced lenses.

Implementation Notes:
- Lenses must not navigate away from chart viewer.

Files/Modules Expected:
- `AstroLens/Models/ChartGraph.swift`
- `AstroLens/Managers/LensManager.swift`
- `AstroLens/Views/ChartViewer/ChartOverlayUI.swift`

Ralph Prompt:
"Implement D1/D9/D10 lens switching as animated remapping over the same chart scene, with no screen changes."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Lens pills switch chart lens in place with smooth transitions.

Failure/Blocker Signals:
- Lens switch opens separate pages or resets walkthrough state.

### [T-AI-001] [AI Tutor] Define AI tool contract and dispatcher interfaces
Status: TODO
Priority: P0
DependsOn: [T-DAT-002, T-VIZ-008]
Estimate: 55m
Owner: ralph-loop

Goal:
Define inspectable tool-calling contract that controls scene through structured actions.

In Scope:
- Define tool schema for required commands (highlight/scrub/switch/play/etc).
- Add dispatcher interface and typed request/response objects.

Out of Scope:
- Provider networking.

Implementation Notes:
- All AI actions must route through explicit tool handlers.

Files/Modules Expected:
- `AstroLens/AI/AIToolContract.swift`
- `AstroLens/AI/AIToolDispatcher.swift`

Ralph Prompt:
"Define a typed AI tool-calling contract and dispatcher so conversational commands map to explicit scene/control actions."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Tool contract covers required interaction set from flagship spec.

Failure/Blocker Signals:
- AI can directly mutate scene without tool dispatch path.

### [T-AI-002] [AI Tutor] Implement realtime provider adapters
Status: TODO
Priority: P1
DependsOn: [T-AI-001]
Estimate: 60m
Owner: ralph-loop

Goal:
Add provider abstraction for OpenAI Realtime and Gemini Live integrations.

In Scope:
- Implement provider protocol and two adapters (feature-flag selectable).
- Add connection/session lifecycle management.

Out of Scope:
- Final production credentials provisioning.

Implementation Notes:
- Keep provider-specific code isolated from scene logic.

Files/Modules Expected:
- `AstroLens/AI/AIProviderProtocol.swift`
- `AstroLens/AI/OpenAIRealtimeAdapter.swift`
- `AstroLens/AI/GeminiLiveAdapter.swift`

Ralph Prompt:
"Implement AI provider abstraction with adapter implementations for OpenAI Realtime and Gemini Live behind a feature-flagged interface."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' build`

Definition of Done:
- Provider can be swapped without code changes outside AI layer.

Failure/Blocker Signals:
- Scene/view modules import provider SDK-specific logic directly.

### [T-AI-003] [AI Tutor] Implement scene-control tool handlers
Status: TODO
Priority: P0
DependsOn: [T-AI-001, T-INT-002, T-TIM-003, T-CFG-003]
Estimate: 60m
Owner: ralph-loop

Goal:
Bind AI tool calls to concrete scene and state actions.

In Scope:
- Implement handlers for highlight, compare layers, scrub/play/pause, switch lens/system/scale, explain selection.
- Return tool execution results for auditability.

Out of Scope:
- Natural language generation tuning.

Implementation Notes:
- Handlers must use same managers as direct UI interactions.

Files/Modules Expected:
- `AstroLens/AI/AIToolHandlers.swift`
- `AstroLens/AI/AITutorManager.swift`

Ralph Prompt:
"Implement AI tool handlers that execute through existing scene/state managers and return auditable execution results."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Tool calls consistently produce expected scene/state updates.

Failure/Blocker Signals:
- AI and manual UI actions diverge in behavior.

### [T-AI-004] [AI Tutor] Implement grounded explanation guardrails
Status: TODO
Priority: P0
DependsOn: [T-AI-003, T-DAT-005]
Estimate: 50m
Owner: ralph-loop

Goal:
Ensure tutor explanations are chart-grounded and beginner-first.

In Scope:
- Add response policy enforcing chart references and causal chain.
- Suppress unsupported claims and generic spiritual filler.
- Add confidence/fallback responses when data missing.

Out of Scope:
- Personality/style experimentation.

Implementation Notes:
- Guardrails should be testable via fixtures.

Files/Modules Expected:
- `AstroLens/AI/ResponseGuardrails.swift`
- `AstroLens/AI/AITutorManager.swift`

Ralph Prompt:
"Implement guardrails so tutor output is strictly chart-grounded, causal, beginner-friendly, and fails safely when context is missing."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Unsupported queries return safe/grounded fallback behavior.

Failure/Blocker Signals:
- AI returns interpretations without chart linkage.

### [T-AI-005] [AI Tutor] Add time-aware conversational intents
Status: TODO
Priority: P1
DependsOn: [T-AI-003, T-TIM-003]
Estimate: 50m
Owner: ralph-loop

Goal:
Handle time-focused user prompts by driving scrub/play/freeze/explain flows.

In Scope:
- Parse intents like "show my Saturn return" or "what happened in 2019".
- Execute scene time navigation and explanation sequence.

Out of Scope:
- Voice-only UI controls.

Implementation Notes:
- Ensure time jumps preserve user orientation.

Files/Modules Expected:
- `AstroLens/AI/TimeIntentRouter.swift`
- `AstroLens/AI/AITutorManager.swift`

Ralph Prompt:
"Implement time-aware AI intents that navigate chart time, freeze relevant moments, and explain active causal chains."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Time intents invoke correct tool sequence and scene updates.

Failure/Blocker Signals:
- Time intent triggers text response without scene control.

### [T-AI-006] [AI Tutor] Add AI integration, safety, and privacy test suite
Status: TODO
Priority: P0
DependsOn: [T-AI-004, T-AI-005, T-DAT-008]
Estimate: 55m
Owner: ralph-loop

Goal:
Validate AI behavior, tool execution safety, and privacy constraints.

In Scope:
- Test tool dispatch correctness.
- Test guardrail behavior on risky prompts.
- Test no secrets/PII leak into logs/prompt traces.

Out of Scope:
- Load testing.

Implementation Notes:
- Use mocked providers for deterministic tests.

Files/Modules Expected:
- `AstroLensTests/AIToolHandlerTests.swift`
- `AstroLensTests/ResponseGuardrailTests.swift`
- `AstroLensTests/PrivacyRedactionTests.swift`

Ralph Prompt:
"Create deterministic AI integration tests covering tool correctness, guardrail compliance, and privacy/redaction safety."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/AIToolHandlerTests`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/ResponseGuardrailTests`
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test -only-testing:AstroLensTests/PrivacyRedactionTests`

Definition of Done:
- AI safety/privacy test suite passes.

Failure/Blocker Signals:
- Tests detect unredacted sensitive values.

### [T-QLT-001] [Quality] Build end-to-end smoke test flow
Status: TODO
Priority: P0
DependsOn: [T-AI-006]
Estimate: 60m
Owner: ralph-loop

Goal:
Validate flagship happy path from onboarding to conversational exploration.

In Scope:
- Add smoke test scenario covering: input -> chart load -> walkthrough -> free exploration -> AI question.
- Add execution script for CI/manual runs.

Out of Scope:
- Full UI automation matrix.

Implementation Notes:
- Keep smoke scenario stable and deterministic.

Files/Modules Expected:
- `AstroLensTests/FlagshipSmokeTests.swift`
- `scripts/run_smoke_tests.sh`

Ralph Prompt:
"Implement a deterministic flagship smoke test that validates the complete user journey from onboarding through AI-guided exploration."

Verification Commands:
- `cd /Users/mohankumarv/Desktop/Projects/Personal/Astrolens && bash scripts/run_smoke_tests.sh`

Definition of Done:
- Smoke test script passes locally and can run in CI.

Failure/Blocker Signals:
- Smoke path requires manual patching between steps.

### [T-QLT-002] [Quality] Performance profiling and optimization pass
Status: TODO
Priority: P1
DependsOn: [T-QLT-001, T-VIZ-008]
Estimate: 60m
Owner: ralph-loop

Goal:
Meet baseline performance targets for premium interaction quality.

In Scope:
- Profile frame pacing, memory, launch time, and scrubbing smoothness.
- Apply targeted optimizations where thresholds are missed.

Out of Scope:
- Device matrix benchmarking across all hardware tiers.

Implementation Notes:
- Document before/after metrics.

Files/Modules Expected:
- `Docs/performance-baseline.md`
- `AstroLens/Utilities/PerformanceMetrics.swift`

Ralph Prompt:
"Run a focused performance pass for scene rendering and time traversal, then document baseline metrics and improvements."

Verification Commands:
- `cd AstroLens && xcodebuild -scheme AstroLens -destination 'platform=iOS Simulator,name=iPhone 16' test`

Definition of Done:
- Performance baseline doc updated with measured results.

Failure/Blocker Signals:
- Timelapse or scrub remains visibly stuttery after fixes.

### [T-QLT-003] [Quality] Security and privacy hardening review
Status: TODO
Priority: P0
DependsOn: [T-QLT-001, T-DAT-008, T-AI-006]
Estimate: 50m
Owner: ralph-loop

Goal:
Perform final security/privacy review for API, AI, and telemetry paths.

In Scope:
- Verify secret handling and log redaction.
- Verify no unsafe prompt/response persistence.
- Add security checklist artifact.

Out of Scope:
- External penetration test.

Implementation Notes:
- Focus on practical high-risk leakage points.

Files/Modules Expected:
- `Docs/security-checklist.md`
- `scripts/security_scan.sh`

Ralph Prompt:
"Run final security/privacy hardening checks for AstrologyAPI and AI paths and produce a concrete security checklist artifact."

Verification Commands:
- `cd /Users/mohankumarv/Desktop/Projects/Personal/Astrolens && bash scripts/security_scan.sh`
- `cd /Users/mohankumarv/Desktop/Projects/Personal/Astrolens && rg -n 'TODO.*security|FIXME.*security' Docs AstroLens || true`

Definition of Done:
- Security checklist completed and scans clean.

Failure/Blocker Signals:
- Sensitive values or raw user birth data visible in logs.

### [T-QLT-004] [Quality] Final docs and changelog closeout
Status: TODO
Priority: P0
DependsOn: [T-QLT-001, T-QLT-002, T-QLT-003]
Estimate: 40m
Owner: ralph-loop

Goal:
Close milestone with updated architecture and release-facing documentation.

In Scope:
- Update architecture doc with actual module responsibilities and data flow.
- Update changelog with milestone completion notes.
- Summarize known tech debt and follow-up backlog items.

Out of Scope:
- Marketing docs.

Implementation Notes:
- Keep docs aligned with implemented behavior, not aspirational copy.

Files/Modules Expected:
- `ARCHITECTURE.md`
- `CHANGELOG.md`
- `Docs/release-readiness.md`

Ralph Prompt:
"Finalize technical documentation and changelog so architecture, delivered scope, and known debt are explicit and implementation-accurate."

Verification Commands:
- `cd /Users/mohankumarv/Desktop/Projects/Personal/Astrolens && test -f ARCHITECTURE.md`
- `cd /Users/mohankumarv/Desktop/Projects/Personal/Astrolens && test -f CHANGELOG.md`

Definition of Done:
- Architecture and changelog documents are updated and internally consistent.

Failure/Blocker Signals:
- Docs contradict current implementation behavior.

## Deferred / Future Expansion
Deferred items are tracked but not executable in the initial active loop.

| Deferred ID | Item | Source | Reason Deferred |
|---|---|---|---|
| D-001 | Deeper divisional chart coverage beyond D1/D9/D10 (D7/D4/D60 etc.) | Flagship §25; Vedic AR spec | Keep flagship scope focused on core lens set |
| D-002 | Social sharing of chart walkthrough moments | Flagship §25 | Not on core comprehension path |
| D-003 | Western + Vedic expansion depth (advanced parity) | Flagship §25 | Initial system switch first, deeper parity later |
| D-004 | Expert mode | Flagship §25 | Beginner-first promise takes precedence |
| D-005 | Creator mode / content export | Flagship §25 | Non-core for v1 comprehension moat |
| D-006 | Synastry / compatibility layers | Flagship §25 | Post-core expansion |
| D-007 | Live voice commands | Rork "what not to build" | AI text/tool integration prioritized first |
| D-008 | Push notifications | Rork "what not to build" | Not required for flagship core loop |
| D-009 | User accounts / authentication | Rork "what not to build" | Not required for first comprehension experience |
| D-010 | In-app purchases | Rork "what not to build" | Monetization deferred until core retention validated |

Notes:
- `Real AstrologyAPI integration` and `Real AI tutor` are not deferred because this plan explicitly overrides Rork MVP-only constraints with flagship build-now scope.

## Risks / Blockers
| Risk ID | Risk | Impact | Mitigation | Status |
|---|---|---|---|---|
| R-001 | Spec conflict: Rork mock-data-first vs flagship real integrations | Scope ambiguity and rework | Scope lock documented in Source Specs and deferred notes | Open |
| R-002 | Performance risk with dense RealityKit scene layers | Frame drops and poor UX | M2/M5 performance gates and profiling tasks | Open |
| R-003 | API and AI secret leakage risk | Security/privacy incident | T-DAT-008, T-AI-006, T-QLT-003 hardening tasks | Open |
| R-004 | Timezone/place normalization inaccuracies | Wrong chart output and trust loss | Strong input validation + normalization tests | Open |
| R-005 | Provider instability/cost across AI backends | Feature outages or cost spikes | Adapter abstraction + fallback strategy | Open |
| R-006 | AR unavailable or unstable on some devices | Broken hero flow | Non-AR parity path in T-AR-002 | Open |
| R-007 | Architecture instruction mismatch (generic web stack vs iOS-native specs) | Team confusion | Treat iOS specs as product source of truth for this plan | Open |
| R-008 | Compass drift, magnetic interference, or poor location accuracy breaks sky alignment | Users lose trust in Sky Mode | Calibration flow, confidence states, and explicit fallback messaging in T-AR-003/T-AR-004 | Open |

Blocker Update Template:
- `YYYY-MM-DD | TASK-ID | blocker summary | proposed unblock action | owner`

## Change Log for Task Plan
- 2026-03-29: Initial `tasks.md` created from flagship spec, Rork prompt, and supporting visualization/walkthrough/math docs.
- 2026-03-29: Applied scope override to include real AstrologyAPI and live AI tutor in active execution track.
- 2026-03-29: Added milestone gates (M0-M5), traceability map, Ralph loop protocol, deferred backlog, and risk register.
- 2026-03-29: Added active `Sky Mode` scope with sky-alignment and real-world sky overlay tasks to support pointing the device at the actual sky.
