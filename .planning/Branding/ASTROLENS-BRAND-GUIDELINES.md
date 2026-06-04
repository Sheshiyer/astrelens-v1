# AstroLens Brand Guidelines
## See Astrology in AR

---

## 1. Brand Essence

### Mission
Enable anyone—even those with zero astrology knowledge—to visually understand their birth chart through immersive spatial computing.

### Vision
A world where cosmic self-discovery is as intuitive as reading a map.

### Tagline
**"See Astrology in AR"**

### Brand Promise
The multi-dimensional grand clock reveals your cosmic blueprint.

---

## 2. Brand Architecture

### Positioning
AstroLens occupies the white space at the intersection of:
- **AR Wellness Tools** (spatial computing)
- **Astrology Education** (not prediction, but understanding)
- **Premium Design** (Apple Design Award quality)

### Differentiation
| Competitor | They Are | We Are |
|------------|----------|--------|
| Co-Star | Social astrology with text bubbles | Visual education in AR space |
| The Pattern | Psychological text analysis | Spatial understanding through exploration |
| Sanctuary | Human astrologer consultations | Self-guided AI-tutored learning |
| TimePassages | Professional calculation tool | Beautiful, accessible experience |

### Archetype: Sage-Explorer
- **Sage:** Wisdom, knowledge, teaching
- **Explorer:** Discovery, innovation, pushing boundaries

### Brand Attributes
- ✅ Premium
- ✅ Futuristic
- ✅ Mystical-tech
- ✅ Visually elegant
- ✅ Approachable
- ✅ Spatial
- ✅ Intuitive

### Anti-Attributes (What We're NOT)
- ❌ Fortune-teller aesthetic
- ❌ Tacky spirituality
- ❌ Generic horoscope apps
- ❌ Dense technical jargon
- ❌ Mystical mumbo-jumbo

---

## 3. Target Audience

### Primary: The Curious Seeker
- **Age:** 25-40
- **Tech:** iPhone users, early adopters
- **Astrology:** Beginner to intermediate
- **Motivation:** Self-discovery, understanding relationships, appreciation for beautiful tech

**Pain Points:**
- Traditional apps are confusing and text-heavy
- Birth charts look like complex diagrams
- Don't know where to start with astrology
- Want to understand, not just be told predictions

### Secondary: Tech-Forward Practitioner
- **Age:** 28-45
- **Tech:** Very high sophistication
- **Astrology:** Intermediate to advanced
- **Motivation:** Cutting-edge AR/VR, professional tools, teaching others

---

## 4. Visual Identity

### Core Metaphor
**The Multi-dimensional Grand Clock**

A layered instrument with the self at center—not floating planets in space, but a navigable 3D visualization.

### Color System

#### Primary
| Name | Hex | Usage |
|------|-----|-------|
| Cosmic Deep | `#0f172a` | Backgrounds, depth layers |
| Nebula Purple | `#7c3aed` | Primary brand accent |
| Stellar Gold | `#fbbf24` | Sun energy, premium moments |
| Lunar Silver | `#e2e8f0` | Moon energy, clarity |

#### Planetary Colors (Classical)
| Planet | Hex | Swatch |
|--------|-----|--------|
| Sun | `#fbbf24` | 🟡 |
| Moon | `#e2e8f0` | ⚪ |
| Mars | `#ef4444` | 🔴 |
| Mercury | `#34d399` | 🟢 |
| Jupiter | `#fde68a` | 🟡 |
| Venus | `#f9a8d4` | 🩷 |
| Saturn | `#94a3b8` | ⚪ |
| Rahu | `#a78bfa` | 🟣 |
| Ketu | `#fb923c` | 🟠 |

#### Glass-morphic UI
```
Background: rgba(15, 23, 42, 0.7)
Blur: 20px
Border: rgba(255, 255, 255, 0.1)
```

### Typography

#### Font Stack
- **Primary:** SF Pro Display (UI, headings)
- **Secondary:** SF Pro Text (Body copy)
- **Display:** New York (Large hero text)
- **Monospace:** SF Mono (Technical data)

#### Hierarchy
| Level | Font | Size | Weight |
|-------|------|------|--------|
| H1 | SF Pro Display | 34px | Bold |
| H2 | SF Pro Display | 28px | Semibold |
| H3 | SF Pro Text | 22px | Semibold |
| Body | SF Pro Text | 17px | Regular |
| Caption | SF Pro Text | 13px | Regular |
| Mono | SF Mono | 15px | Regular |

---

## 5. Visual Grammar

### The 5 Concentric Rings

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

| Ring | Layer | Division | Visual Treatment |
|------|-------|----------|------------------|
| 1 | **Self** (Ascendant) | Center anchor | Glowing cross-axis |
| 2 | **Houses** | 12 × 30° sectors | Translucent wedge volumes |
| 3 | **Signs** | 12 × 30° zodiac | Elemental color arcs |
| 4 | **Nakshatras** | 27 × 13°20' | Fine silver radial lines |
| 5 | **Padas** | 108 × 3°20' | Hair-thin, zoom-only |

### Visual Elements

