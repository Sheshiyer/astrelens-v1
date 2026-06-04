# AstroLens — Master Rork Prompt

> Copy everything below the line into Rork as the app generation prompt.

---

## APP NAME
AstroLens

## APP TAGLINE
See Astrology in AR

## PLATFORM
iPhone (iOS 17+). SwiftUI + RealityKit + ARKit.

---

## WHAT THIS APP IS

AstroLens is a premium iPhone AR astrology app that renders a birth chart as a living, navigable, multi-dimensional 3D grand clock. The user enters their birth data, and the app visualizes their chart as concentric luminous rings in AR or 3D — not a flat wheel, but a layered instrument they can tap, zoom, rotate, walk around, and explore. An AI tutor guides them through their chart step-by-step. The entire UX is beginner-first: a person with zero astrology knowledge can understand their chart through visual intuition.

This prompt builds the FULL VISUAL DESIGN, UX, UI, and AR 3D elements. API integration for real chart data comes later. Use realistic hardcoded sample chart data throughout so every screen, animation, and interaction is fully functional with mock data.

---

## TECH STACK — MANDATORY

- **SwiftUI** for all UI (app shell, navigation, sheets, overlays, onboarding)
- **RealityKit** for all 3D and AR rendering (the grand clock, rings, planets, beams, axes, resonance field)
- **ARKit** for world tracking, surface detection, and AR placement
- **Combine** for reactive state management
- iOS 17+ APIs only. No UIKit except where SwiftUI bridge is essential.
- No third-party packages. Use only Apple frameworks.

---

## BRAND & AESTHETIC

