# AstroLens — Agent Guide

> **Project Type:** iOS AR Application (Specification Phase)  
> **Platform:** iPhone (iOS 17+)  
> **Language:** Swift (SwiftUI + RealityKit + ARKit)  

---

## 1. Project Overview

**AstroLens** is an iPhone-first AR astrology application that transforms birth charts into living, navigable 3D visualizations. The product's core promise is enabling anyone—even those with zero astrology knowledge—to visually understand their chart through immersive spatial computing.

### Brand Identity
- **Name:** AstroLens
- **Tagline:** "See Astrology in AR"
- **Tone:** Premium, futuristic, mystical-tech, visually elegant
- **NOT:** Fortune-teller aesthetic, tacky spirituality, generic horoscope apps

### Product Moat
The competitive advantage is **spatial visualization + guided causal walkthroughs + conversational AI tutoring**—not chart calculation. Most astrology apps show dense static charts or text-heavy interpretations. AstroLens teaches visual intuition through immersive, interactive exploration.

---

## 2. Technology Stack

| Layer | Technology | Purpose |
|-------|------------|---------|
| App Shell / UI | SwiftUI | Navigation, onboarding, settings, overlay UI |
| 3D / AR Rendering | RealityKit | Grand clock visualization, rings, planets, beams |
| World Tracking | ARKit | Surface detection, plane anchoring, spatial placement |
| State Management | Combine | Reactive data flow between UI and scene |
| Chart Calculation | AstrologyAPI | External structured data provider (not the moat) |
| Conversational AI | Gemini Live or OpenAI Realtime | Visual tutor via tool-calling (never calculates astrology) |
| Build Acceleration | Codex, Claude Code, Rork Max | AI-assisted development workflows |

### Key Technical Principles
1. **No third-party packages**—use only Apple frameworks
2. **iOS 17+ APIs only**—modern Swift features, no legacy compatibility
3. **Programmatic RealityKit entities**—no USDZ assets, build meshes procedurally
4. **Single source of truth**—`ChartGraph` ObservableObject holds all chart state

---

## 3. Project Structure

```
AstroLens/                          # (To be created when building)
├── App/
│   ├── AstroLensApp.swift          # @main entry point
│   └── AppState.swift              # Global ObservableObject state
├── Models/
│   ├── ChartGraph.swift            # Canonical chart data model (source of truth)
│   ├── Planet.swift                # Planet enum + properties
│   ├── House.swift                 # House model
│   ├── Sign.swift                  # Zodiac sign enum + elemental colors
│   ├── Nakshatra.swift             # 27 nakshatras
│   ├── Pada.swift                  # 108 padas
│   ├── Aspect.swift                # Aspect relationships (angular separation)
│   ├── Axis.swift                  # Chart axes (Asc-Desc, MC-IC, Rahu-Ketu)
│   ├── DashaPeriod.swift           # Vimshottari dasha timing system
│   └── SampleChartData.swift       # Hardcoded realistic Vedic chart for V1
├── Views/
│   ├── Onboarding/
│   │   ├── SplashScreen.swift
│   │   ├── BirthDataInputView.swift
│   │   └── ChartLoadingView.swift
│   ├── ChartViewer/
│   │   ├── ChartViewerContainer.swift
│   │   ├── ChartOverlayUI.swift
│   │   ├── PlanetDetailSheet.swift
│   │   ├── HouseDetailSheet.swift
│   │   ├── AxisDetailSheet.swift
│   │   ├── TimelineScrubber.swift
│   │   └── WalkthroughOverlay.swift
│   ├── Settings/
│   │   └── SettingsView.swift
│   └── Components/
│       ├── GlassMorphicCard.swift
│       ├── GlowButton.swift
│       └── PlanetBadge.swift
├── Scene/                          # RealityKit scene construction
│   ├── GrandClockScene.swift       # Main scene orchestrator
│   ├── EclipticRing.swift          # Base luminous torus
│   ├── HouseRing.swift             # 12 house sector wedges
│   ├── SignRing.swift              # 12 zodiac sign arcs
│   ├── NakshatraRing.swift         # 27 nakshatra divisions
│   ├── PadaRing.swift              # 108 pada micro-divisions
│   ├── PlanetNode.swift            # Individual planet orb entity
│   ├── ConjunctionCluster.swift    # Merged planet glow clusters
│   ├── AspectBeam.swift            # Aspect line between planets
│   ├── DrishtiArc.swift            # Vedic drishti curved beams
│   ├── AxisRod.swift               # Diameter rod entities
│   ├── NodalSpine.swift            # Rahu-Ketu dark axis
│   ├── DashaRing.swift             # Inner chronograph ring
│   ├── TransitHalo.swift           # Outer transit layer
│   ├── ResonanceField.swift        # 3D height-map mesh
│   └── SceneAnimator.swift         # Walkthrough animation sequencer
├── AR/
│   ├── ARViewContainer.swift       # ARView wrapped for SwiftUI
│   ├── ARSessionManager.swift      # ARKit session management
│   └── ScaleModeManager.swift      # Palm/Desk/Room/Dome switching
├── AI/
│   ├── AITutorManager.swift        # AI interaction controller (stub for V1)
│   └── WalkthroughScript.swift     # Pre-written narration text
└── Utilities/
    ├── Colors.swift                # Brand color extensions
    ├── Haptics.swift               # Haptic feedback patterns
    └── MathHelpers.swift           # Angle calculations, orb functions

Docs/                               # Product specifications (current)
├── astro_lens_flagship_product_spec.md  # Master product specification
├── vedic-ar-clock-spec.md               # Visual UX + interaction grammar
├── vedic-math-viz.md                    # Mathematical visualization plan
├── self-assembly-walkthrough.md         # Full walkthrough script
└── rork-master-prompt.md                # Complete Rork build prompt

.github/
└── copilot-instructions.md         # GitHub Copilot context
```

