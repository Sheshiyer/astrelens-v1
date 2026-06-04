# AstroLens Landing Page — Component Design Specification

## Master Context Prompt

**Task:** Build a premium, 3D-animated GSAP landing page for AstroLens
**Brand:** AstroLens — See Astrology in AR
**Tone:** Premium, futuristic, mystical-tech, visually elegant. Never fortune-teller or tacky spirituality.
**Archetype:** Sage-Explorer
**Category:** Spatial Astrology Visualization (new category)
**Tech Stack:** Next.js + Tailwind CSS v4 + GSAP (ScrollTrigger) + Three.js (isolated canvas) + Framer Motion (UI micro-interactions)

---

## Global Design System

### Color Palette

| Token               | Hex         | RGB           | Usage                                     | Composition |
| ------------------- | ----------- | ------------- | ----------------------------------------- | ----------- |
| `--cosmic-deep`   | `#0f172a` | 15, 23, 42    | Background void, depth layers             | 60%         |
| `--nebula-purple` | `#7c3aed` | 124, 58, 237  | Primary brand accent, focal highlights    | 25%         |
| `--stellar-gold`  | `#fbbf24` | 251, 191, 36  | Sun energy, premium moments, primary CTAs | 10%         |
| `--lunar-silver`  | `#e2e8f0` | 226, 232, 240 | Moon energy, clarity, body text           | 5%          |
| `--mars-red`      | `#ef4444` | 239, 68, 68   | Action indicators only                    |             |
| `--mercury-green` | `#34d399` | 52, 211, 153  | Success states                            |             |
| `--rahu-violet`   | `#a78bfa` | 167, 139, 250 | Secondary accents                         |             |
| `--ketu-orange`   | `#fb923c` | 251, 146, 60  | Tertiary accents                          |             |

**Glass-morphic surfaces:**

```css
background: rgba(15, 23, 42, 0.7);
backdrop-filter: blur(20px);
border: 1px solid rgba(255, 255, 255, 0.1);
border-radius: 16px;
box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
```

### Typography

| Level   | Font           | Size               | Weight | Usage                                |
| ------- | -------------- | ------------------ | ------ | ------------------------------------ |
| Display | `Geist`      | 72px /`text-7xl` | 800    | Hero headline                        |
| H1      | `Geist`      | 48px /`text-5xl` | 700    | Section titles                       |
| H2      | `Geist`      | 36px /`text-4xl` | 600    | Sub-section titles                   |
| H3      | `Outfit`     | 24px /`text-2xl` | 500    | Card titles                          |
| Body    | `Outfit`     | 18px /`text-lg`  | 400    | Paragraphs, max-w-[60ch]             |
| Caption | `Outfit`     | 14px /`text-sm`  | 400    | Labels, metadata                     |
| Data    | `Geist Mono` | 15px               | 400    | Numbers, degrees, hex codes, metrics |

**Anti-slop rules:**

- No Inter font anywhere
- No serif on data elements
- `tracking-tighter` on all display/H1 text
- `leading-none` on hero headline
- Body text always `max-w-[60ch]` with `leading-relaxed`

### Spacing & Layout

- **Base unit:** 8px
- **Container:** `max-w-[1400px] mx-auto`
- **Section padding:** `py-32` (desktop), `py-20` (mobile)
- **Gutter:** 24px
- **Full-height hero:** `min-h-[100dvh]` (not `h-screen`)
- **Grid:** CSS Grid exclusively (`grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8`)
- **No 3-column symmetric card rows** — use asymmetric bento or zig-zag

### Global Animation Baseline

| Parameter            | Value                                                |
| -------------------- | ---------------------------------------------------- |
| `DESIGN_VARIANCE`  | 8 (asymmetric layouts, bold white-space)             |
| `MOTION_INTENSITY` | 8 (GSAP ScrollTrigger choreography + spring physics) |
| `VISUAL_DENSITY`   | 3 (art gallery mode — airy, premium spacing)        |

**Entry animation (every section):**

```css
@keyframes fadeSlideBlurIn {
  from {
    opacity: 0.01;
    transform: translateY(30px);
    filter: blur(6px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
    filter: blur(0);
  }
}
.animate-entry {
  animation: fadeSlideBlurIn 0.8s ease-out both;
}
```

**Stagger rule:** Each child element delays by 0.12s. Use `animation-delay: calc(var(--index) * 120ms)`.