- **Dark premium backgrounds** — near-black (#0a0a0f) with deep indigo undertone
- **Luminous orbital lines** — thin, glowing, cinematic
- **Sacred-tech feel** — not fortune-teller, not tacky spirituality. Think: observatory meets luxury watch meets spatial computing.
- **Typography**: SF Pro Display for headings, SF Pro Text for body. Thin weights with generous spacing.
- **Accent colors**: Gold (#fbbf24), deep violet (#7c3aed), silver (#e2e8f0)
- **No clutter**: Minimal UI chrome. The 3D scene IS the interface. UI elements overlay with translucent glass morphism.
- **Animations**: Smooth, 60fps. Ease-in-out curves. Nothing janky. Every transition is intentional.

---

## APP ARCHITECTURE (Files & Modules)

```
AstroLens/
├── App/
│   ├── AstroLensApp.swift              // @main entry point
│   └── AppState.swift                  // Global app state (ObservableObject)
├── Models/
│   ├── ChartGraph.swift                // Canonical chart data model
│   ├── Planet.swift                    // Planet enum + properties
│   ├── House.swift                     // House model
│   ├── Sign.swift                      // Zodiac sign enum + colors
│   ├── Nakshatra.swift                 // 27 nakshatras
│   ├── Pada.swift                      // 108 padas
│   ├── Aspect.swift                    // Aspect relationships
│   ├── Axis.swift                      // Chart axes
│   ├── DashaPeriod.swift               // Dasha timing system
│   └── SampleChartData.swift           // Hardcoded realistic sample chart
├── Views/
│   ├── Onboarding/
│   │   ├── SplashScreen.swift          // Animated launch
│   │   ├── BirthDataInputView.swift    // Date, time, place entry
│   │   └── ChartLoadingView.swift      // Cinematic chart generation animation
│   ├── ChartViewer/
│   │   ├── ChartViewerContainer.swift  // Main chart view orchestrator
│   │   ├── ChartOverlayUI.swift        // Floating UI controls over 3D scene
│   │   ├── PlanetDetailSheet.swift     // Bottom sheet for tapped planet
│   │   ├── HouseDetailSheet.swift      // Bottom sheet for tapped house
│   │   ├── AxisDetailSheet.swift       // Bottom sheet for tapped axis
│   │   ├── TimelineScrubber.swift      // Time traversal scrubber bar
│   │   └── WalkthroughOverlay.swift    // Step-by-step walkthrough UI
│   ├── Settings/
│   │   └── SettingsView.swift          // System selection, scale mode, etc.
│   └── Components/
│       ├── GlassMorphicCard.swift      // Reusable frosted glass card
│       ├── GlowButton.swift            // Luminous CTA buttons
│       └── PlanetBadge.swift           // Small planet indicator with color
├── Scene/
│   ├── GrandClockScene.swift           // RealityKit scene builder (the clock)
│   ├── EclipticRing.swift              // The base luminous torus ring
│   ├── HouseRing.swift                 // 12 house sector wedges
│   ├── SignRing.swift                   // 12 sign color arcs
│   ├── NakshatraRing.swift             // 27 nakshatra divisions
│   ├── PadaRing.swift                  // 108 pada micro-divisions (zoom-only)
│   ├── PlanetNode.swift                // Individual planet orb entity
│   ├── ConjunctionCluster.swift        // Merged planet glow cluster
│   ├── AspectBeam.swift                // Aspect line between planets
│   ├── DrishtiArc.swift                // Vedic drishti curved beam
│   ├── AxisRod.swift                   // Axis diameter rod entity
│   ├── NodalSpine.swift                // Rahu-Ketu dark axis
│   ├── DashaRing.swift                 // Inner chronograph ring + hand
│   ├── TransitHalo.swift               // Outer transit ring
│   ├── ResonanceField.swift            // 3D height-map mesh above ring
│   └── SceneAnimator.swift             // Walkthrough animation sequencer
├── AR/
│   ├── ARViewContainer.swift           // ARView wrapped for SwiftUI
│   ├── ARSessionManager.swift          // ARKit session + surface detection
│   └── ScaleModeManager.swift          // Palm/Desk/Room/Dome scale switching
├── AI/
│   ├── AITutorManager.swift            // AI interaction controller (stub for now)
│   └── WalkthroughScript.swift         // Pre-written walkthrough narration text
└── Utilities/
    ├── Colors.swift                    // All brand colors as Color extensions
    ├── Haptics.swift                   // Haptic feedback patterns
    └── MathHelpers.swift               // Angle calculations, orb functions
```

---

## HARDCODED SAMPLE CHART DATA

Use this exact data as the mock chart for all views and the 3D scene. This represents a realistic Vedic natal chart:

```swift
// Birth: 15 October 1990, 06:42 AM, Chennai, India
// Ascendant: 12°34' Virgo (Hasta nakshatra, pada 2)

struct SampleChart {
    static let ascendantDegree: Double = 162.57  // 12°34' Virgo
    static let ascendantSign: String = "Virgo"
    static let ascendantNakshatra: String = "Hasta"
    static let ascendantPada: Int = 2

    static let planets: [(name: String, longitude: Double, sign: String, house: Int,
                          nakshatra: String, pada: Int, color: String, shadbala: Double)] = [
        ("Sun",     181.4,  "Libra",       2,  "Swati",       3, "#fbbf24", 0.72),
        ("Moon",    309.8,  "Aquarius",     6,  "Shatabhisha", 1, "#e2e8f0", 0.85),
        ("Mars",     47.2,  "Taurus",      9,  "Krittika",    4, "#ef4444", 0.68),
        ("Mercury", 195.6,  "Libra",       2,  "Swati",       4, "#34d399", 0.91),
        ("Jupiter", 112.4,  "Cancer",     11,  "Pushya",      2, "#fde68a", 0.95),
        ("Venus",   205.3,  "Libra",       2,  "Vishakha",    1, "#f9a8d4", 0.78),
        ("Saturn",  284.7,  "Capricorn",   5,  "Dhanishta",   2, "#94a3b8", 0.65),
        ("Rahu",     22.1,  "Aries",       8,  "Bharani",     3, "#a78bfa", 0.50),
        ("Ketu",    202.1,  "Libra",       2,  "Swati",       4, "#fb923c", 0.50),
    ]

    // Conjunctions: Sun + Mercury + Venus + Ketu in Libra (House 2)
    // Jupiter exalted in Cancer (House 11)
    // Saturn in own sign Capricorn (House 5)

    static let aspects: [(from: String, to: String, type: String, angle: Double, exactness: Double)] = [
        ("Jupiter", "Saturn",  "opposition", 172.3, 0.87),
        ("Jupiter", "Moon",    "trine",      162.6, 0.78),
        ("Saturn",  "Mars",    "trine",      122.5, 0.82),
        ("Sun",     "Mars",    "opposition", 134.2, 0.55),
        ("Mars",    "Jupiter", "square",     65.2,  0.62),
    ]

    static let axes: [(name: String, startDegree: Double, endDegree: Double)] = [
        ("Asc–Desc",   162.57, 342.57),
        ("MC–IC",      252.57,  72.57),
        ("Rahu–Ketu",   22.1,  202.1),
    ]

    static let currentDasha = (mahadasha: "Saturn", antardasha: "Mercury",
                                startYear: 2023, endYear: 2026)
}
```

---

## SCREEN-BY-SCREEN UX SPEC

### SCREEN 1 — Splash / Launch

- Full black screen. A single luminous gold circle draws itself from a point, sweeping 360° in 2.4 seconds.
- The circle pulses once like a heartbeat. Then the AstroLens wordmark fades in at center: "AstroLens" in SF Pro Display Ultralight, letter-spaced wide.
- Below: "See Astrology in AR" — subtle, silver.
- After 3 seconds, auto-transitions to birth data input.

### SCREEN 2 — Birth Data Input

- Dark background, minimal UI.
- Three input fields, stacked vertically with generous spacing:
  1. **Date of Birth** — date picker styled with thin gold rings
  2. **Time of Birth** — time picker, precise to minutes. A subtle note: "Exact birth time matters — it determines your unique chart geometry."
  3. **Place of Birth** — text field with autocomplete suggestion list
- Below: a luminous gold CTA button: "Generate My Chart"
- Below the button: two small toggles:
  - Astrology System: "Vedic" (default) / "Western"
  - For V1, both load the same sample chart data.
- On submit → transition to chart loading screen.
- Pre-fill with sample data (15 Oct 1990, 06:42 AM, Chennai) for demo purposes.

### SCREEN 3 — Chart Generation Loading

- Cinematic build sequence:
  - Background: deep dark void with faint swirling constellation particles
  - A circle starts drawing itself (same as splash but larger)
  - 12 house spokes etch in
  - Sign colors wash across arcs
  - Planets drop in one by one with small impact glows
  - Text overlays fade in and out: "Calculating planetary positions..." → "Mapping your houses..." → "Tracing aspects..." → "Your chart is ready."
- Total duration: 4–5 seconds
- Transitions to the main chart viewer.

### SCREEN 4 — Main Chart Viewer (THE CORE EXPERIENCE)

This is where the grand clock lives. It is the heart of the app.

**Layout:**
- Full-screen 3D/AR scene occupying the entire display
- Floating glass-morphic controls overlaid on top:
  - **Top-left**: Back arrow + "AstroLens" wordmark (small)
  - **Top-right**: Settings gear icon + Scale mode toggle (Palm/Desk/Room/Dome icons)
  - **Bottom-center**: Time scrubber bar (collapsed by default; tap clock icon to expand)
  - **Bottom-right**: Walkthrough play button (golden play icon: "Walk me through")
  - **Bottom-left**: Lens switcher (D1 default, D9, D10 as pill tabs)
- When any planet/house/axis is tapped, a detail sheet slides up from bottom (half-height)

**The 3D Grand Clock Scene — What It Renders:**

The scene contains these layered elements, all rendered with RealityKit:

**Layer 1 — Ecliptic Ring (the base)**
- A luminous torus (thin glowing circle) hovering in AR or centered in 3D view
- Gold color (#fbbf24) at 80% opacity
- Faint degree tick marks at every 10° around the circumference
- Radius: ~20cm in Desk mode AR

**Layer 2 — House Sectors**
- 12 wedge-shaped sectors radiating from center, anchored to the ecliptic ring
- Semi-transparent, each with a very faint distinguishing color tint
- House number labels (1–12) at the outer midpoint of each sector
- Start from the Ascendant point, proceeding counter-clockwise
- Positioned BELOW the sign ring in depth (closest to the surface)

**Layer 3 — Sign Arcs**
- 12 zodiac sign color arcs overlaid on the ecliptic ring
- Each 30° arc has its elemental color:
  - Fire (Aries, Leo, Sagittarius): warm amber (#f59e0b) at 25% opacity
  - Earth (Taurus, Virgo, Capricorn): deep green (#059669) at 25% opacity
  - Air (Gemini, Libra, Aquarius): pale blue (#38bdf8) at 25% opacity
  - Water (Cancer, Scorpio, Pisces): deep indigo (#4f46e5) at 25% opacity
- Small zodiac glyphs at the outer edge of each arc
- Positioned 2cm above houses in AR depth

**Layer 4 — Nakshatra Ring**
- 27 finer radial division lines at 13°20' intervals
- Thinner than house/sign spokes, 40% opacity, silvery (#c0c0c0)
- Positioned 4cm above houses
- Visible by default but subtle. On pinch-zoom, they become more prominent.

**Layer 5 — Pada Ring (zoom-only)**
- 108 ultra-fine radial lines at 3°20' intervals
- Hair-thin, 20% opacity, only visible when user pinch-zooms outward
- Positioned just outside the nakshatra ring

**Planets — Luminous Orbs**
- 9 planet spheres placed at their exact ecliptic longitude on the ring
- Each sphere glows in its classical color:
  - Sun: #fbbf24 (gold)
  - Moon: #e2e8f0 (silver-white)
  - Mars: #ef4444 (red)
  - Mercury: #34d399 (green)
  - Jupiter: #fde68a (warm yellow)
  - Venus: #f9a8d4 (pink-white)
  - Saturn: #94a3b8 (blue-grey)
  - Rahu: #a78bfa (smoke-violet)
  - Ketu: #fb923c (flame-orange)
- Size proportional to shadbala strength score (0.5 = smallest, 1.0 = largest)
- Float at 6–10cm above the ring surface (height also ∝ shadbala)
- Each has a soft glow halo and a thin vertical line connecting it to the ring below
- Planet label text floats just above each orb

**Conjunction Clusters**
- When planets share a house AND are within 15° of each other, their halos merge into one breathing glow cluster
- In the sample data: Sun + Mercury + Venus + Ketu in Libra → one large fused glow cluster
- The cluster pulses with a slow unified heartbeat

**Aspect Beams**
- Straight line segments between planet pairs that have aspects
- Color matches the originating planet
- Width and opacity ∝ exactness score:
  - Exactness > 0.8: bright, full-width beam
  - Exactness 0.5–0.8: medium, slightly transparent
  - Exactness < 0.5: faint ghost line
- Jupiter beams: warm amber, slightly curved
- Saturn beams: cold blue-grey, rigid straight
- Mars beams: red-orange with arrow-tip pulse particle

**Axis Rods**
- Three luminous rods passing through the center of the chart:
  - **Asc–Desc axis**: gold rod, the brightest
  - **MC–IC axis**: silver rod, perpendicular to Asc–Desc
  - **Rahu–Ketu nodal axis**: dark spine with faint smoke particle trail
- Each rod extends slightly past the ecliptic ring
- Slow rotation animation (0.5° per second)

**Dasha Ring (inner chronograph)**
- A smaller ring inside the ecliptic ring, closer to center
- Divided into colored segments representing dasha periods
- A "hand" (like a watch hand) points to the current dasha period
- The active planet's color washes the segment: Saturn = blue-grey wash
- Pulsing glow on the active segment

**Transit Halo (outer layer)**
- An outer translucent ring at 12cm height, cooler-toned (blue-white #93c5fd at 30% opacity)
- Shows current sky planet positions as smaller, dimmer orbs
- These transit orbs slowly orbit (at real-sky speed, visualized)
- Faint transit-to-natal aspect beams appear where transits form angles to natal planets

**Resonance Field (toggle-able)**
- A 3D wireframe mesh extruded above the ecliptic ring
- Height at each degree = sum of planetary influence at that degree
- Looks like a mountain range wrapped around a circle
- Translucent green-gold wireframe with glowing edges
- Peaks above planet positions, especially above the Libra stellium (tallest peak)
- Valleys above empty houses
- Ridges connecting aspected planets
- Toggle on/off via small mountain icon in the overlay controls

---

## INTERACTION DETAILS

### Tap a Planet
1. Scene dims everything else to 30% opacity
2. Tapped planet expands slightly, pulses brighter
3. Its house sector illuminates to 80%
4. Its sign arc intensifies
5. Its aspect beams shoot outward (if not already visible)
6. Its nakshatra slice highlights
7. Dasha ring indicates if this planet is currently active
8. **Planet Detail Sheet** slides up from bottom (half-screen height):
   - Planet name + glyph + color badge
   - "Actor → Stage → Style → Pattern" card:
     - **Actor**: "[Planet] — [keywords]"
     - **Stage**: "House [N] — [domain]"
     - **Style**: "[Sign] — [sign quality]"
     - **Pattern**: "[Nakshatra], Pada [N]"
   - Aspect list: which planets it aspects and how
   - Dasha status: "Currently active in [Mahadasha/Antardasha]" or "Not currently active"
   - Three interpretation tabs at bottom: `Literal` | `Intuitive` | `Why Now`

### Tap a House
1. House wedge expands slightly toward the user
2. All planets in that house glow brighter
3. Planets aspecting that house show their beams
4. **House Detail Sheet** slides up:
   - "House [N] — [Domain]"
   - Sign occupying this house
   - Planets present (list with color badges)
   - House lord and where it sits
   - Aspects received

### Tap an Axis
1. The axis rod brightens, particles trail from both ends
2. Both houses at each end illuminate
3. All planets on both ends cluster visually
4. **Axis Detail Sheet** slides up:
   - "[Axis Name]: [Sign1] ↔ [Sign2]"
   - Polarity meaning explanation
   - Planets on each end

### Pinch-to-Zoom
- Pinch inward: rings collapse toward center, summary mode
- Pinch outward: rings separate with parallax depth, nakshatra ring becomes prominent
- Double-pinch outward: pada ring (108 divisions) emerges as finest outer ring

### Two-Finger Rotate
- Rotate the clock like a steering wheel
- Ascendant stays grounded as reference; perspective changes
- Smooth 60fps rotation with inertia

### Scale Modes (top-right icons)
- **Palm** (✋): Clock shrinks to ~8cm diameter. Minimal labels.
- **Desk** (default 🪑): Clock at ~40cm diameter hovering on detected surface. Full labels.
- **Room** (🚶): Clock expands to fill room. User stands inside. Houses become translucent sectors around user. Planets float at eye level.
- **Dome** (🌌): Entire detected space becomes the chart. Axes cross the room. Immersive.

---

## TIME TRAVERSAL SYSTEM

### Timeline Scrubber Bar (bottom of screen)
- Collapsed by default (just a clock icon). Tap to expand.
- Expanded: a horizontal bar spanning the screen width
- Left end = birth date (15 Oct 1990)
- Right end = today (or +5 years into future)
- The bar has colored segments matching dasha period colors
- Small tick marks at significant transit events (Saturn return at age 29, Jupiter returns every 12 years)
- A draggable golden scrubber handle
- Current date label floats above the handle

### Scrub Behavior
- Dragging the handle moves the transit layer in real time
- Transit planet orbs on the outer halo glide to their positions at the selected date
- Dasha hand rotates to the active period for that date
- Dasha ring segment colors update
- Transit-to-natal aspect beams appear/disappear as transits form/break exact angles
- Date label updates live: "March 2019", "October 2024", etc.

### Timelapse Mode
- Long-press the scrubber handle → enters timelapse playback
- Clock animates forward from birth to present at ~1 year/second
- Transit planets orbit visibly
- Dasha hand ticks through periods
- Aspect beams flash on/off
- Resonance field ripples (if visible)
- Key life moments auto-pause with a subtle pulse:
  - Saturn return (~age 29): golden flash + "Saturn Return" label
  - Jupiter returns: warm flash
  - Dasha transitions: dasha ring pulses + label
- Speed control: pinch vertically to speed up / slow down
- Double-tap to pause at current frame
- Tap scrubber to exit timelapse and freeze at current date

---

## GUIDED WALKTHROUGH ("Walk Me Through")

When the user taps the golden play button, the app enters a step-by-step cinematic walkthrough. The chart builds itself piece by piece, with narration text appearing in a glass-morphic card at bottom.

### Walkthrough Steps:

**Step 1 — The Empty Stage**
- Everything hidden. Dark void with faint particles.
- Text card: "Your chart is about to build itself. Every piece I add, I'll explain what it means — in YOUR chart."
- 3-second hold. Then auto-advance.

**Step 2 — The Ecliptic Ring**
- The gold ring draws itself, sweeping 360° in 2.4 seconds. Pulses once.
- Text: "This circle is the sky around you at the moment of your birth. Every planet travels along this ring. Your entire chart lives on it."
- Degree tick marks fade in.

**Step 3 — Signs Etch In**
- 12 radial spokes appear simultaneously. Sign color washes fill the arcs.
- Text: "12 equal sections — 30° each. The zodiac signs. Each section has a different quality — a different terrain the ring passes through."
- Sign glyphs appear at outer edge.

**Step 4 — Nakshatras Overlay**
- 27 finer silver lines appear between the sign spokes.
- Text: "The Vedic system adds a finer grid — 27 Nakshatras. Notice the two grids don't align perfectly. That mismatch is where Vedic depth begins."
- The moiré visual tension between 30° and 13.33° grids is visible.

**Step 5 — Ascendant Ignites**
- Everything dims to 20%. A gold cross flares at the Ascendant point (162.57°).
- Text: "This is your Ascendant — 12°34' Virgo. The one degree rising over the horizon at your birth. Everything is measured from this point. This is where YOU begin."
- The cross pulses with heartbeat rhythm.

**Step 6 — Axes Form**
- Asc–Desc gold rod shoots across. MC–IC silver rod drops perpendicular.
- Text: "Four anchor points form a cross. Ascendant ↔ Descendant. Midheaven ↔ IC. Self vs other. Career vs roots. Your life's geometric skeleton."

**Step 7 — Houses Assemble**
- 12 wedge sectors build counter-clockwise from Ascendant, one at a time (~0.3s each).
- Text changes per house: "1st — Self, Identity" → "2nd — Wealth, Voice" → ... → "12th — Liberation, the Unseen"
- After all 12: "Houses and signs are two different grids — offset by your Ascendant angle. That offset is unique to your birth."

**Step 8 — Planets Drop In**
- One planet at a time descends from above, landing on its ecliptic position with an impact glow.
- Order: Sun, Moon, Mars, Mercury, Jupiter, Venus, Saturn, Rahu+Ketu (simultaneously from opposite ends).
- Per planet, text card shows: "[Planet] at [degree]° [Sign] — House [N]"
- When the Libra stellium forms (Sun, Mercury, Venus, Ketu): "Four planets share the 2nd house — a powerful stellium. Their energies are fused in matters of wealth, speech, and values."
- Rahu + Ketu: "The lunar nodes — always 180° apart. Your karmic spine." Dark spine appears connecting them.

**Step 9 — Aspects Emerge**
- Beams draw one at a time. Strongest first.
- Jupiter–Saturn opposition: "Jupiter and Saturn in near-opposition — expansion vs discipline, across your 11th and 5th houses."
- Each beam draws over 2 seconds with angle annotation.

**Step 10 — Dasha Hand**
- Inner dasha ring fades in. Hand sweeps to current position (Saturn).
- Text: "You're currently in Saturn Mahadasha — the planet of discipline and structure is conducting your life. Saturn sits in your 5th house in its own sign."
- Saturn glows brighter on the main chart.

**Step 11 — Transit Weather**
- Outer transit halo fades in with cooler-toned orbiting nodes.
- Text: "The sky right now. These outer lights are current transits pressing on your natal chart."
- Transit-to-natal beams appear where relevant.

**Step 12 — Full Clock, One Theme**
- Everything visible at calibrated opacities. One zone pulses brighter than all else (the Libra stellium in House 2).
- Text: "Your chart is alive. The strongest concentration is here — four planets fused in your 2nd house. This is your dominant theme."
- "Tap any planet. Rotate the clock. Ask me anything."

### Walkthrough Controls
- **Next** (→) button: advance to next step
- **Pause** (⏸): hold current step
- **Skip** (✕): exit walkthrough, show full clock
- Auto-advance after 5 seconds per step if user doesn't interact

---

## SETTINGS SCREEN

- **Astrology System**: Vedic (default) / Western toggle
- **Default Scale Mode**: Palm / Desk / Room / Dome picker
- **Show Resonance Field**: toggle (default off for beginners)
- **Show Nakshatra Ring**: toggle (default on in Vedic)
- **Show Pada Ring on Zoom**: toggle (default on)
- **Walkthrough Speed**: Slow / Normal / Fast
- **Haptic Feedback**: on/off
- **About AstroLens**: version, credits

---

## DIVISIONAL CHART LENSES (Bottom-left pills)

Three pill buttons: **D1** (default, active) | **D9** | **D10**

- **D1 — Rashi**: The base chart. Default view.
- **D9 — Navamsa**: Relationship & dharma lens. When tapped, outer rings ripple like water. Planets smoothly animate to their D9 positions (use remapped sample positions). House emphasis shifts. A subtle label: "Navamsa — Relationship & Dharma Lens"
- **D10 — Dashamsa**: Career lens. Same ripple transition. 10th house architecture expands visually. Label: "Dashamsa — Career Lens"

The clock STAYS — only planetary positions and emphasis change. The user never "leaves" the chart.

---

## DETAIL SHEET COMPONENT SPEC

All detail sheets are half-screen height, glass-morphic background (ultra-thin material), rounded top corners (20pt), with a drag-to-dismiss handle.

**Planet Detail Sheet:**
```
┌─────────────────────────────────┐
│ ─── (drag handle)               │
│                                 │
│ ☉ Sun                    🟡    │
│ 1°24' Libra · House 2          │
│ Swati Nakshatra · Pada 3       │
│                                 │
│ ┌─────────────────────────────┐ │
│ │ Actor    │ Authority, Self  │ │
│ │ Stage    │ House 2 — Wealth │ │
│ │ Style    │ Libra — Balance  │ │
│ │ Pattern  │ Swati — Wind     │ │
│ └─────────────────────────────┘ │
│                                 │
│ Aspects:                        │
│   → Mars (opposition, 55%)      │
│                                 │
│ Dasha: Not currently active     │
│                                 │
│ [Literal] [Intuitive] [Why Now] │
└─────────────────────────────────┘
```

The three interpretation tabs at bottom show different text:
- **Literal**: "Sun at 1°24' Libra in the 2nd house. Debilitated. Conjunct Mercury, Venus, and Ketu."
- **Intuitive**: "Your sense of self and authority operates through diplomacy, beauty, and balance in matters of wealth and speech."
- **Why Now**: "Currently in Saturn Mahadasha — Sun is not the active conductor. But transiting Jupiter aspects your 2nd house, giving this stellium a boost window."

---

## ANIMATION SPECS

| Animation | Duration | Curve | Description |
|---|---|---|---|
| Ring draw | 2.4s | easeInOut | Circle sweeps from point to full |
| House wedge build | 0.3s each | easeOut | Each wedge expands from center |
| Planet drop | 0.8s | spring(damping: 0.7) | Planet descends from above, lands with glow |
| Aspect beam draw | 2.0s | easeInOut | Line extends from planet A to B |
| Detail sheet up | 0.35s | spring(damping: 0.85) | Slides up from bottom |
| Opacity fade | 0.5s | easeInOut | Elements dim when not focused |
| Scale mode switch | 0.6s | easeInOut | Clock scales up/down with smooth interpolation |
| Lens transition | 0.8s | easeInOut | Ripple effect, planets glide to new positions |
| Scrub transit | continuous | linear | Transit nodes move in real-time with drag |
| Timelapse playback | ~1yr/sec | linear | Continuous animation of transits through time |
| Conjunction pulse | 2.0s loop | sinusoidal | Merged halo breathes slowly |
| Dasha hand tick | 0.3s | easeOut | Hand snaps to next position |

---

## HAPTIC PATTERNS

- Planet tap: medium impact
- House tap: light impact
- Axis tap: rigid impact
- Walkthrough step advance: soft notification
- Timelapse key moment: success notification
- Scale mode switch: rigid impact
- Scrubber drag: selection tick at each year mark

---

## KEY IMPLEMENTATION NOTES

1. **All chart data flows from ChartGraph.swift** — a single `@Observable` model that holds the complete chart state. Every view and scene entity reads from this one source of truth.

2. **RealityKit entities are built programmatically** — no USDZ assets. Use `MeshResource` for rings (torus, cylinder), `SimpleMaterial` with emissive colors for glow effects, and custom geometry for the resonance field mesh.

3. **AR mode uses ARKit horizontal plane detection** — the clock anchors to the first detected surface. Non-AR mode (3D viewer) shows the clock centered in an `ARView` without camera passthrough.

4. **The walkthrough is a state machine** — `WalkthroughState` enum with cases for each step. `SceneAnimator` listens to the state and triggers the appropriate RealityKit animations.

5. **Opacity control is per-entity** — when a planet is tapped, all other entities have their `opacity` component value reduced to 0.3. The tapped planet goes to 1.0 with an additive glow material.

6. **Time scrubbing recalculates transit positions** — `ChartGraph` has a `transitDate` property. Changing it recalculates transit planet longitudes (hardcoded interpolation table for the sample chart) and updates the transit halo entities.

7. **Lens switching remaps planet positions** — `ChartGraph` has a `currentLens` property. D1/D9/D10 each have their own planet longitude arrays. Switching triggers animated position updates on planet entities.

8. **All colors are defined in Colors.swift** — no hardcoded hex strings in views. Use named Color extensions.

9. **The resonance field mesh is generated from a function** — iterate 360 degrees, compute field strength per degree using the formula `Σ (shadbala_i × max(0, 1 − |d − longitude_i| / maxOrb)^2)`, extrude as height, generate `MeshResource` from vertices.

10. **The app works in both AR and non-AR** — if AR is unavailable or the user hasn't placed the chart yet, show a 3D orbitable view with dark background. Same scene, no camera feed.

---

## WHAT TO BUILD (PRIORITY ORDER)

1. App shell: splash → birth data input → loading → chart viewer → settings
2. The complete 3D Grand Clock scene with all layers, planets, beams, axes, rings
3. Tap interactions on planets, houses, axes → detail sheets
4. Guided walkthrough (step-by-step build animation)
5. Time scrubber + timelapse playback
6. Scale mode switching (Palm/Desk/Room/Dome)
7. Divisional chart lens switching (D1/D9/D10)
8. AR placement (surface detection + anchoring)
9. Resonance field 3D mesh

---

## WHAT NOT TO BUILD (WILL BE ADDED LATER)

- Real AstrologyAPI integration (use hardcoded sample data)
- Real AI tutor / voice (use pre-written text in walkthrough)
- Live voice commands (stub the AI manager)
- Push notifications
- Social sharing
- User accounts / authentication
- In-app purchases
- Western astrology mode (toggle exists but both load same Vedic data)

---

## FINAL QUALITY BAR

This app should feel like it deserves an App Store Editorial feature. Every screen, every transition, every glow should feel premium, polished, and intentional. The 3D scene is the product — the UI merely supports it. When someone sees this app for the first time, their reaction should be: "I've never seen astrology look like this."

Think: Apple Watch face design quality × planetarium × luxury instrument × spatial computing.

**AstroLens — See Astrology in AR.**
