# AstroLens Visual Aesthetics & Design System

## Visual Profile Summary

**Dominant Register:** Balanced-contemporary  
**Archetype Cluster:** Sage-Explorer  
**Confidence:** 0.08 (refined, intentional aesthetic)

### Core Metrics
| Attribute | Value | Interpretation |
|-----------|-------|----------------|
| Composition Density | 0.4475 | Balanced, not overcrowded |
| Temporal Register | 0.4275 | Contemporary with timeless elements |
| Material Richness | 0.47 | Premium materials, tactile quality |
| Visual Boldness | 0.5125 | Confident but not aggressive |
| Editorial vs Commercial | 0.4775 | Editorial sophistication |

### Signal Sources
- Archetype: Sage
- Mood: Premium, mystical, contemplative, futuristic
- Materials: Glass, brass, acrylic, titanium
- Voice: Technical precision

---

## The Sacred-Tech Aesthetic

### Core Concept
AstroLens embodies "sacred-tech" — the intersection of:
- **Ancient wisdom traditions** (astrology, sacred geometry)
- **Modern spatial computing** (ARKit, RealityKit)
- **Luxury instrument design** (premium watches, planetariums)

The aesthetic should feel:
- Like an Apple Watch face designed for a planetarium
- Like a luxury timepiece from the year 2050
- Like sacred geometry made interactive
- Like Interstellar's visualization of higher dimensions

---

## Color System

### Primary Palette

**Cosmic Deep** `#0f172a`
- 60% of composition
- Background void, depth layers
- Creates infinite space feeling
- RGB: 15, 23, 42

**Nebula Purple** `#7c3aed`
- 25% of composition
- Primary brand accent
- Mystical without being garish
- RGB: 124, 58, 237

**Stellar Gold** `#fbbf24`
- 10% of composition
- Sun energy, premium moments
- Warmth against cool void
- RGB: 251, 191, 36

**Lunar Silver** `#e2e8f0`
- 5% of composition
- Moon energy, clarity
- Ethereal highlights
- RGB: 226, 232, 240

### Planetary Colors (Classical System)

| Planet | Hex | RGB | Usage |
|--------|-----|-----|-------|
| Sun | #fbbf24 | 251, 191, 36 | Central orb, primary light |
| Moon | #e2e8f0 | 226, 232, 240 | Silver-white luminance |
| Mars | #ef4444 | 239, 68, 68 | Action, energy |
| Mercury | #34d399 | 52, 211, 153 | Communication, intellect |
| Jupiter | #fde68a | 253, 230, 138 | Expansion, wisdom |
| Venus | #f9a8d4 | 249, 168, 212 | Love, beauty |
| Saturn | #94a3b8 | 148, 163, 184 | Structure, discipline |
| Rahu | #a78bfa | 167, 139, 250 | Shadow, obsession |
| Ketu | #fb923c | 251, 146, 60 | Release, spirituality |

### Color Usage Principles

**Natal vs Transit Differentiation:**
- Natal elements: Solid, brighter, warmer tones
- Transit elements: Translucent, cooler, slightly desaturated
- Visual contrast teaches the temporal relationship

**Emphasis Hierarchy:**
1. User-selected element: Full saturation + glow
2. Related elements: 80% saturation
3. Contextual elements: 50% saturation
4. Background elements: 20% saturation

---

## Material System

### Primary Materials

**1. Translucent Glass**
- Houses, UI cards, rings
- Refractive index: 1.5
- Subsurface scattering for ethereal glow
- Reference: iOS Control Center blur

**2. Polished Brass**
- Accent rings, seals, mechanical elements
- Warm metallic highlights
- Oxidized variation for heritage pieces
- Reference: Vintage scientific instruments

**3. Frosted Acrylic**
- Background panels, secondary UI
- Soft diffusion of light
- Clean, modern, premium
- Reference: Apple Store fixtures

**4. Brushed Titanium**
- Structural elements, axes
- Cool grey with subtle texture
- Aerospace precision feel
- Reference: Premium watch cases

**5. Celestial Crystal**
- Planet orbs, luminous nodes
- Internal refraction and glow
- Variable density based on planetary strength
- Reference: Cut gemstones, lens elements

**6. Luminescent Resin**
- Glow elements, beams, halos
- Self-illuminated, not just reflective
- Energy visualization
- Reference: Bioluminescence, neon

### Material Combinations

**The Grand Clock Stack:**
1. Titanium base structure (axes, frame)
2. Glass rings (houses, signs)
3. Crystal orbs (planets)
4. Resin beams (aspects, connections)
5. Brass accents (dasha mechanism)

**UI Card System:**
- Frosted acrylic background
- Glass border with subtle glow
- Brass accent for premium moments
- Titanium text for data

---

## Typography System

### Font Stack