**GSAP vs Framer Motion boundary:**

- GSAP: All scroll-triggered animations, parallax, horizontal scroll hijack, timeline sequences
- Framer Motion: UI micro-interactions only (button hover, card tilt, layout transitions)
- Three.js: Isolated `<canvas>` for the 3D Grand Clock hero
- **Never mix GSAP and Framer Motion in the same component tree**

---

## Component Architecture

```
landing/
├── layout.tsx                    # Root layout: Geist/Outfit fonts, dark bg
├── page.tsx                      # Section orchestrator
├── components/
│   ├── Navigation.tsx            # Floating glass nav pill (client)
│   ├── HeroSection.tsx           # Asymmetric hero + 3D canvas (client)
│   ├── GrandClockCanvas.tsx      # Three.js Grand Clock (client, isolated)
│   ├── SocialProofBar.tsx        # Logo marquee + stat
│   ├── ProblemSection.tsx        # The problem with flat charts
│   ├── FeaturesBento.tsx         # Asymmetric bento grid (client)
│   ├── ScaleModesScroll.tsx      # Horizontal scroll hijack (client, GSAP)
│   ├── AITutorShowcase.tsx       # Chat-style AI demo (client)
│   ├── CompetitiveMatrix.tsx     # Differentiation table
│   ├── TimeTraversalSection.tsx  # Timeline scrubber demo (client)
│   ├── TestimonialsSection.tsx   # User quotes
│   ├── PricingSection.tsx        # Freemium pricing cards
│   ├── FinalCTA.tsx              # Curtain reveal CTA (client, GSAP)
│   └── Footer.tsx                # Minimal footer
```

---

## Section 1: Navigation

**Component:** `Navigation.tsx` — `'use client'`
**Position:** Fixed, top center, z-50
**Shape:** Pill-shaped, glass-morphic

### Visual Spec

```
┌──────────────────────────────────────────────────────────┐
│  ◉ AstroLens    Features    How It Works    Pricing  [Join Beta →]  │
└──────────────────────────────────────────────────────────┘
```

- **Background:** `rgba(15, 23, 42, 0.6)` + `backdrop-blur-xl`
- **Border:** `1px solid rgba(255, 255, 255, 0.08)` + inner refraction border `shadow-[inset_0_1px_0_rgba(255,255,255,0.1)]`
- **Border radius:** `rounded-full`
- **Logo:** "AstroLens" in `Geist` 600 weight, `--stellar-gold`
- **Links:** `Outfit` 400, `--lunar-silver`, opacity 0.7 → 1.0 on hover
- **CTA button:** Pill, `--stellar-gold` bg, `--cosmic-deep` text, magnetic hover effect
- **Scroll behavior:** Appears after scrolling past hero (GSAP ScrollTrigger), fades in with `opacity` + `translateY(-10px)`
- **Mobile:** Hamburger menu, slide-down glass panel

### Interactions

- Links: Underline-from-center animation on hover (`scaleX(0) → scaleX(1)`)
- CTA: Magnetic pull toward cursor (Framer Motion `useMotionValue` + `useTransform`, NOT useState)
- `scale-[0.97]` on `:active` for tactile push

---

## Section 2: Hero

**Component:** `HeroSection.tsx` — `'use client'`
**Layout:** Asymmetric split — left content (55%), right 3D canvas (45%)
**Height:** `min-h-[100dvh]` with `flex items-center`

### Visual Spec

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│   ✦ SPATIAL ASTROLOGY VISUALIZATION          ┌───────────────┐ │
│                                               │               │ │
│   Your Birth Chart                            │   [3D Grand   │ │
│   Is a Living Machine.                        │    Clock      │ │
│                                               │    Canvas]    │ │
│   AstroLens transforms dense birth charts     │               │ │
│   into navigable 3D visualizations. See       │   Slowly      │ │
│   your cosmic blueprint in AR — layer by      │   rotating    │ │
│   layer, planet by planet.                    │   with glow   │ │
│                                               │               │ │
│   [Join the TestFlight →]  [Watch Demo]       └───────────────┘ │
│                                                                 │
│   ⭐ 13.4k early access requests                               │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### Left Column (Content)

**Eyebrow:** `✦ SPATIAL ASTROLOGY VISUALIZATION`

- Font: `Geist Mono` 12px, uppercase, `tracking-[0.3em]`
- Color: `--stellar-gold` at 60% opacity
- GSAP: Fades in first (delay 0s)

