# AstroLens — Flagship Product Spec

## 1. Product vision

AstroLens is an iPhone-first AR astrology product that helps a person with zero chart-reading ability visually understand their chart.

The core idea is not “AI astrology” and not “daily horoscope.”

The product thesis is:

**See astrology in AR.**

AstroLens should make a birth chart feel like a living, navigable, multi-dimensional instrument rather than a flat symbolic diagram. The moat is not chart calculation. The moat is:

- spatial visualization
- visual intuition building
- guided causal walkthroughs
- conversational explanation grounded in chart structure
- premium iPhone-native AR experience

The long-term positioning is broader than Vedic alone. The app should support both:

- Vedic astrology
- Western astrology

with the same core visual engine and interaction grammar.

---

## 2. Core product promise

A user who cannot read a chart at all should be able to:

- enter date, time, and place of birth
- see their chart as a 3D / AR system
- visually understand houses, signs, planets, conjunctions, aspects, axes, nakshatras, padas, and timing systems
- ask questions in plain language
- get explanations from a live conversational AI that highlights the relevant parts of the visualization in real time

The core hidden user question the app must always answer is:

**What should I look at first, and why does it matter?**

---

## 3. Brand decision

**Brand locked:** AstroLens

Reasoning:

- global audience
- easy to say and remember
- communicates “astrology + seeing / visualizing”
- fits AR sky mode and chart visualization
- broad enough to include Vedic and Western astrology
- strong for short-form social content

Recommended brand line:

**AstroLens — See Astrology in AR**

Tone:

- premium
- futuristic
- mystical-tech
- visually elegant
- not fortune-teller / not tacky spirituality

---

## 4. Strategic product wedge

The product wedge is:

**A spatial visual reasoning engine for astrology.**

Not just a chart app.
Not just an AI explainer.
Not just AR gimmickry.

AstroLens wins by turning symbolic complexity into visual intuition.

The user should not merely receive interpretations. They should be able to see why an interpretation emerges from the structure of the chart.

That means the product must prioritize:

1. causal reveal
2. guided simplification
3. multi-layer visualization
4. conversational visual tutoring

---

## 5. High-level product architecture

The flagship should be built as one product, but internally split into clean layers.

### 5.1 Calculation layer

Use **AstrologyAPI** for calculation and raw astrology data.

Reason:

- fast to integrate
- avoids building chart-calculation infrastructure from scratch
- good enough for structured chart computation
- frees product focus for visualization + UX + interpretation

AstrologyAPI should be treated as a structured data provider, not as the product moat.

### 5.2 Internal chart graph layer

Normalize all incoming chart data into AstroLens’s own chart graph.

This internal graph becomes the canonical model for:

- rendering
- interaction
- highlighting
- explanations
- AR scene generation
- comparison between natal / transit / divisional layers

### 5.3 Visualization engine

iPhone-native 3D / AR visualization built with:

- SwiftUI for app shell where needed
- RealityKit for 3D / AR scene rendering
- ARKit for world tracking and placement

### 5.4 Conversational AI layer

Use a live conversational model with tool-calling capability to act as a visual tutor.

The AI should never calculate astrology itself. It should only interpret the structured chart graph and call visualization tools.

Potential providers:

- Gemini Live
- OpenAI Realtime

The AI role is:

- guided walkthrough
- plain-language explanation
- causal explanation
- question answering
- scene control through tool calls

### 5.5 App shell / build workflow

Use modern AI coding workflows aggressively:

- Codex
- Claude Code
- Rork Max app builder for app scaffolding / UI acceleration

But keep native AR and scene logic clean and modular.

---

## 6. Input model

The user-facing onboarding should feel simple, but the backend input must be complete.

### Required birth inputs

- date of birth
- time of birth
- place of birth

### Resolved internal fields

- latitude
- longitude
- timezone
- astrology system selection
- house system if applicable
- ayanamsa for Vedic mode

The product UI should keep the front door simple while ensuring reliable chart generation.

---

## 7. The core visualization concept

## The correct metaphor: a multi-dimensional grand clock

Do **not** visualize the chart primarily as floating planets in space.

That may look cool, but it teaches poorly.

The correct core metaphor is:

**a multi-dimensional grand clock / living symbolic instrument**

This is the system that makes astrology understandable to non-experts.

### Core stack of layers

At the center is the self / ascendant anchor.

Then outward:

1. **Houses** — 12 major life sectors
2. **Signs** — 12 tonal overlays
3. **Nakshatras** — 27 refined divisions in Vedic mode
4. **Padas** — 108 micro-segments in Vedic mode
5. **Transit weather halo** — live moving outer layer