**Primary: SF Pro Display**
- Weights: Regular, Medium, Semibold, Bold
- Usage: Headers, UI elements, feature names
- Character: Modern, clean, Apple-native

**Secondary: SF Pro Text**
- Weights: Regular, Medium
- Usage: Body copy, descriptions
- Character: Highly readable, friendly

**Display: New York**
- Weights: Regular, Semibold
- Usage: Large hero text, editorial moments
- Character: Elegant, timeless, editorial

**Monospace: SF Mono**
- Usage: Technical data, coordinates, degrees
- Character: Precise, engineering-focused

### Type Scale

| Level | Font | Size | Weight | Usage |
|-------|------|------|--------|-------|
| Hero | New York | 48px | Semibold | Onboarding headlines |
| H1 | SF Pro Display | 34px | Bold | Screen titles |
| H2 | SF Pro Display | 28px | Semibold | Section headers |
| H3 | SF Pro Text | 22px | Semibold | Card titles |
| Body | SF Pro Text | 17px | Regular | Primary content |
| Caption | SF Pro Text | 13px | Regular | Secondary info |
| Data | SF Mono | 15px | Regular | Coordinates |

### Typography Principles

- **Negative space is sacred:** Generous line height (1.5x)
- **Hierarchy through weight, not just size**
- **Monospace for precision:** All astrological data (degrees, minutes)
- **Title case for features:** "Grand Clock", "Time Scrubber"
- **Sentence case for UI:** "See your chart", "Tap to explore"

---

## Composition System

### Density: 0.4475 (Balanced)

**Principle:** Generous negative space. Every element earns its place.

**Spacing Scale:**
- xs: 4px
- sm: 8px
- md: 16px
- lg: 24px
- xl: 32px
- 2xl: 48px
- 3xl: 64px

**Grid System:**
- Base unit: 8px
- Gutter: 24px
- Margin: 48px

### Visual Hierarchy

**Z-Depth Layers:**
1. Background: Cosmic Deep void
2. Distant rings: Houses (most transparent)
3. Middle rings: Signs, Nakshatras
4. Foreground: Planets, UI
5. Overlay: Glass-morphic cards

**Focal Points:**
- Single primary focal point per screen
- Secondary elements support, don't compete
- Progressive disclosure: reveal on interaction

---

## Glass-Morphic UI System

### Card Specification

```
Background: rgba(15, 23, 42, 0.7)
Backdrop Filter: blur(20px)
Border: 1px solid rgba(255, 255, 255, 0.1)
Border Radius: 16px
Shadow: 0 8px 32px rgba(0, 0, 0, 0.3)
```

### States

**Default:**
- Opacity: 0.7
- Border: subtle (0.1 alpha)

**Hover/Active:**
- Opacity: 0.85
- Border: more visible (0.2 alpha)
- Subtle scale: 1.02

**Highlighted:**
- Border glow: brand color (Nebula Purple)
- Opacity: 0.9
- Shadow intensifies

---

## Lighting System

### Ambient Lighting

**Base Environment:**
- Dark void (Cosmic Deep)
- Subtle nebula gradient in background
- No harsh shadows
- Soft, diffuse illumination

**Volumetric Effects:**
- Light rays through rings
- Dust particles (subtle)
- Atmospheric depth

### Element Lighting

**Planets (Luminous):**
- Self-illuminated
- Subsurface scattering
- Soft outer glow
- Color temperature based on planetary nature

**Rings (Translucent):**
- Backlit edges
- Light transmission through material
- Subtle rim lighting

**Beams (Emissive):**
- Self-illuminating
- Gradient fade along length
- Intensity pulses for active aspects

### Light Sources

**Primary:** Central glow (Ascendant/Sun)
**Secondary:** Planet self-illumination
**Accent:** UI highlights, interactive elements
**Atmospheric:** Nebula background, ambient

---

## Animation Principles

### Timing Functions

**Ease-In-Out:** Primary transitions
- Ring appearance: 2.4s
- Aspect beam draw: 2.0s
- Scale mode switch: 0.6s

**Spring:** Interactive elements
- Planet tap: spring(damping: 0.7)
- Detail sheet: spring(damping: 0.85)
- UI response: spring(damping: 0.8)

**Linear:** Continuous motion
- Planet orbit (timelapse)
- Dasha hand rotation
- Transit animation

### Animation Duration Scale

| Animation | Duration | Notes |
|-----------|----------|-------|
| Ring draw | 2.4s | Cinematic entrance |
| House wedge | 0.3s each | Staggered build |
| Planet drop | 0.8s | Weight and mass |
| Aspect beam | 2.0s | Connection formation |
| Detail sheet | 0.35s | Quick feedback |
| Scale switch | 0.6s | Smooth transition |
| Conjunction pulse | 2.0s loop | Energy indicator |