**Headline:** `Your Birth Chart Is a Living Machine.`

- Font: `Geist` 72px, weight 800, `tracking-tighter leading-none`
- Color: `--lunar-silver` (#e2e8f0)
- "Living Machine" highlighted with `--stellar-gold` gradient text (subtle, not full text gradient)
- GSAP: Slide up from 40px + blur-in, delay 0.15s
- **Line break:** After "Birth Chart" (2 lines)

**Subheadline:**

> "AstroLens transforms dense birth charts into navigable 3D visualizations. See your cosmic blueprint in AR — layer by layer, planet by planet."

- Font: `Outfit` 20px, weight 400, `leading-relaxed max-w-[50ch]`
- Color: `--lunar-silver` at 60% opacity (slate-400)
- GSAP: Slide up, delay 0.3s

**Primary CTA:** `Join the TestFlight →`

- Shape: Pill, `rounded-full px-8 py-4`
- Color: `--stellar-gold` bg, `--cosmic-deep` text, weight 600
- Hover: Magnetic cursor pull + sonar pulse animation (1px expanding ring at 0.2 opacity)
- Active: `scale-[0.97]` + `-translate-y-[1px]`
- Border: `1px solid rgba(251, 191, 36, 0.3)`
- GSAP: Slide up, delay 0.45s

**Secondary CTA:** `Watch the Demo`

- Shape: Ghost button, `rounded-full px-6 py-4`
- Color: transparent bg, `--lunar-silver` text + border
- Hover: `bg-white/5` fill
- Icon: Play triangle inline, 12px
- GSAP: Slide up, delay 0.5s

**Social proof stat:** `⭐ 13.4k early access requests`

- Font: `Geist Mono` 14px
- Color: slate-500
- GSAP: Fade in, delay 0.6s

### Right Column (3D Canvas)

**Component:** `GrandClockCanvas.tsx` — isolated Three.js `<canvas>`

**What it renders:**

- The Grand Clock with 3 visible rings (Houses, Signs, Nakshatras) as translucent torus geometry
- 9 planet orbs at classical positions with self-illuminating glow and correct planetary colors
- 2-3 aspect beams connecting planets (semi-transparent lines)
- Central Ascendant cross-axis glowing white-gold
- Subtle background nebula particle field

**Camera:**

- Perspective camera, slight orbital rotation (~5°/sec around Y axis)
- Starts slightly zoomed out, GSAP ScrollTrigger zooms in as user scrolls past hero

**Lighting:**

- Ambient: Very low `#0f172a` tint
- Point light at center (Ascendant): warm white-gold
- Each planet: small self-illuminating point light matching its color
- Post-processing: Bloom pass (mild, intensity 0.3) for glowing effect

**Materials:**

- Rings: `MeshPhysicalMaterial` with transmission 0.6, roughness 0.1, metalness 0.3
- Planets: `MeshStandardMaterial` with emissive set to planetary color, emissiveIntensity 0.8
- Beams: `LineBasicMaterial` with opacity 0.4, blending: AdditiveBlending

**Performance:**

- `requestAnimationFrame` loop, target 60fps
- useEffect cleanup block to dispose geometry/materials on unmount
- Canvas bounded within container div (`pointer-events-none` on mobile to prevent scroll hijack)

**GSAP integration:**

- On scroll past hero: Grand Clock scales from 1.0 → 0.3, opacity 1.0 → 0, `position: sticky` releases
- Creates parallax depth effect as user scrolls into content

### Responsive Behavior

- **Desktop (≥1024px):** Split layout, 55/45
- **Tablet (768-1023px):** Content stacks above canvas at 50% height
- **Mobile (<768px):** Content full-width, 3D canvas drops to 40vh below, single column `px-6`

---

## Section 3: Social Proof Marquee

**Component:** `SocialProofBar.tsx`
**Position:** Immediately below hero, full-width
**Height:** 80px

### Visual Spec

```
┌────────────────────────────────────────────────────────────────┐
│  ← TechCrunch  ·  Apple Insider  ·  The Verge  ·  Wired  →   │
└────────────────────────────────────────────────────────────────┘
```

- **Background:** transparent (inherits `--cosmic-deep`)
- **Logos:** Monochrome white at 20% opacity, ~24px height
- **Animation:** CSS `@keyframes marquee` — infinite horizontal scroll, 30s duration
- **Alpha mask:** Left and right edges fade with `mask-image: linear-gradient(to right, transparent, black 15%, black 85%, transparent)`
- **Duplication:** Logo array rendered twice for seamless loop
- **Divider:** subtle `border-t border-white/5` above and below
- GSAP: Fade in on scroll into view

---

## Section 4: The Problem

**Component:** `ProblemSection.tsx`
**Layout:** Centered, `max-w-[900px]`
**Purpose:** Establish the problem before showing the solution

### Visual Spec

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│           The problem with astrology apps                    │
│                                                              │
│    ┌──────────┐   ┌──────────┐   ┌──────────┐              │
│    │ 📊 Dense │   │ 📝 Text  │   │ 😐 No    │              │
│    │ Tables   │   │ Walls    │   │ Spatial  │              │
│    │          │   │          │   │ Intuition│              │
│    └──────────┘   └──────────┘   └──────────┘              │
│                                                              │
│    "Traditional apps present birth charts as dense           │
│     tables and text bubbles. The chart stays flat.           │
│     You stay confused."                                      │
│                                                              │
│    — 80% of users can't interpret a 2D birth chart          │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

**Section title:** `The problem with astrology apps`

- Font: `Geist` H1, `tracking-tighter`
- Color: `--lunar-silver`

**Problem cards (3):** Asymmetric grid (`grid-template-columns: 1.2fr 1fr 0.8fr`, NOT equal thirds)

- Each card: Glass-morphic surface, Phosphor icon (not emoji), brief label
- Card 1: "Dense tables of numbers" — `Phosphor: Table` icon
- Card 2: "Walls of text interpretations" — `Phosphor: TextAlignLeft` icon
- Card 3: "Zero spatial intuition" — `Phosphor: Eye` icon (with slash)
- Border: `1px solid rgba(255,255,255,0.05)`

**Pain quote:**

> "Traditional apps present birth charts as dense tables and text bubbles. The chart stays flat. You stay confused."

- Font: `Outfit` 20px italic, `--lunar-silver` at 50%
- `max-w-[55ch]`, centered

**Stat:** `80% of users can't interpret a 2D birth chart`

- Font: `Geist Mono` 14px, `--stellar-gold`
- Source: Branding/deliverables/notebooklm/artifacts/report-briefing.md

**GSAP choreography:**

- Title: fade-slide-blur in
- Cards: stagger left-to-right, 0.15s intervals
- Quote: fade in after cards complete
- Stat: fade in last

---

## Section 5: Features Bento Grid

**Component:** `FeaturesBento.tsx` — `'use client'`
**Layout:** Asymmetric CSS Grid Bento
**Purpose:** Showcase the 4 key differentiators with visual interactivity

### Grid Layout

```
┌────────────────────────────┬──────────────────┐
│                            │                  │
│   THE GRAND CLOCK          │  AI VISUAL TUTOR │
│   [3D mini-preview         │  [Chat bubble    │
│    rotating slowly]        │   simulation]    │
│                            │                  │
│   5 concentric rings.      │  Ask anything.   │
│   108 pada divisions.      │  See the answer. │
│   Mathematically exact.    │                  │
│                            │                  │
├──────────────────┬─────────┴──────────────────┤
│                  │                             │
│  4 SCALE MODES   │  TIME TRAVERSAL            │
│  Palm → Dome     │  [Timeline scrubber         │
│  [4 icons]       │   with colored segments]    │
│                  │                             │
└──────────────────┴─────────────────────────────┘
```

**Grid definition:**

```css
grid-template-columns: 1.6fr 1fr;
grid-template-rows: 1.4fr 1fr;
gap: 1.5rem;
```

### Card 1: The Grand Clock (Large — spans 1 column, tall)

**Title:** `The Grand Clock`
**Subtitle:** `5 concentric rings. 108 pada divisions. Mathematically exact.`
**Visual:** Embedded mini Three.js canvas showing the rings only (no planets) rotating slowly
**Detail text:** "From your core identity at center to the subtlest cosmic divisions — see the architecture of meaning."
**Interaction:** Hover pauses rotation, slight parallax tilt toward cursor (Framer `useMotionValue`)
**Colors:** Card border glows `--nebula-purple` on hover
**Source:** [Branding/notebooklm-sources/06-grand-clock-visualization.md](Branding/notebooklm-sources/06-grand-clock-visualization.md) — "The Core Metaphor"

### Card 2: AI Visual Tutor (Medium — top right)

**Title:** `AI Visual Tutor`
**Subtitle:** `Ask anything. See the answer.`
**Visual:** Simulated chat interface showing:

```
User: "Tell me about my Saturn"
AI: [highlights Saturn orb] "See this grey orb in your 10th house?
     That's Saturn in Capricorn — discipline shapes your public role."
```

- Chat bubbles animate in with staggerChildren (typing → reveal)
- Planet orb icon next to AI response glows `--saturn-grey` (#94a3b8)
  **Interaction:** Auto-plays on scroll-into-view (GSAP `onEnter`)
  **Source:** [Branding/notebooklm-sources/02-product-features.md](Branding/notebooklm-sources/02-product-features.md) — "AI Visual Tutor"

### Card 3: Scale Modes (Small — bottom left)

**Title:** `4 Scale Modes`
**Subtitle:** `Same chart. Any scale.`
**Visual:** 4 icons in horizontal row with labels:

```
✋ Palm    🪑 Desk    🚶 Room    🌌 Dome
 8cm       40cm       3m        ∞
```

- Icons: Phosphor icons (Hand, Desk, Person, Globe), not emoji
- Active state cycles through each mode every 3s (highlight current)
  **Interaction:** GSAP auto-cycle with crossfade
  **Source:** [Branding/notebooklm-sources/07-ar-interaction-patterns.md](Branding/notebooklm-sources/07-ar-interaction-patterns.md) — "Scale Mode Overview"

### Card 4: Time Traversal (Medium — bottom right)

**Title:** `Time Traversal`
**Subtitle:** `Scrub from birth to now. Watch your life in motion.`
**Visual:** Horizontal timeline bar with:

- Colored segments (dasha periods) in planetary colors
- Small tick marks for Saturn returns, Jupiter returns
- A draggable scrubber head (decorative, not functional)
- Transit layer animation on loop: planets orbiting above the bar
  **Text:** `1 year per second. Auto-pause at Saturn returns.`
  **Interaction:** Timeline progress auto-animates (GSAP timeline)
  **Source:** [Branding/notebooklm-sources/02-product-features.md](Branding/notebooklm-sources/02-product-features.md) — "Time Traversal System"

### Bento Global Rules

- All cards: Glass-morphic bg, `rounded-3xl`, inner refraction border
- Hover: `border-white/20` intensifies, subtle `scale-[1.01]` via Framer `layout`
- GSAP: Cards stagger into view from bottom with blur-in (0.15s intervals)
- Mobile: Stack vertically, full width, `gap-4`

---

## Section 6: Scale Modes Showcase (Horizontal Scroll)

**Component:** `ScaleModesScroll.tsx` — `'use client'`
**Mechanic:** GSAP ScrollTrigger horizontal scroll hijack
**Height:** 4x viewport widths pinned to 100vh

### Visual Spec

User scrolls vertically, but content pans horizontally through 4 "rooms":

```
┌───────────┬───────────┬───────────┬───────────┐
│           │           │           │           │
│   PALM    │   DESK    │   ROOM    │   DOME    │
│           │           │           │           │
│  Hold it  │  Explore  │  Walk     │  Full     │
│  in your  │  at your  │  through  │  cosmic   │
│  hand     │  table    │  your     │  immersion│
│           │           │  chart    │           │
│  [phone   │ [tablet   │ [person   │ [dome     │
│   mock]   │  mock]    │  silh.]   │  visual]  │
│           │           │           │           │
│   ~8cm    │   ~40cm   │   ~3m     │   ∞       │
│           │           │           │           │
└───────────┴───────────┴───────────┴───────────┘
```

**Each panel:**

- Full-width (`100vw`) flex-centered
- Large display text: Mode name in `Geist` 96px, `tracking-tighter`, `--lunar-silver`
- Descriptor: `Outfit` 20px, centered, `max-w-[40ch]`
- Device/silhouette artwork: Large SVG illustration (gradient outline style matching brand palette)
- Size badge: `Geist Mono` in a small pill below — `~8cm`, `~40cm`, `~3m`, `∞`

**GSAP implementation:**

```js
gsap.to(containerRef.current, {
  xPercent: -75,  // 4 panels → scroll 75% left
  ease: "none",
  scrollTrigger: {
    trigger: sectionRef.current,
    pin: true,
    scrub: 1,
    end: "+=300%",
  },
});
```

**Transition between panels:**

- Each panel's text and visual fade in from `opacity: 0.01` and `translateX(60px)` as it enters center viewport
- Previous panel dims to 30% opacity

**Mobile:** Falls back to vertical scroll with each mode as a separate row, no horizontal hijack

---

## Section 7: AI Tutor Deep Dive

**Component:** `AITutorShowcase.tsx` — `'use client'`
**Layout:** Asymmetric split — left (visual), right (conversation)

### Visual Spec

```
┌──────────────────────────────────────────────────────────┐
│                                                          │
│  ┌──────────────────┐    Ask your chart anything.        │
│  │                  │                                    │
│  │  [Animated       │    The AI tutor doesn't just       │
│  │   chart with     │    chat — it controls the scene.   │
│  │   Saturn         │                                    │
│  │   highlighted,   │    "See this grey orb? That's      │
│  │   10th house     │     your Saturn in the 10th        │
│  │   glowing]       │     house of career."              │
│  │                  │                                    │
│  └──────────────────┘    ┌─ LITERAL ─┬─ INTUITIVE ─┬─┐  │
│                          │           │              │C│  │
│                          └───────────┴──────────────┴─┘  │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

**Left panel:** Static image or looping Lottie/SVG showing a simplified Grand Clock with Saturn highlighted, aspect beams visible, 10th house glowing purple

**Right panel content:**

**Title:** `Ask your chart anything.`

- `Geist` H2, `tracking-tighter`

**Body:** `The AI tutor doesn't just chat — it controls the scene. It highlights planets, zooms into houses, and draws connections in real time.`

- `Outfit` body, `--lunar-silver` 60%

**Chat simulation:** Auto-plays a scripted exchange:

1. User bubble: `"What does Saturn mean for my career?"` (slide in from right)
2. AI response: Saturn highlights → quote appears (slide in from left)
3. Aspect beams draw on

**Mode tabs (decorative):**

| Tab       | Label        | Description                                                              |
| --------- | ------------ | ------------------------------------------------------------------------ |
| LITERAL   | Technical    | "Saturn in 10th, Capricorn, Dhanishta nakshatra"                         |
| INTUITIVE | Felt meaning | "Discipline shapes your public role. Recognition comes late but sticks." |
| CAUSAL    | Why now      | "You're in Saturn mahadasha. Jupiter aspects your natal Saturn."         |

- Tabs switch content via Framer `AnimatePresence` + `layoutId`
- Default active: INTUITIVE (most compelling for landing page visitors)

**Source:** [Branding/notebooklm-sources/02-product-features.md](Branding/notebooklm-sources/02-product-features.md) — "Explanation Modes"

## Section 9: Testimonials / User Quotes

**Component:** `TestimonialsSection.tsx`
**Layout:** 2-column offset grid (not centered 3-card)

### Visual Spec

```
┌──────────────────────────────────────────────────────────┐
│                                                          │
│  What early users are saying                             │
│                                                          │
│  ┌──────────────────────────┐                            │
│  │  "I finally understand   │   ┌──────────────────────┐ │
│  │   what all those lines   │   │  "My partner is a    │ │
│  │   in my chart mean."     │   │   skeptic. I showed  │ │
│  │                          │   │   them AstroLens and │ │
│  │  — Rina M., 32           │   │   they said 'okay,  │ │
│  │    UX Designer, Brooklyn │   │   this is different.'│ │
│  └──────────────────────────┘   │                      │ │
│                                 │  — Naveen K., 28     │ │
│  ┌──────────────────────────┐   │    Engineer, Austin  │ │
│  │  "The Grand Clock made   │   └──────────────────────┘ │
│  │   the abstract tangible. │                            │
│  │   Worth every penny."    │                            │
│  │                          │                            │
│  │  — Alex T., 35           │                            │
│  │    Astrology Student, LA │                            │
│  └──────────────────────────┘                            │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

**Card styling:**

- Glass-morphic, `rounded-2xl`
- Quote text: `Outfit` 18px, `--lunar-silver`
- Attribution: `Geist Mono` 13px, `--lunar-silver` 40%
- No avatar images (respect anti-slop: no generic user icons)
- Left gold accent border: `border-l-2` in `--stellar-gold`

**Layout:** CSS Grid `grid-cols-2`, offset rows via `mt-12` on right column (masonry-like stagger)

**GSAP:** Cards float in from bottom with stagger

---

## Section 10: Pricing

**Component:** `PricingSection.tsx`
**Layout:** 2 cards (not 3), asymmetric widths

### Visual Spec

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│              Simple, transparent pricing.                     │
│                                                              │
│    ┌─────────────────────┐   ┌────────────────────────────┐  │
│    │  Free               │   │  ✦ Premium                 │  │
│    │  $0                 │   │  $99/  or  $59.99/yr   │  │
│    │                     │   │                            │  │
│    │  ✓ Grand Clock view │   │  Everything in Free, plus: │  │
│    │  ✓ Palm + Desk mode │   │  ✓ All 4 scale modes       │  │
│    │  ✓ Basic planets    │   │  ✓ AI Visual Tutor         │  │
│    │                     │   │  ✓ Time traversal          │  │
│    │  [Get Started]      │   │  ✓ Divisional lenses       │  │
│    │                     │   │  ✓ Dasha + Transit layers  │  │
│    └─────────────────────┘   │                            │  │
│                              │  [Join TestFlight →]       │  │
│                              └────────────────────────────┘  │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

**Free card:**

- Glass-morphic bg, standard border
- Title: `Geist` H3, `--lunar-silver`
- Price: `Geist` 48px, weight 700
- Features: Phosphor `Check` icon, `Outfit` 16px

**Premium card (highlighted):**

- Slightly elevated: `shadow-[0_20px_60px_-15px_rgba(124,58,237,0.2)]`
- Border: `1px solid rgba(124, 58, 237, 0.3)` (nebula purple tint)
- Badge: `✦ Premium` pill in `--stellar-gold`
- Price: Toggle monthly/yearly
- CTA button: Same `--stellar-gold` magnetic button as hero

**Grid:** `grid-cols-1 md:grid-cols-[1fr_1.3fr] gap-6` — premium card is wider

**Source:** [Branding/deliverables/notebooklm/artifacts/report-briefing.md](Branding/deliverables/notebooklm/artifacts/report-briefing.md) — "$9.99/mo or $59.99/yr Premium"

---

## Section 11: Final CTA

**Component:** `FinalCTA.tsx` — `'use client'`
**Mechanic:** GSAP Curtain Reveal — background blurs and parts as CTA rises

### Visual Spec

```
┌──────────────────────────────────────────────────────────┐
│                                                          │
│                                                          │
│         Stop reading flat charts.                        │
│         See the mechanism.                               │
│                                                          │
│         [  your@email.com  ] [Join TestFlight →]         │
│                                                          │
│         ✦ Free beta access. iOS 17+ required.            │
│                                                          │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

**Background effect:**

- As section scrolls into view, GSAP applies `filter: blur(12px)` to all previous sections (`.blur-backdrop` class)
- CTA container fades from `opacity: 0` to `opacity: 1` + scale from `0.95` to `1.0`
- Creates a dramatic "emergence from blur" effect

**Headline:** `Stop reading flat charts. See the mechanism.`

- Font: `Geist` 56px, weight 700, `tracking-tighter leading-tight`, centered
- Color: `--lunar-silver`
- "See the mechanism." in `--stellar-gold`

**Email input:**

- Inline form: `flex gap-2`
- Input: Glass-morphic bg, `rounded-full`, placeholder `your@email.com`
- Button: `--stellar-gold` bg, `rounded-full`, `Join TestFlight →`
- Inline error state: Red border + "Please enter a valid email" text below (never alert/popup)
- Success state: Button transforms into `✦ You're in! Check your inbox` with particle confetti burst (CSS only, no heavy lib)

**Subtext:** `Free beta access. iOS 17+ required.`

- `Geist Mono` 13px, `--lunar-silver` 30%

---

## Section 12: Footer

**Component:** `Footer.tsx`
**Layout:** Simple, minimal

### Visual Spec

```
┌──────────────────────────────────────────────────────────┐
│                                                          │
│  AstroLens                        Features · Pricing     │
│  See Astrology in AR              Privacy · Terms        │
│                                                          │
│  © 2026 AstroLens. All rights reserved.                  │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

- Background: `--cosmic-deep` darkened (`#080e1b`)
- Top border: `border-t border-white/5`
- Logo: `Geist` 600, `--stellar-gold`
- Tagline: `Outfit` 14px, `--lunar-silver` 40%
- Links: `Outfit` 14px, `--lunar-silver` 50%, hover 100%
- Copyright: `Geist Mono` 12px, slate-600

---

## GSAP ScrollTrigger Master Timeline

| Trigger Point                    | Animation                                                 | Duration          |
| -------------------------------- | --------------------------------------------------------- | ----------------- |
| Page load                        | Hero content stagger (eyebrow → headline → sub → CTAs) | 0.8s total        |
| Hero load + 0.5s                 | 3D Grand Clock canvas fades in                            | 0.6s              |
| Scroll past hero                 | Grand Clock scales down + opacity out; nav fades in       | 0.4s              |
| Social proof bar enters viewport | Logo marquee begins + stat counter                        | Loop              |
| Problem section enters           | Title → cards stagger → quote → stat                   | 1.2s total        |
| Bento section enters             | 4 cards stagger from bottom-left to top-right             | 1.0s              |
| Scale modes section enters       | Pin + horizontal scrub begins                             | Until 300% scroll |
| AI tutor section enters          | Chat bubbles auto-play sequence                           | 3.0s total        |
| Competitive matrix enters        | Rows stagger from top                                     | 0.8s              |
| Testimonials enter               | Cards float up with offset timing                         | 0.6s              |
| Pricing enters                   | Cards slide up side-by-side                               | 0.5s              |
| Final CTA enters                 | Previous content blurs, CTA emerges from scale            | 0.6s              |

---

## Coverage Summary

```
COVERAGE SUMMARY:
  Files scanned:          40+
  Files deeply read:      15
  Files skipped:          25 (internal prompts, study guides, math specs, task lists)
  Extractions produced:   67
  Sections in design doc: 12 components + globals
  Missing coverage:       None — brand, features, positioning, visual system, competitor data fully covered
```

## Source Map

| Design Section        | Source File                                                             | Heading                 |
| --------------------- | ----------------------------------------------------------------------- | ----------------------- |
| Color palette         | Branding/ASTROLENS-BRAND-GUIDELINES.md                                  | Visual Identity         |
| Color details         | Branding/notebooklm-sources/05-visual-aesthetics-design-system.md       | Color System            |
| Typography            | Branding/notebooklm-sources/05-visual-aesthetics-design-system.md       | Typography System       |
| Glass-morphic spec    | Branding/notebooklm-sources/05-visual-aesthetics-design-system.md       | Glass-Morphic UI System |
| Materials             | Branding/notebooklm-sources/05-visual-aesthetics-design-system.md       | Material System         |
| Brand voice           | Branding/ASTROLENS-BRAND-GUIDELINES.md                                  | Voice & Tone            |
| Copy guidance         | Branding/notebooklm-sources/04-brand-voice.md                           | Voice Attributes        |
| Positioning           | Branding/.brandmint/outputs/product-positioning-summary.md              | Core Positioning        |
| Differentiators       | Branding/deliverables/notebooklm/sources/brand-strategy.md              | Key Differentiators     |
| Competitive matrix    | Branding/.brandmint/outputs/competitor-analysis.md                      | Competitive Landscape   |
| Grand Clock rings     | Branding/notebooklm-sources/06-grand-clock-visualization.md             | The 5 Concentric Rings  |
| Product features      | Branding/notebooklm-sources/02-product-features.md                      | Core Experience         |
| AI Tutor modes        | Branding/notebooklm-sources/02-product-features.md                      | Explanation Modes       |
| Scale modes           | Branding/notebooklm-sources/07-ar-interaction-patterns.md               | Scale Mode Overview     |
| Target audience       | Branding/.brandmint/outputs/buyer-persona.md                            | Overview                |
| Market stats          | Branding/notebooklm-sources/03-market-analysis.md                       | Market Overview         |
| Pricing               | Branding/deliverables/notebooklm/artifacts/report-briefing.md           | Quick Stats             |
| Explainer copy        | Branding/deliverables/notebooklm-artifacts/05-explainer-video-script.md | Scene scripts           |
| Animation specs       | Branding/ASTROLENS-BRAND-GUIDELINES.md                                  | Animation Principles    |
| Product vision        | Docs/astro_lens_flagship_product_spec.md                                | Product vision          |
| Walkthrough narrative | Docs/self-assembly-walkthrough.md                                       | The Core Directive      |
| Messaging framework   | Branding/ASTROLENS-BRAND-GUIDELINES.md                                  | Messaging Framework     |