---

## 4. Core Architecture

### Layer 1: Calculation Layer
- Integrates with AstrologyAPI for raw chart data
- Treats API as structured data provider only
- All AstrologyAPI responses normalized to internal format

### Layer 2: Chart Graph Layer
- **Canonical internal model** (`ChartGraph.swift`)
- All visualization and AI read from this single source
- Supports both Vedic and Western astrology systems
- Entities: planets, houses, signs, nakshatras, padas, aspects, axes, yogas, timing states

### Layer 3: Visualization Engine
- RealityKit-based 3D/AR scene rendering
- The **Grand Clock** metaphor: concentric rings with depth
- All positions mathematically exact (no approximation for aesthetics)

### Layer 4: Conversational AI Layer
- Tool-calling model (Gemini Live or OpenAI Realtime)
- AI acts as **visual tutor**, not mystical oracle
- Controls scene via structured tool calls: `highlight_planet`, `scrub_time`, etc.
- Never calculates astrology—only interprets the chart graph

### Layer 5: App Shell
- SwiftUI navigation, onboarding, settings
- Translucent glass-morphic UI overlays
- Minimal chrome—the 3D scene IS the interface

---

## 5. The Grand Clock Visualization

### Core Metaphor
The chart is rendered as a **multi-dimensional grand clock**—not floating planets in space, but a layered instrument with the self at center.

### The 5 Concentric Rings

| Ring | Layer | Angular Division | Visual Treatment |
|------|-------|------------------|------------------|
| 1 | **SELF** (Ascendant) | Center anchor | Glowing cross-axis |
| 2 | **HOUSES** | 12 × 30° sectors | Translucent wedge volumes |
| 3 | **SIGNS** | 12 × 30° zodiac | Elemental color arcs |
| 4 | **NAKSHATRAS** | 27 × 13°20' | Fine silver radial lines |
| 5 | **PADAS** | 108 × 3°20' | Hair-thin, zoom-only |

### Visual Grammar

| Element | Visual Form | Mathematical Basis |
|---------|-------------|-------------------|
| Planet | Luminous orb above ring | Longitude + height ∝ Shadbala |
| Conjunction | Fused glow cluster | Planets within 15° arc |
| Aspect | Straight beam between planets | Angular separation (0°, 60°, 90°, 120°, 180°) |
| Drishti | Curved arc beam with angle marker | Vedic sight-line geometry |
| Axis | Luminous diameter rod | 0°–180° or 90°–270° house frame |
| Dasha | Chronograph hand on inner ring | Current planetary period |
| Transit | Outer translucent halo | Current sky positions |
| Resonance Field | 3D height-map mesh | Σ(planetary influence) at each degree |