Across these layers:

- planets = luminous actors
- conjunctions = fused clusters
- aspects / drishti = beams or influence lines
- axes = diameters / polar tensions
- Rahu–Ketu = karmic nodal spine
- dasha = timing hand / chronograph mechanic
- divisional charts = alternate interpretive lenses

The product should feel like one living machine, not disconnected screens.

---

## 8. The visual grammar

Every major astrological concept needs a simple visual meaning.

### Mapping

- **Planet** = actor
- **House** = where in life
- **Sign** = how it behaves
- **Nakshatra** = deeper operating pattern
- **Pada** = micro-expression
- **Conjunction** = actors fused
- **Aspect** = influence line
- **Axis** = polarity / tension
- **Dasha** = what is in charge now
- **Transit** = what is currently pressing on the system

If a user taps any element, the scene must reconfigure to show that logic visually.

---

## 9. Core visualization modes

### 9.1 Chart mode

A legible chart visualization for initial onboarding and inspection.

Purpose:

- give overview
- allow tapping any object
- bridge conventional chart understanding to AstroLens’s visual system

### 9.2 3D dome mode

A geocentric immersive dome around the user or device.

Purpose:

- turn chart structure into a spatial system
- show rings, layers, and live relationships
- make aspects and axes intuitive

### 9.3 Relationship mode

Focuses on causality and interaction rather than full chart display.

Shows:

- conjunction clusters
- aspects / drishti
- axis beams
- nodal line
- active tensions
- active yogas / patterns

### 9.4 AR mode

Place the chart into the real world.

Purpose:

- make the chart physically navigable
- increase emotional immersion
- enable walkthrough and storytelling

In AR, houses can become sectors or portals, planets can hover as luminous nodes, and active lines can stretch through the room.

---

## 10. Scale modes

The same chart system should work at multiple scales.

### 10.1 Palm mode

A small chart hovering near the hand.

Best for:

- quick inspection
- portable interaction
- social-demo moments

### 10.2 Desk mode

Default tabletop AR experience.

Best for:

- analysis
- explanations
- time scrubbing
- guided walkthrough

### 10.3 Room mode

The user stands inside the chart.

Best for:

- immersive learning
- high emotional impact
- premium wow factor

### 10.4 Dome mode

The room becomes the chart.

Best for:

- flagship demos
- App Store editorial wow factor
- cinematic walkthroughs

Important principle:

**same chart, same logic, same visual grammar — only the scale changes.**

---

## 11. The killer interaction pattern: causal reveal

The product should never just dump information.

The best interaction is:

**tap or ask → scene isolates only the relevant causal chain**

Example for Saturn:

1. show where Saturn is
2. show which house it occupies
3. show which sign it is in
4. show its nakshatra and pada if relevant
5. show what it rules
6. show planets conjunct or aspecting it
7. show which axis becomes active
8. show dasha / transit activation
9. explain in plain language

This is how a complete beginner starts building intuition.

---

## 12. Time traversal and timelapse system

The grand clock is not a static snapshot. It is a living instrument that moves with time.

The user should be able to:

- see the chart frozen at the moment of birth (natal)
- scrub forward through time from birth to now
- see the chart at any arbitrary date between birth and present
- continue scrubbing into the future
- play a continuous timelapse that animates the chart evolving over months or years

### 12.1 The core time model

The chart always has two temporal layers:

1. **Natal layer** — fixed. The birth chart never moves. This is the base geometry.
2. **Transit layer** — moving. Current sky positions, overlaid on the natal chart. This layer responds to time.

When the user scrubs time, only the transit layer moves. The natal layer stays locked. The visual contrast between what is fixed (your birth chart) and what is moving (the sky now) is the key teaching moment.

Additionally, these time-dependent systems animate with the scrub:

- **Dasha periods** — the dasha hand / chronograph ring rotates to show which planetary period is active at the selected time
- **Planetary transits** — outer halo nodes glide to their positions at the selected date
- **Aspect activations** — transit-to-natal aspect beams appear and disappear as transits form and break exact angles
- **Retrograde motion** — planets visibly reverse direction during retrograde periods

### 12.2 Time scrub interaction

A **timeline scrubber** anchored at the bottom of the screen.

- Left end = birth date
- Right end = today (or a configurable future date)
- Dragging the scrubber moves the transit layer in real time
- The grand clock visually responds as the user drags — planets glide, beams appear and fade, the dasha hand ticks forward

The scrubber should show:

- major dasha period boundaries as colored segments
- significant transit events as subtle tick marks (Saturn return, Jupiter return, Rahu–Ketu axis shifts, eclipses)