### Animation Principles

1. **Entrance:** Elements should "bloom" into existence, not just appear
2. **Interaction:** Immediate feedback (< 100ms), smooth completion
3. **Continuous:** Subtle ambient motion (breathing, gentle orbit)
4. **Timelapse:** Cinematic pacing, not clinical data playback

---

## Haptic Design

### Interaction Patterns

| Interaction | Haptic | Description |
|-------------|--------|-------------|
| Planet tap | Medium impact | Substantial, important |
| House tap | Light impact | Gentle activation |
| Axis tap | Rigid impact | Structural, significant |
| Walkthrough step | Soft notification | Guidance, not demand |
| Timelapse key | Success | Celebration moment |
| Scale switch | Rigid | Mode change confirmation |
| Scrubber tick | Selection | Year marker feedback |
| Error | Warning | Gentle correction |

### Haptic Philosophy

- **Understated luxury:** Feel premium, not gimmicky
- **Informational:** Each haptic carries meaning
- **Consistent:** Same interaction = same feedback
- **Optional:** Respect accessibility settings

---

## Asset Variant Specifications

Based on visual profile, the following variants are selected:

### 2A: Brand Kit Bento
**Variant:** Standard bento  
**Composition:** Grid layout showcasing all brand elements  
**Materials:** Glass, brass, titanium  
**Aesthetic:** Clean, organized, comprehensive

### 2B: Brand Seal
**Variant:** Oxidized seal  
**Material:** Aged brass with patina  
**Style:** Heritage, established, trustworthy  
**Texture:** Oxidation patterns, weathering

### 2C: Logo Emboss
**Variant:** Stained glass emboss  
**Material:** Leaded glass, metallic frame  
**Style:** Sacred geometry, light transmission  
**Reference:** Gothic cathedral windows

### 3A: Capsule Collection
**Variant:** Architectural lineup  
**Composition:** Products arranged in spatial perspective  
**Lighting:** Dramatic, architectural  
**Reference:** Museum display, gallery presentation

### 3B: Hero Product
**Variant:** Contextual hero  
**Context:** Product in use environment  
**Lighting:** Environmental, natural  
**Reference:** Apple product photography

### 3C: Feature Showcase
**Variant:** Apothecary vial  
**Style:** Scientific, precise, collectible  
**Materials:** Glass, brass, cork  
**Reference:** Vintage scientific instruments

### 4A: Catalog Layout
**Variant:** Technical catalog  
**Style:** Precise, measured, engineering  
**Typography:** Technical, dimensioned  
**Reference:** Aerospace manuals, luxury watch catalogs

### 4B: Flatlay
**Variant:** Precision knolling  
**Arrangement:** 90-degree grid, organized  
**Background:** Neutral, shadow control  
**Reference:** Japanese organization, Dieter Rams

### 5A: Heritage Engraving
**Variant:** Botanical scientific  
**Style:** Vintage scientific illustration  
**Texture:** Etched, engraved  
**Reference:** Ernst Haeckel, vintage astronomy prints

### 5B: Campaign Grid
**Variant:** Duotone campaign  
**Color:** Two-tone (purple/gold)  
**Style:** Bold, graphic, poster-like  
**Reference:** Contemporary campaign aesthetics

### 5C: Art Panel
**Variant:** Illustrative scene  
**Style:** Narrative, atmospheric  
**Medium:** Digital painting  
**Reference:** Syd Mead, sci-fi concept art

### 7A: Contact Sheet
**Variant:** Ritual hands  
**Subject:** Hands interacting with product  
**Lighting:** Dramatic, focused  
**Reference:** Luxury watch advertising

### 8A: Archetype Poster
**Variant:** Seeker split  
**Composition:** Split screen, transformation  
**Style:** Cinematic, narrative  
**Reference:** Film posters, character studies

---

## Quality Bar

### App Store Editorial Standard

**Visual Quality:**
- Every pixel intentional
- No visual clutter
- Consistent material language
- Cinematic lighting

**Interaction Quality:**
- 60fps minimum
- < 100ms touch response
- Meaningful haptics
- Predictable physics

**Brand Quality:**
- Premium positioning
- No generic astrology tropes
- Unique visual identity
- Memorable first impression

**Target Comparison:**
- Apple Watch face design quality
- × Planetarium immersion
- × Luxury instrument precision
- × Spatial computing innovation

---

## Accessibility Considerations

### Visual Accessibility
- High contrast mode available
- Color-blind friendly palettes
- Reduced motion option
- Scalable text (Dynamic Type)

### Interaction Accessibility
- VoiceOver support for all elements
- Alternative input methods
- Clear focus indicators
- Sufficient touch targets (44pt minimum)

---

*AstroLens Visual Design System — Q1 2024*
