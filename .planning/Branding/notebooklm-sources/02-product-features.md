# AstroLens Product Features & User Experience

## Core Experience: The Grand Clock

The Grand Clock is AstroLens's revolutionary visualization metaphor. Unlike traditional 2D birth charts or generic planet displays, the Grand Clock presents astrology as a multi-dimensional instrument with the user at the center.

### The 5 Concentric Rings

**1. Self (Ascendant) - Center**
- Glowing cross-axis representing the user's core identity
- Fixed anchor point for all other elements
- Visual metaphor: "You are at the center of your cosmic blueprint"

**2. Houses - 12 Translucent Wedges**
- 30-degree sectors representing life areas (career, relationships, home, etc.)
- Translucent glass-morphic materials
- Hover to see house number and meaning
- Color intensity indicates planetary activity

**3. Signs - 12 Zodiac Arcs**
- Elemental color coding:
  - Fire (Aries, Leo, Sagittarius): Warm oranges/reds
  - Earth (Taurus, Virgo, Capricorn): Greens/browns
  - Air (Gemini, Libra, Aquarius): Yellows/blues
  - Water (Cancer, Scorpio, Pisces): Blues/purples
- Smooth gradient transitions between signs

**4. Nakshatras - 27 Lunar Mansion Divisions**
- Fine silver radial lines (13°20' each)
- Vedic astrology precision
- Revealed on zoom/interaction
- Optional layer (can be hidden)

**5. Padas - 108 Micro-Divisions**
- Hair-thin lines (3°20' each)
- Ultimate granularity for advanced users
- Zoom-only visibility
- Represents the full Vedic system

---

## Scale Modes

The same chart logic works at multiple physical scales:

### Palm Mode (8cm diameter)
- Quick reference in hand
- Social sharing format
- Minimal UI, maximum visualization
- Perfect for: "Let me show you my chart"

### Desk Mode (40cm diameter)  
- Default analysis scale
- Full feature access
- Comfortable viewing distance
- Perfect for: Daily exploration, learning

### Room Mode (2-3m diameter)
- Life-size immersion
- Walk around your chart
- See planets at eye level
- Perfect for: Deep dives, relationship comparisons

### Dome Mode (entire space)
- Full AR immersion
- Ceiling becomes cosmos
- Standing inside your chart
- Perfect for: Special moments, meditation

---

## Planetary Visualization

### Planet Nodes
Each planet appears as a luminous 3D orb:
- **Position:** Exact longitude on ecliptic ring
- **Height:** Proportional to Shadbala (Vedic strength)
- **Size:** Based on planetary importance in chart
- **Color:** Classical planetary colors

### Classical Planetary Colors
- Sun: Gold (#fbbf24)
- Moon: Silver-white (#e2e8f0)
- Mars: Red (#ef4444)
- Mercury: Green (#34d399)
- Jupiter: Warm yellow (#fde68a)
- Venus: Pink-white (#f9a8d4)
- Saturn: Blue-grey (#94a3b8)
- Rahu: Smoke-violet (#a78bfa)
- Ketu: Flame-orange (#fb923c)

### Conjunction Clusters
When planets are within 15° arc:
- Merge into single glowing cluster
- Pulsing animation indicates multiple energies
- Tap to expand and see individual planets
- Color mixing creates unique hues

---

## Relationship Visualizations

### Aspect Beams
Straight beams connecting planets with angular relationships:
- **Conjunction (0°):** Golden fusion
- **Sextile (60°):** Green flowing lines
- **Square (90°):** Red challenging lines
- **Trine (120°):** Blue harmonious lines
- **Opposition (180°):** Purple dynamic lines

Animation: Beams draw on over 2 seconds (easeInOut)

### Drishti Arcs (Vedic)
Curved beams showing Vedic sight-lines:
- Asymmetrical curves from planet to target
- Angle markers at junction points
- Dashed lines for special drishti (3rd, 10th)
- Optional layer for Western astrology users

### Axis Rods
Luminous diameter rods for major axes:
- **Ascendant-Descendant:** Horizontal self/partnership axis
- **MC-IC:** Vertical public/private axis
- **Rahu-Ketu:** Nodal destiny axis (curved)

---

## Time Traversal System

### Natal Layer (Fixed)
- Birth chart never moves
- Foundation reference point
- Always visible as solid elements

### Transit Layer (Dynamic)
- Current sky positions
- Animated orbital movement
- Compare to natal positions

### Timeline Scrubber
Horizontal bar interface:
- Drag from birth date → today → future
- Colored segments for dasha periods
- Tick marks for significant events
- Real-time transit animation

### Timelapse Mode
"Show me my life in motion"
- Animates from birth to present
- Speed: ~1 year per second
- Auto-pause at key moments:
  - Saturn returns (age 29, 58)
  - Jupiter returns (age 12, 24, 36...)
  - Dasha period changes
- Planets visibly orbit
- Dasha hand ticks forward

---

## AI Visual Tutor

### How It Works
The AI tutor uses tool-calling (not text generation) to control the scene:

**Available Tools:**
- `highlight_planet(planet_name, duration)`
- `zoom_to_ring(ring_number)`
- `show_aspect(planet1, planet2)`
- `animate_transit(planet, date)`
- `focus_house(house_number)`
- `compare_charts(chart1, chart2)`

### Conversation Examples

**User:** "Tell me about my Saturn"

**AI:** [Highlights Saturn orb] "See this grey orb in your 10th house? That's Saturn in Capricorn. Notice the beams connecting to your Sun? That's a sextile—indicating discipline supports your identity."

**User:** "What does that mean for my career?"

**AI:** [Focuses 10th house] "The 10th house represents public career. Saturn here suggests success comes through sustained effort. [Shows time scrubber] Notice how Saturn moves slowly—your recognition builds over time, not overnight."

### Explanation Modes

**Literal Mode:**
"Saturn in 10th, Capricorn, Dhanishta nakshatra"

**Intuitive Mode:**
"Discipline shapes your public role. Recognition comes late but sticks."

**Causal Mode:**
"You're in Saturn mahadasha, and transiting Jupiter aspects your natal Saturn. This is why career opportunities are expanding now."

---

## Guided Walkthroughs

### Onboarding: "First Chart"
1. Enter birth data (date, time, location)
2. AR surface detection (find a flat surface)
3. Grand Clock reveal animation (2.4 seconds)
4. "This is you" - highlight Ascendant
5. "These are your houses" - animate each house wedge
6. "These are your planets" - drop orbs one by one
7. Tutorial complete - free exploration

### Causal Reveal Pattern
Every deep-dive follows:
1. **Tap/Ask** → User initiates
2. **Isolate** → Remove distraction, focus target
3. **Show Chain** → Reveal connections (house, sign, aspects)
4. **Explain** → AI provides context

Example: Saturn deep-dive
1. Tap Saturn
2. Isolate: Hide other planets, dim rings
3. Show: 10th house occupancy, Capricorn sign, aspect beams
4. Explain: Career discipline, delayed but lasting success

---

## Divisional Chart Lenses

Switch between chart views with ripple transition:

**D1 (Rashi):** Base natal chart (default)

**D9 (Navamsa):** Relationships and dharma
- Planets animate to new positions
- Emphasis on Venus and 7th house
- "Relationship lens" mode

**D10 (Dashamsa):** Career focus
- 10th house architecture expands
- Career planets (Saturn, Sun) emphasized
- "Professional lens" mode

Same Grand Clock—different perspective.

---

## Haptic Feedback

Every interaction has subtle haptics:
- Planet tap: Medium impact
- House tap: Light impact
- Axis tap: Rigid impact
- Walkthrough step: Soft notification
- Timelapse key moment: Success notification
- Scale switch: Rigid impact
- Scrubber year tick: Selection tick

---

## Glass-Morphic UI

Translucent interface cards that don't obstruct the 3D scene:

```
Background: rgba(15, 23, 42, 0.7)
Backdrop blur: 20px
Border: 1px solid rgba(255, 255, 255, 0.1)
Border radius: 16px
```

UI Elements:
- Floating panels for planet details
- Bottom sheet for house information
- Timeline scrubber at bottom
- AI tutor chat bubbles
- Settings gear (top right)

---

## Quality Standards

- **60fps minimum** for all animations
- **2-3 second** entrance animations (not instant)
- **Spring physics** for interactive elements
- **Ease-in-out curves** for transitions
- **Premium feel:** Every pixel intentional

Target: Apple Watch face design × planetarium × luxury instrument

---

## Accessibility

- VoiceOver support for all UI elements
- High contrast mode for low vision
- Reduced motion option (static visualizations)
- Alternative input methods (voice commands planned)

---

*AstroLens — The chart is the interface*