Tapping a tick mark snaps to that date and the AI explains why it matters.

### 12.3 Timelapse mode

The hero cinematic feature:

**"Show me my life in motion"**

The user triggers timelapse and the grand clock begins animating forward from birth to now at accelerated speed.

Visual behavior:

- Transit planets orbit around the natal chart at visible speed
- Dasha hand ticks through periods — the active planet's color washes the chronograph ring
- Aspect beams flash on and off as transits form exact angles to natal planets
- The resonance field (if visible) ripples and reshapes as transits shift the energy landscape
- Key moments auto-pause briefly with a subtle pulse and optional AI annotation

Speed controls:

- default: ~1 year per second (a 30-year life plays in ~30 seconds)
- user can pinch to slow down or speed up
- double-tap pauses at the current frame
- the user can scrub manually from any paused frame

### 12.4 Key life moments

The system should detect and optionally highlight significant transit moments:

- Saturn return (~ages 29, 58)
- Jupiter return (~every 12 years)
- Rahu–Ketu axis reversal (~every 18 years)
- Eclipse conjunctions to natal planets
- Major dasha period transitions
- Transit conjunctions to natal Sun, Moon, or Ascendant

These moments can appear as **glowing markers** on the timeline and as **pulse events** during timelapse playback.

### 12.5 AI integration with time

The conversational AI should support time-aware queries:

- "What was happening in my chart in 2019?"
- "Show me my Saturn return"
- "Play my chart from age 20 to 30"
- "Why was 2016 difficult?"
- "What's coming up in the next year?"
- "Pause — explain what just happened"

The AI scrubs to the relevant time, freezes the scene, highlights the active transits, and explains the causal chain.

### 12.6 Design principles for time

- Natal layer is always visually distinct from transit layer (natal = solid/bright, transits = translucent/cooler-toned)
- Time scrubbing must feel smooth and responsive — no loading screens between dates
- Timelapse should feel cinematic, not clinical — orchestral pacing, not a data dump
- The user should never lose orientation: the natal chart is always the anchor, transits move around it

---

## 13. Guided walkthrough system

The hero feature should be:

**Walk me through my chart**

This should feel like a museum guide or cinematic guided tour.

### Suggested walkthrough order

1. **Ascendant / chart anchor**

   - what the starting point is
   - how the chart is organized
2. **Most emphasized houses**

   - where life energy concentrates
3. **Planetary clusters / conjunctions**

   - where themes are fused
4. **Dominant axis**

   - show the strongest polarity in the chart
5. **Current timing layer**

   - dasha and/or transit activation
6. **Top life themes**

   - synthesized themes based on structure
7. **Open conversational mode**

   - user asks questions naturally

The system must always prioritize progressive reveal over full complexity.

---

## 14. Beginner-first explanation philosophy

AstroLens should be built for people with zero chart literacy.

That means:

- one story at a time
- one active focus at a time
- one highlighted causal structure at a time

Avoid showing everything at once by default.

The user should not enter a screen and see all beams, all houses, all overlays, all labels, and all possible interpretations.

Default modes should reduce noise aggressively.

There can be an expert mode later, but the beginner experience must remain the heart of the product.

---

## 15. Vedic and Western support model

AstroLens should support both Vedic and Western astrology as parallel systems rendered through the same visual engine.

### Vedic support goals

- houses
- signs
- planets / grahas
- nakshatras
- padas
- conjunctions
- aspects / drishti
- Rahu / Ketu
- dashas
- yogas
- transit overlays
- divisional charts as lenses

### Western support goals

- natal chart
- houses
- signs
- planets
- aspects
- transits
- synastry potential later
- modern interpretation overlays

### Product principle

The user should feel that AstroLens is one visual engine that can render different symbolic systems, not a patchwork of different mini-apps.

---

## 16. Divisional charts and alternate layers

Do not treat divisional charts as separate dead-end pages.

Instead, treat them as **lenses** over the same visual engine.

Examples:

- D1 = base life lens
- D9 = deeper relationship / dharma lens
- D10 = career lens

The user should be able to switch lenses and see the chart world transform, while the interaction model stays familiar.

This is strategically superior to forcing users to learn multiple disconnected interfaces.

---

## 17. AI role and guardrails

The AI must behave as a **visual tutor**, not an all-knowing mystical oracle.

### What the AI should do

- explain selected chart elements
- answer user questions in plain language
- guide the walkthrough
- simplify complexity
- surface the relevant visual layers
- compare natal vs transit / lens-based interpretations
- explain causality clearly

### What the AI should not do