### Planetary Colors (Classical)
```swift
Sun:     #fbbf24  // Gold
Moon:    #e2e8f0  // Silver-white
Mars:    #ef4444  // Red
Mercury: #34d399  // Green
Jupiter: #fde68a  // Warm yellow
Venus:   #f9a8d4  // Pink-white
Saturn:  #94a3b8  // Blue-grey
Rahu:    #a78bfa  // Smoke-violet
Ketu:    #fb923c  // Flame-orange
```

---

## 6. Scale Modes

The same chart logic works at multiple physical scales:

| Mode | Size | Use Case |
|------|------|----------|
| **Palm** (✋) | ~8cm diameter | Quick reference, social demo |
| **Desk** (🪑) | ~40cm diameter | Default analysis, walkthroughs |
| **Room** (🚶) | Room-filling | Stand inside the chart |
| **Dome** (🌌) | Entire space | Immersive, cinematic |

**Principle:** Same chart, same logic, same visual grammar—only the scale changes.

---

## 7. Design Principles

### Progressive Reveal
- Never dump full complexity at once
- One story, one focus, one causal chain at a time
- Default modes reduce noise aggressively
- Expert mode is secondary

### Visual Before Textual
- Meaning emerges from geometry first, then from words
- The user should intuit structure before reading labels

### Causal Reveal Pattern
```
tap/ask → isolate → show chain → explain
```

Example for Saturn tap:
1. Show where Saturn is
2. Show which house it occupies
3. Show which sign it is in
4. Show nakshatra and pada
5. Show what it rules
6. Show planets aspecting it
7. Show active axis
8. Show dasha/transit activation
9. Explain in plain language

### Same Grammar Everywhere
- Interactions work identically across all scale modes
- User never relearns the interface

---

## 8. Time Traversal System

### Two Temporal Layers
1. **Natal layer** — Fixed birth chart (never moves)
2. **Transit layer** — Moving current sky positions

### Timeline Scrubber
- Horizontal bar: birth date → today (+ future)
- Colored segments for dasha periods
- Tick marks for significant events (Saturn return, etc.)
- Dragging moves transit layer in real-time

### Timelapse Mode
- "Show me my life in motion"
- Animates from birth to present at ~1 year/second
- Transit planets orbit visibly
- Dasha hand ticks through periods
- Key moments auto-pause with annotation

---

## 9. AI Tutor Behavior

### Three Explanation Modes

| Mode | Style | Example |
|------|-------|---------|
| **Literal** | Technical/structural | "Saturn in 10th, Aquarius, Shatabhisha nakshatra" |
| **Intuitive** | Felt meaning | "Discipline shapes your public role. Recognition comes late but sticks." |
| **Causal** | Why now | "You're in Saturn mahadasha, and transiting Jupiter aspects your natal Saturn." |

### AI Guardrails

**MUST DO:**
- Explain chart elements
- Guide walkthroughs
- Highlight relevant layers
- Answer plain-language questions
- Simplify complexity
- Compare natal vs transit

**MUST NOT DO:**
- Calculate astrology from scratch
- Hallucinate unsupported chart facts
- Ignore the structured chart graph
- Overwhelm with generic spiritual fluff

---

## 10. Sample Chart Data (V1 Hardcoded)

For initial development, use this realistic Vedic chart:

```swift
// Birth: 15 October 1990, 06:42 AM, Chennai, India
// Ascendant: 12°34' Virgo (Hasta nakshatra, pada 2)

struct SampleChart {
    static let ascendantDegree: Double = 162.57
    static let ascendantSign: String = "Virgo"
    static let ascendantNakshatra: String = "Hasta"
    static let ascendantPada: Int = 2

    static let planets: [(name: String, longitude: Double, sign: String, 
                          house: Int, nakshatra: String, pada: Int, 
                          color: String, shadbala: Double)] = [
        ("Sun",     181.4,  "Libra",      2, "Swati",       3, "#fbbf24", 0.72),
        ("Moon",    309.8,  "Aquarius",   6, "Shatabhisha", 1, "#e2e8f0", 0.85),
        ("Mars",     47.2,  "Taurus",     9, "Krittika",    4, "#ef4444", 0.68),
        ("Mercury", 195.6,  "Libra",      2, "Swati",       4, "#34d399", 0.91),
        ("Jupiter", 112.4,  "Cancer",    11, "Pushya",      2, "#fde68a", 0.95),
        ("Venus",   205.3,  "Libra",      2, "Vishakha",    1, "#f9a8d4", 0.78),
        ("Saturn",  284.7,  "Capricorn",  5, "Dhanishta",   2, "#94a3b8", 0.65),
        ("Rahu",     22.1,  "Aries",      8, "Bharani",     3, "#a78bfa", 0.50),
        ("Ketu",    202.1,  "Libra",      2, "Swati",       4, "#fb923c", 0.50),
    ]

    // Key features:
    // - Stellium: Sun + Mercury + Venus + Ketu in Libra (House 2)
    // - Jupiter exalted in Cancer (House 11)
    // - Saturn in own sign Capricorn (House 5)
}
```

