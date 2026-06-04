# AstroLens AR Interaction Patterns & Scale Modes

## Core Principle

**Same chart, same logic, same visual grammar — only the scale changes.**

The Grand Clock visualization adapts seamlessly across four physical scales, each optimized for different use cases while maintaining consistent interaction patterns.

---

## Scale Mode Overview

| Mode | Size | Primary Use Case | Key Feature |
|------|------|------------------|-------------|
| **Palm** | ~8cm diameter | Quick reference, social sharing | Portable, immediate |
| **Desk** | ~40cm diameter | Default analysis, learning | Comfortable, detailed |
| **Room** | 2-3m diameter | Immersive exploration | Walk-through experience |
| **Dome** | Entire space | Cinematic showcase | Full immersion |

---

## Palm Mode (✋)

### Physical Specifications
- Diameter: 8-10cm
- Distance from user: 30-40cm (arm's length)
- Field of view: ~15°

### Use Cases
1. **Quick Reference:** Check chart on-the-go
2. **Social Sharing:** "Let me show you my chart"
3. **Discreet Viewing:** Public spaces, commutes
4. **Introduction:** First-time user experience

### Visual Simplification

**What's Visible:**
- ✅ Houses (12 wedges, simplified)
- ✅ Signs (color arcs only)
- ✅ Planets (larger orbs, prominent)
- ✅ Major aspects (conjunctions, oppositions)
- ❌ Nakshatras (hidden)
- ❌ Padas (hidden)
- ❌ Minor aspects (hidden)

**Visual Treatment:**
- Simplified materials (less detail)
- Thicker lines for legibility
- Larger touch targets (planets)
- Minimal UI overlay

### Interaction Patterns

**Gestures:**
- **Single tap:** Select planet/house
- **Double tap:** Reset view to center
- **Pinch:** Zoom (limited range)
- **Rotate:** Manual chart rotation
- **Swipe:** Navigate between planets

**AI Tutor:**
- Voice-first interaction (hands occupied)
- Concise explanations (3-5 sentences)
- Quick facts mode

### Social Features

**Share Moment:**
1. User positions chart in palm
2. Taps "Share" button
3. Captures AR view + user hand
4. Generates social-ready image
5. One-tap share to Instagram, TikTok, etc.

**Demo Mode:**
- "Show a friend" tutorial
- Simplified explanations
- Impressive visuals in compact form

### Technical Considerations

**Performance:**
- Lowest polygon count
- Simplified shaders
- 60fps on all devices

**Tracking:**
- Hand tracking (preferred)
- Surface placement (fallback)
- Stable at arm's length

---

## Desk Mode (🪑)

### Physical Specifications
- Diameter: 40-50cm
- Distance from user: 50-80cm
- Field of view: ~35°

### Use Cases
1. **Daily Exploration:** Primary app usage
2. **Learning:** Understanding chart structure
3. **Time Scrubbing:** Transit analysis
4. **AI Walkthroughs:** Guided tutorials

### Visual Detail

**What's Visible:**
- ✅ All houses (full detail)
- ✅ All signs (with glyphs)
- ✅ All planets (full detail)
- ✅ All aspects (configurable)
- ✅ Nakshatras (on zoom)
- ❌ Padas (hidden)

**Visual Treatment:**
- Full material detail
- Glass, brass, titanium visible
- UI cards overlay (glass-morphic)
- Timeline scrubber at bottom

### Interaction Patterns

**Gestures:**
- **Single tap:** Select element
- **Two-finger tap:** Compare elements
- **Pinch:** Zoom in/out (reveal nakshatras)
- **Pan:** Move around chart
- **Two-finger rotate:** Rotate chart

**Timeline Scrubber:**
- Bottom-mounted horizontal bar
- Drag to scrub through time
- Shows date and key events
- Tap markers to jump to moments

### UI Layout

**Bottom Sheet:**
- Planet/house details
- Aspect information
- AI tutor chat
- Collapsible

**Top Bar:**
- Current date/time
- Scale mode selector
- Settings gear
- Share button

**Floating Controls:**
- Play/pause (timelapse)
- Speed control
- Layer toggles (nakshatras, aspects)

### AI Tutor Behavior

**Modes:**
- **Guided Tour:** Step-by-step walkthrough
- **Question & Answer:** Natural conversation
- **Deep Dive:** Detailed exploration
- **Comparison:** Natal vs transit

**Visual Control:**
- Highlights elements via tool calls
- Scrubs timeline to relevant dates
- Zooms to appropriate level
- Isolates for clarity

---

## Room Mode (🚶)

### Physical Specifications
- Diameter: 2-3 meters
- User position: Inside/near chart
- Field of view: ~90°

### Use Cases
1. **Immersive Learning:** Walking through chart
2. **Relationship Comparison:** Side-by-side charts
3. **Therapeutic Use:** Meditation, contemplation
4. **Premium Experience:** Wow factor

### Visual Immersion

**What's Visible:**
- ✅ All chart elements (full detail)
- ✅ Nakshatras (always visible)
- ✅ Padas (on close inspection)
- ✅ Full aspect web
- ✅ Axis rods as room-scale elements

**Visual Treatment:**
- Human-scale planets (orb size ~10cm)
- Walkable space between rings
- Atmospheric lighting
- Floor reflection

### Interaction Patterns

**Locomotion:**
- **Walk:** Physical movement through chart
- **Teleport:** Tap to move to location
- **Rotate:** Turn body to face elements
- **Crouch/Kneel:** Examine lower elements

**Gestures:**
- **Point:** Aim at element to select
- **Grab:** Physically "hold" planets
- **Push/Pull:** Move closer/further
- **Wave:** Dismiss UI

### Spatial Audio

**3D Audio Design:**
- Planets emit subtle tones (based on planetary nature)
- Aspects create harmonic relationships
- Dasha hand ticking audible
- Spatial voice from AI tutor

**Audio Cues:**
- Approach planet → tone intensifies
- Active aspect → harmonic chord
- Time scrub → ticking accelerates

### Room-Scale Features

**Walkthrough Mode:**
1. AI guides user to starting position
2. Narrates as user walks between elements
3. Stops at key points for explanation
4. Suggests next destination

**Relationship Comparison:**
- Two charts side-by-side
- Walk between them
- Compare corresponding houses
- Visual connections between charts

### Safety Considerations

**Boundary System:**
- Passthrough boundary visible
- Soft warning when approaching walls
- Auto-pause if user moves too far
- Chair/furniture detection

---

## Dome Mode (🌌)

### Physical Specifications
- Scale: Entire room becomes the chart
- Ceiling: Outer cosmos layer
- Floor: Center anchor
- Walls: Ring structure

### Use Cases
1. **Cinematic Demos:** App Store videos
2. **Meditation:** Full immersion
3. **Events:** Gallery installations
4. **Vision Pro Preview:** Future platform

### Visual Spectacle

**Ceiling (Outer Space):**
- Transit planets orbit overhead
- Stars and nebula backdrop
- Distant galaxies
- Immersive cosmic environment

**Floor (Grounding):**
- Ascendant anchor point
- Personal space
- UI control center
- Safe zone marker

**Walls (Ring Structure):**
- Curved house wedges
- Sign gradients wrapping room
- Aspect beams crossing space

### Cinematic Features

**Intro Sequence:**
1. Dark void
2. Single point of light (birth moment)
3. Rings bloom outward
4. Planets drop into position
5. Full Grand Clock revealed

**Timelapse Cinema:**
- Life plays as cosmic ballet
- Planets orbit visibly
- Dasha hand sweeps
- Key moments pulse with light

**Ambient Mode:**
- Slow rotation
- Gentle breathing animation
- Subtle audio atmosphere
- Living art installation

### Vision Pro Future

**Eye Tracking:**
- Look at element to select
- Gaze-based tooltips
- Natural interaction

**Hand Gestures:**
- Pinch to grab
- Open hand to release
- Two hands to scale
- Wrist flick for menu

**Full Immersion:**
- No passthrough (optional)
- Complete cosmic environment
- Body tracking integration

---

## Cross-Scale Consistency

### Universal Gestures

All scales support:
- **Tap to select**
- **Pinch to zoom** (with appropriate range)
- **Two-finger rotate**
- **Long press for context menu**

### Visual Continuity

**Transition Between Scales:**
- Smooth animation (0.6s)
- Elements scale proportionally
- Maintain selected element focus
- UI adapts to new context

**Consistent Elements:**
- Same planetary colors
- Same aspect line styles
- Same house numbering
- Same typography

### AI Tutor Adaptation

**Palm Mode:**
- Voice-first
- Concise (30 seconds max)
- Quick facts

**Desk Mode:**
- Balanced voice + visual
- Standard explanations (1-2 minutes)
- Interactive guidance

**Room/Dome Mode:**
- Spatial audio
- Immersive narration
- Extended exploration (5+ minutes)

---

## AR Technical Implementation

### ARKit Features Used

**World Tracking:**
- Plane detection (horizontal surfaces)
- Scene understanding
- Lighting estimation

**Surface Placement:**
- Automatic plane finding
- Manual placement override
- Surface classification (table, floor)

**People Occlusion:**
- Realistic depth
- User presence in scene
- Safety awareness

### Performance Optimization

**Level of Detail (LOD):**
- Palm: LOD 0 (simplified)
- Desk: LOD 1 (standard)
- Room/Dome: LOD 2 (full detail)

**Occlusion Culling:**
- Don't render hidden elements
- Frustum culling for Room/Dome
- Distance-based detail reduction

**Thermal Management:**
- Reduce quality if device heats
- Automatic scale downgrade
- User notification

### Tracking Quality

**Good Tracking:**
- Well-lit environment
- Textured surfaces
- Moderate movement

**Degraded Tracking:**
- Dim lighting
- Featureless surfaces
- Rapid movement

**Fallback Modes:**
- 3D mode (non-AR) available
- Simplified tracking
- Warning to user

---

## Accessibility in AR

### Visual Accessibility

**High Contrast Mode:**
- Increased opacity
- Stronger borders
- Reduced transparency

**Large Elements:**
- Bigger touch targets
- Thicker lines
- Larger text

### Motor Accessibility

**Extended Targets:**
- Larger hit areas
- Magnetic snapping
- Sticky selection

**Alternative Input:**
- Voice commands
- Switch control
- Eye tracking (future)

### Cognitive Accessibility

**Reduced Motion:**
- Static visualizations
- No automatic animation
- User-controlled movement

**Simplified Mode:**
- Fewer elements visible
- Clearer labels
- Step-by-step guidance

---

## Scale Mode Selection Guide

### Automatic Selection

**App decides based on:**
- Available space
- Lighting conditions
- Device capabilities
- User preference (learned)

### Manual Override

**User can always switch:**
- Scale button in top bar
- Cycle through modes
- Preview before confirming

### Recommended Usage

| Situation | Recommended Mode |
|-----------|------------------|
| First launch | Desk |
| Quick check | Palm |
| Learning session | Desk |
| Sharing with friend | Palm or Desk |
| Deep meditation | Dome |
| Relationship comparison | Room |
| Public demo | Desk or Dome |

---

*AstroLens AR Interaction System — Spatial Computing Guide*