- calculate astrology from scratch
- hallucinate unsupported chart facts
- ignore the structured chart graph
- overwhelm with generic spiritual fluff

### Explanation modes

The AI should support multiple styles:

1. **Literal mode**

   - technical / structural explanation
2. **Beginner mode**

   - simple and accessible
3. **Causal mode**

   - why this interpretation emerges
4. **Visual mode**

   - “show me where this comes from”

Every explanation should be able to trigger visual changes in the scene.

---

## 18. Example user prompts the system should handle

- Show me my chart
- Walk me through my whole chart
- Why is career highlighted?
- Why is this relationship axis strong?
- What does this conjunction mean?
- Explain like I know nothing
- Show only career-related things
- Is this because of natal placement or transit?
- Zoom into the pada
- Compare D1 and D9 visually
- What is active right now?
- Why does Saturn matter so much in my chart?
- Show me my chart in 2019
- Play my life from birth to now
- What was happening during my Saturn return?
- Show me the next 2 years
- Why was 2016 so intense?
- Pause — what just happened?

---

## 19. Internal chart graph concept

AstrologyAPI output should be normalized into a reusable internal model.

High-level conceptual entities:

- chart
- planets
- houses
- signs
- nakshatras
- padas
- conjunctions
- aspects
- axes
- nodes
- yogas / patterns
- timing states
- interpretation references

The key is not the exact schema yet, but the principle:

**visualization and AI must both read from the same structured source of truth.**

---

## 20. Example tool-driven AI interaction contract

The live model should work through structured tool calls such as:

- get chart snapshot
- highlight planet
- highlight house
- highlight axis
- highlight conjunction
- highlight aspect
- highlight pada
- compare natal vs transit
- change scale mode
- switch astrology system
- switch chart lens
- explain current selection
- scrub time
- play timelapse
- pause timelapse
- set timelapse speed
- jump to date
- show transit at date
- highlight key life moment

This makes the AI inspectable and keeps visual interaction tightly coupled to reasoning.

---

## 21. UX principles

### 21.1 One center of gravity

Every scene must have a clear primary focal point.

### 21.2 Progressive reveal

Do not expose all complexity at once.

### 21.3 Visual before textual

Meaning should emerge visually first, then verbally.

### 21.4 Same grammar everywhere

The user should not have to relearn the interface across scales or systems.

### 21.5 Beauty matters

This should feel like a flagship iPhone-native experience worthy of App Store feature consideration.

The aesthetic target is:

- dark premium background
- luminous orbital / symbolic lines
- cinematic glows
- elegant typography
- minimal clutter
- sacred-tech feel

---

## 22. Product experience summary

AstroLens should feel like this:

- You enter your birth data.
- Your chart appears as a living grand clock.
- You point, tap, zoom, or walk around it.
- The app highlights one meaningful structure at a time.
- You ask questions naturally.
- The AI explains only what is relevant.
- You begin to intuitively understand the chart.

That is the core magic.

---

## 23. Why this can win

Most astrology apps do one of these:

- generic content and horoscope feed
- dense static charts
- text-heavy interpretations
- attractive but shallow visualizations

AstroLens can win by doing something most existing products do not do well:

**teach visual intuition through immersive, causal, interactive chart exploration.**

That is the differentiation.

---

## 24. Product positioning statement

**AstroLens is an iPhone-native AR astrology experience that lets anyone see, explore, and understand their chart through immersive 3D visualization and live AI-guided walkthroughs.**

---

## 25. Immediate build direction

### Build now

- brand system under AstroLens
- AstrologyAPI integration
- normalized chart graph
- core multi-dimensional grand clock visualization
- beginner-first guided walkthrough
- conversational tutor with tool control
- AR scale modes
- time traversal scrubber and timelapse playback

### Keep as future expansion

- deeper divisional chart coverage
- social sharing of chart walkthrough moments
- Western + Vedic system expansion depth
- expert mode
- creator mode / content export
- synastry / compatibility layers

---

## 26. Non-negotiable product principles

1. Calculation is commodity; visualization is moat.
2. The chart is a living machine, not a flat diagram.
3. The best metaphor is a multi-dimensional grand clock.
4. The product must build visual intuition for total beginners.
5. The AI is a grounded visual tutor, not the source of truth.
6. AR is an enhancement of comprehension, not a gimmick.
7. One visual engine should support both Vedic and Western astrology.
8. Same logic, same grammar, different scales.
9. Guided reveal is more important than completeness.
10. Every explanation should answer: what is active, why, and where do I see it?
11. The chart is alive in time — the user should be able to scrub from birth to now and see the clock respond.

---

## 27. One-line north star

**Make astrology finally visible.**