---

## 11. Animation Specifications

| Animation | Duration | Curve |
|-----------|----------|-------|
| Ring draw | 2.4s | easeInOut |
| House wedge build | 0.3s each | easeOut |
| Planet drop | 0.8s | spring(damping: 0.7) |
| Aspect beam draw | 2.0s | easeInOut |
| Detail sheet | 0.35s | spring(damping: 0.85) |
| Scale mode switch | 0.6s | easeInOut |
| Lens transition | 0.8s | easeInOut (ripple effect) |
| Conjunction pulse | 2.0s loop | sinusoidal |

---

## 12. Haptic Patterns

| Interaction | Haptic |
|-------------|--------|
| Planet tap | Medium impact |
| House tap | Light impact |
| Axis tap | Rigid impact |
| Walkthrough step | Soft notification |
| Timelapse key moment | Success notification |
| Scale mode switch | Rigid impact |
| Scrubber year tick | Selection tick |

---

## 13. Divisional Chart Lenses

Divisional charts are **lenses** over the same engine, not separate screens:

| Lens | Purpose | Transition Effect |
|------|---------|-------------------|
| **D1** (Rashi) | Base chart | Default view |
| **D9** (Navamsa) | Relationships & dharma | Ripple, planets animate to new positions |
| **D10** (Dashamsa) | Career focus | 10th house architecture expands |

The clock STAYS—only planetary positions and emphasis change.

---

## 14. Current Project State

**Status:** Specification Phase  
**Source Code:** Not yet created  
**Next Steps:**

1. Create Xcode project with SwiftUI + RealityKit
2. Implement `ChartGraph` and model layer
3. Build RealityKit scene components
4. Create onboarding flow
5. Implement walkthrough state machine
6. Add AR placement and scale modes
7. Build time scrubber and timelapse
8. Add divisional chart lens switching

### What NOT to Build Yet
- Real AstrologyAPI integration (use sample data)
- Real AI tutor/voice (use pre-written text)
- Live voice commands (stub the AI manager)
- Push notifications, social sharing, user accounts
- In-app purchases
- Western astrology depth (toggle exists but both load Vedic data)

---

## 15. Reference Documents

When working on this project, read in this order:

1. **`Docs/astro_lens_flagship_product_spec.md`** — Master product specification (818 lines)
2. **`Docs/vedic-ar-clock-spec.md`** — Visual UX + interaction grammar (314 lines)
3. **`Docs/vedic-math-viz.md`** — Mathematical visualization plan (441 lines)
4. **`Docs/self-assembly-walkthrough.md`** — Full walkthrough script with scene choreography (595 lines)
5. **`Docs/rork-master-prompt.md`** — Complete build prompt for Rork/AI coding tools (643 lines)
6. **`.github/copilot-instructions.md`** — Quick reference for GitHub Copilot

---

## 16. Non-Negotiable Product Principles

1. Calculation is commodity; visualization is moat
2. The chart is a living machine, not a flat diagram
3. The best metaphor is a multi-dimensional grand clock
4. The product must build visual intuition for total beginners
5. The AI is a grounded visual tutor, not the source of truth
6. AR is an enhancement of comprehension, not a gimmick
7. One visual engine should support both Vedic and Western astrology
8. Same logic, same grammar, different scales
9. Guided reveal is more important than completeness
10. Every explanation should answer: what is active, why, and where do I see it?
11. The chart is alive in time—users can scrub from birth to now

---

## 17. Quality Bar

This app should feel worthy of **App Store Editorial feature**:

- Every screen, transition, and glow should feel premium and intentional
- The 3D scene IS the product—the UI merely supports it
- Target: Apple Watch face design quality × planetarium × luxury instrument × spatial computing
- 60fps minimum, smooth ease-in-out curves, nothing janky
- First reaction: "I've never seen astrology look like this"

---

*AstroLens — See Astrology in AR.*
