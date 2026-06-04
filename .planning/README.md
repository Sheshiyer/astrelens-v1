# AstroLens 🔮✨

> **See Astrology in AR**

[![Platform](https://img.shields.io/badge/platform-iOS%2017%2B-blue)](https://developer.apple.com/ios/)
[![Language](https://img.shields.io/badge/language-Swift%205.9-orange)](https://swift.org/)
[![Framework](https://img.shields.io/badge/framework-SwiftUI%20%2B%20RealityKit-purple)](https://developer.apple.com/documentation/realitykit)

AstroLens is an iPhone-first AR astrology application that transforms birth charts into living, navigable 3D visualizations. Built with SwiftUI and RealityKit, it enables anyone—even those with zero astrology knowledge—to visually understand their chart through immersive spatial computing.

![AstroLens Concept](https://img.shields.io/badge/status-Specification%20Phase-yellow)

---

## ✨ What Makes AstroLens Different

| Traditional Apps | AstroLens |
|-----------------|-----------|
| Dense static 2D charts | Living 3D multi-dimensional visualization |
| Text-heavy interpretations | Visual intuition through spatial exploration |
| Fortune-teller mystique | Grounded, causal walkthroughs |
| One-size-fits-all | Personalized AR experience at multiple scales |

### The Grand Clock Metaphor

AstroLens renders charts as a **multi-dimensional grand clock**—not floating planets in space, but a layered instrument with the self at center:

```
        ╭──────────────╮
       ╱   TRANSIT HALO  ╲
      │  ╭────────────╮   │
      │ │  NAKSHATRAS   │  │
      │ │ ╭──────────╮ │  │
      │ │ │   SIGNS   │ │  │
      │ │ │ ╭──────╮ │ │  │
      │ │ │ │HOUSES│ │ │  │
      │ │ │ │  ☉   │ │ │  │
      │ │ │ ╰──────╯ │ │  │
      │ │ ╰──────────╯ │  │
      │ ╰──────────────╯  │
       ╲   DASHA RING    ╱
        ╰──────────────╯
```

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────┐
│         App Shell (SwiftUI)            │
│    Navigation · Onboarding · Settings   │
├─────────────────────────────────────────┤
│      Conversational AI Layer           │
│   Visual tutor via tool-calling API    │
├─────────────────────────────────────────┤
│      Visualization Engine              │
│   RealityKit · Grand Clock · ARKit     │
├─────────────────────────────────────────┤
│        Chart Graph Layer               │
│   Canonical model - single source      │
├─────────────────────────────────────────┤
│       Calculation Layer                │
│   AstrologyAPI integration             │
└─────────────────────────────────────────┘
```

---

## 🎯 Core Features

### 1. The Five Concentric Rings

| Ring | Layer | Division | Visual Treatment |
|------|-------|----------|------------------|
| 1 | **Self** (Ascendant) | Center | Glowing cross-axis |
| 2 | **Houses** | 12 × 30° | Translucent wedge volumes |
| 3 | **Signs** | 12 × 30° | Elemental color arcs |
| 4 | **Nakshatras** | 27 × 13°20' | Fine silver radial lines |
| 5 | **Padas** | 108 × 3°20' | Hair-thin, zoom-only |

### 2. Scale Modes

Experience your chart at any scale:

| Mode | Size | Use Case |
|------|------|----------|
| ✋ **Palm** | ~8cm | Quick reference, social demo |
| 🪑 **Desk** | ~40cm | Default analysis, walkthroughs |
| 🚶 **Room** | Room-filling | Stand inside the chart |
| 🌌 **Dome** | Entire space | Immersive, cinematic |

### 3. Time Traversal

- **Timeline Scrubber**: Drag from birth to present (and beyond)
- **Timelapse Mode**: Watch your life in motion at ~1 year/second
- **Transit Overlay**: See current sky positions vs. natal chart

### 4. Divisional Chart Lenses

Switch between chart views with ripple transitions:
- **D1** (Rashi) — Base natal chart
- **D9** (Navamsa) — Relationships & dharma
- **D10** (Dashamsa) — Career focus

---

## 🛠️ Technology Stack

| Layer | Technology | Rationale |
|-------|------------|-----------|
| **UI** | SwiftUI | Native, declarative, beautiful |
| **3D/AR** | RealityKit | Apple's spatial framework |
| **Tracking** | ARKit | World tracking, plane detection |
| **State** | Combine | Reactive data flow |
| **AI** | Gemini Live / OpenAI Realtime | Visual tutor via tool-calling |
| **Charts** | AstrologyAPI | Structured data provider |

### Technical Principles

- ✅ **Zero third-party packages** — Apple frameworks only
- ✅ **iOS 17+ APIs** — Modern Swift, no legacy
- ✅ **Procedural meshes** — No USDZ assets
- ✅ **Single source of truth** — `ChartGraph` ObservableObject

---

## 📁 Project Structure

```
AstroLens/
├── App/
│   ├── AstroLensApp.swift          # @main entry point
│   └── AppState.swift              # Global state
├── Models/                          # Chart data layer
│   ├── ChartGraph.swift            # Canonical model
│   ├── Planet.swift, House.swift, Sign.swift
│   ├── Nakshatra.swift, Pada.swift
│   ├── Aspect.swift, Axis.swift
│   └── SampleChartData.swift       # V1 hardcoded data
├── Views/                           # SwiftUI interface
│   ├── Onboarding/
│   ├── ChartViewer/
│   ├── Settings/
│   └── Components/
├── Scene/                           # RealityKit visualization
│   ├── GrandClockScene.swift
│   ├── EclipticRing.swift, HouseRing.swift
│   ├── SignRing.swift, NakshatraRing.swift
│   ├── PlanetNode.swift, AspectBeam.swift
│   └── SceneAnimator.swift
├── AR/                              # ARKit integration
│   ├── ARViewContainer.swift
│   └── ARSessionManager.swift
└── AI/                              # AI tutor (stub in V1)
    └── AITutorManager.swift
```

---

## 🚀 Getting Started

### Prerequisites

- Xcode 15+
- iOS 17+ device (for AR features)
- Apple Developer account (for device testing)

### Installation

```bash
# Clone the repository
git clone https://github.com/psychon7/AstroLens.git
cd AstroLens

# Open in Xcode
open AstroLens.xcodeproj
```

### Configuration

1. Sign up for [AstrologyAPI](https://www.astrologyapi.com/) (optional for V1)
2. Add your API key to `Config.plist`
3. Build and run on an iOS 17+ device

---

## 📚 Documentation

Comprehensive specifications are available in the `Docs/` directory:

| Document | Purpose |
|----------|---------|
| `astro_lens_flagship_product_spec.md` | Master product specification |
| `vedic-ar-clock-spec.md` | Visual UX + interaction grammar |
| `vedic-math-viz.md` | Mathematical visualization plan |
| `self-assembly-walkthrough.md` | Full walkthrough script |
| `rork-master-prompt.md` | Complete build prompt |

---

## 🎨 Visual Grammar

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

### Animation Curves

| Animation | Duration | Curve |
|-----------|----------|-------|
| Ring draw | 2.4s | easeInOut |
| Planet drop | 0.8s | spring(damping: 0.7) |
| Detail sheet | 0.35s | spring(damping: 0.85) |
| Scale switch | 0.6s | easeInOut |

---

## 🗺️ Roadmap

### V1 — Foundation
- [ ] Core RealityKit scene with all 5 rings
- [ ] Sample chart data (hardcoded)
- [ ] Onboarding flow
- [ ] Basic AR placement
- [ ] Walkthrough state machine

### V2 — Intelligence
- [ ] AstrologyAPI integration
- [ ] AI tutor with tool-calling
- [ ] Time scrubber & timelapse
- [ ] Full Vedic + Western toggle

### V3 — Expansion
- [ ] Divisional chart lenses (D9, D10)
- [ ] Social sharing
- [ ] Push notifications for transits
- [ ] Apple Watch companion

---

## 🧘 Design Philosophy

> "The best metaphor is a multi-dimensional grand clock."

1. **Calculation is commodity; visualization is moat**
2. **The chart is a living machine, not a flat diagram**
3. **AR is an enhancement of comprehension, not a gimmick**
4. **Guided reveal is more important than completeness**
5. **Every explanation answers: what is active, why, and where do I see it?**

---

## 🤝 Contributing

This is currently a solo project in the specification phase. For inquiries:

📧 Contact: [your-email@example.com]

---

## 📄 License

Copyright © 2024 AstroLens. All rights reserved.

This project is proprietary software. Unauthorized copying, distribution, or use is strictly prohibited.

---

<p align="center">
  <strong>AstroLens — See Astrology in AR</strong><br>
  <em>Built with 💜 for the spatial computing era</em>
</p>
