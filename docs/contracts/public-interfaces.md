# Public Interface Freeze Targets

This document names the first contracts to freeze before parallel implementation begins. It is not implementation source yet; it is the coordination boundary for Phase 1.

## `ChartGraph`

Purpose: canonical chart state consumed by app UI, RealityKit scene builders, interaction logic, and AI tutor tooling.

Minimum expected fields:

- ascendant and axes,
- planets with longitude, sign, house, nakshatra, pada, color, and strength,
- houses and sign overlays,
- aspects and Vedic drishti,
- dasha period state,
- transit state,
- selected lens and selected/focused element.

## `BirthInput`

Purpose: validated user input contract before API normalization.

Minimum expected fields:

- date of birth,
- time of birth,
- place query or selected place,
- latitude,
- longitude,
- timezone,
- astrology system,
- house system where relevant,
- Vedic ayanamsa where relevant.

## AstrologyAPI Normalization

Purpose: isolate provider response shapes from app internals.

Rules:

- Provider responses normalize into `ChartGraph` before scene/UI/AI use.
- Provider credentials are never committed.
- Provider errors are mapped to user-safe states and developer-safe logs.

## `GrandClockScene`

Purpose: RealityKit scene boundary for the 3D/AR product surface.

Expected inputs:

- normalized chart graph,
- scale mode,
- lens mode,
- timeline/transit date,
- focused scene element,
- walkthrough state.

Expected commands:

- highlight planet,
- highlight house,
- highlight axis,
- set lens,
- set scale mode,
- scrub time,
- advance walkthrough step,
- reset focus.

## `AITutor`

Purpose: grounded visual tutor that explains and controls the scene.

Rules:

- AI does not calculate astrology.
- AI uses chart graph facts and tool calls only.
- Tool handlers must be testable without a live model.
- Time-aware answers must reflect app timing state and normalized transit/dasha data.