| Element | Form | Mathematical Basis |
|---------|------|-------------------|
| Planet | Luminous orb above ring | Longitude + height ∝ Shadbala |
| Conjunction | Fused glow cluster | Planets within 15° arc |
| Aspect | Straight beam between planets | Angular separation (0°, 60°, 90°, 120°, 180°) |
| Drishti | Curved arc beam with angle marker | Vedic sight-line geometry |
| Axis | Luminous diameter rod | 0°–180° or 90°–270° house frame |
| Dasha | Chronograph hand on inner ring | Current planetary period |
| Transit | Outer translucent halo | Current sky positions |
| Resonance Field | 3D height-map mesh | Σ(planetary influence) at each degree |

### Scale Modes

| Mode | Size | Use Case |
|------|------|----------|
| ✋ **Palm** | ~8cm | Quick reference, social demo |
| 🪑 **Desk** | ~40cm | Default analysis, walkthroughs |
| 🚶 **Room** | Room-filling | Stand inside the chart |
| 🌌 **Dome** | Entire space | Immersive, cinematic |

### Animation Principles

| Animation | Duration | Curve |
|-----------|----------|-------|
| Ring draw | 2.4s | easeInOut |
| House wedge build | 0.3s each | easeOut |
| Planet drop | 0.8s | spring(damping: 0.7) |
| Aspect beam draw | 2.0s | easeInOut |
| Detail sheet | 0.35s | spring(damping: 0.85) |
| Scale mode switch | 0.6s | easeInOut |

### Haptic Patterns

| Interaction | Haptic |
|-------------|--------|
| Planet tap | Medium impact |
| House tap | Light impact |
| Axis tap | Rigid impact |
| Walkthrough step | Soft notification |
| Scale mode switch | Rigid impact |

---

## 6. Voice & Tone

### Voice Attributes

**Grounded yet Wondrous**
> Speak with authority but not mysticism.

✅ "Saturn is in your 10th house of career, suggesting themes of discipline."  
❌ "Saturn's karmic energy challenges your life path in mysterious ways."

**Technical yet Accessible**
> Use precise terms but explain them immediately.

✅ "This is your Midheaven (MC)—the highest point in your chart."  
❌ "Your MC indicates professional success." [user wonders: what's MC?]

**Educational, Not Oracular**
> Teach the system, don't deliver pronouncements.

✅ "The 7th house represents partnerships. See how it's opposite your Ascendant?"  
❌ "Your 7th house means you'll find love soon."

### Word Choice

**Use:**
- Visual: see, look, visualize, chart, map, blueprint
- Spatial: center, position, orbit, layer, ring
- Educational: represents, indicates, suggests, symbolizes

**Avoid:**
- Mystical: cosmic energy, vibrations, divine, fate
- Fortune-telling: prediction, will happen, destiny
- Judgmental: good, bad, afflicted, difficult

### Tone by Context

| Context | Tone | Example |
|---------|------|---------|
| Onboarding | Welcoming | "Birth charts can look intimidating. Let's turn yours into something beautiful." |
| Features | Demonstrative | "Tap any planet to see its connections. The beams show you the relationships." |
| AI Tutor | Patient mentor | "See that golden orb? That's your Sun. Notice the beam to Jupiter?" |
| Errors | Calm helper | "We couldn't access your camera. You can still explore in desk mode." |

---

## 7. Messaging Framework

### Headlines
- **Primary:** See Astrology in AR
- **Secondary:** Your Birth Chart, Brought to Life
- **Tertiary:** The Universe, Visualized

### Elevator Pitch
> AstroLens transforms dense birth charts into living, navigable 3D visualizations. Using AR and spatial computing, we turn complex astrological data into an intuitive grand clock metaphor. Our AI tutor guides users through visual exploration, building understanding layer by layer. It's astrology for the spatial computing era.

### Key Messages

**For App Store:**
- Transform your birth chart into a living 3D visualization
- Learn astrology through immersive spatial exploration
- The multi-dimensional grand clock reveals your cosmic blueprint

**For Social:**
- Your chart isn't flat. Neither should your app be.
- Finally, astrology that makes visual sense
- Step inside your birth chart

### Brand Pillars

1. **Visual Intuition** — Understanding emerges from geometry before words
2. **Guided Discovery** — One story, one focus at a time
3. **Spatial Freedom** — Same chart at any scale
4. **Grounded Mysticism** — Symbolism without superstition

---

## 8. Application Examples

### App Store Screenshots
- Show the Grand Clock at multiple scales
- Highlight the AI tutor interaction
- Demonstrate time traversal
- Display glass-morphic UI overlays

### Marketing Assets
- Hero: Grand Clock floating in AR space
- Social: Palm mode being shared between friends
- Email: Time-lapse animation showing life journey

### Product Screenshots
- Clean device frames (iPhone 15 Pro)
- Dark backgrounds to emphasize luminous elements
- Generous negative space
- Subtle depth of field

---

## 9. Quality Bar

This app should feel worthy of **App Store Editorial feature**:

- Every screen, transition, and glow should feel premium and intentional
- The 3D scene IS the product—the UI merely supports it
- Target: Apple Watch face design quality × planetarium × luxury instrument × spatial computing
- 60fps minimum, smooth ease-in-out curves, nothing janky
- First reaction: "I've never seen astrology look like this"

---

## 10. Contact

**Project:** AstroLens  
**Repository:** https://github.com/psychon7/AstroLens  
**Status:** Specification Phase → Development  

---

<p align="center">
  <strong>AstroLens — See Astrology in AR</strong><br>
  <em>Built for the spatial computing era</em>
</p>
