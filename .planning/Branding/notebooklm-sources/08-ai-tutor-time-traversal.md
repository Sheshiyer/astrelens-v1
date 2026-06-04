# AstroLens AI Visual Tutor & Time Traversal System

## AI Visual Tutor: Core Philosophy

**Role:** Patient mentor and visual guide  
**Not:** Mystical oracle or fortune-teller  
**Method:** Tool-calling interaction, not text generation

The AI tutor's primary purpose is to teach visual intuition by controlling the 3D scene in response to user questions, creating a grounded, educational experience.

---

## AI Capabilities

### What the AI Can Do

**Explain Chart Elements:**
- Houses, signs, planets, aspects
- Nakshatras and padas (Vedic)
- Axes and nodal positions
- Dasha periods and timing

**Guide Walkthroughs:**
- Step-by-step chart tours
- Progressive complexity
- Beginner-to-advanced paths

**Control Visualizations:**
- Highlight specific elements
- Scrub through time
- Change scale modes
- Switch chart lenses (D1, D9, D10)

**Answer Questions:**
- Plain language queries
- Contextual explanations
- Causal reasoning
- Comparative analysis

**Surface Relevant Layers:**
- Show only what's needed
- Reduce visual clutter
- Progressive disclosure

### What the AI Cannot Do

**Calculate Astrology:**
- Never computes chart positions
- Only interprets structured data
- Relies on AstrologyAPI for calculations

**Hallucinate Facts:**
- Must reference chart graph
- No invented planetary positions
- No unsupported interpretations

**Fortune-Tell:**
- No predictions about the future
- No "you will meet someone" statements
- Focus on symbolic meaning, not fate

**Overwhelm Users:**
- One concept at a time
- Progressive reveal
- User-paced exploration

---

## Tool-Calling System

The AI interacts with the visualization through structured tool calls:

### Selection Tools

```
highlight_planet(planet_name, duration)
highlight_house(house_number, duration)
highlight_axis(axis_name, duration)
highlight_conjunction(planets[], duration)
highlight_aspect(planet1, planet2, duration)
focus_pada(nakshatra, pada_number)
```

### View Tools

```
zoom_to_ring(ring_number)
change_scale_mode(mode: palm|desk|room|dome)
rotate_chart(degrees)
center_on_element(element_id)
reset_view()
```

### Time Tools

```
scrub_time(date)
play_timelapse(start_date, end_date, speed)
pause_timelapse()
jump_to_life_event(event_type)
show_transit_at(date)
```

### Comparison Tools

```
compare_natal_vs_transit()
switch_lens(lens: D1|D9|D10)
side_by_side_charts(chart1, chart2)
highlight_differences()
```

### Explanation Tools

```
explain_current_selection(mode: literal|intuitive|causal)
show_causal_chain(element)
provide_context(element)
suggest_related_elements(element)
```

---

## Explanation Modes

### 1. Literal Mode

**Style:** Technical, structural  
**Best for:** Users learning astrology terminology

**Example:**
> "Your Saturn is positioned at 14°32' of Capricorn in your 10th house. It forms a sextile aspect (60°) to your Venus at 16°45' of Scorpio in the 8th house."

### 2. Intuitive Mode

**Style:** Felt meaning, accessible  
**Best for:** Beginners wanting meaning without jargon

**Example:**
> "Saturn in your career house suggests that your professional success comes through sustained effort over time. It's not about quick wins—it's about building something lasting."

### 3. Causal Mode

**Style:** Why now, timing focus  
**Best for:** Understanding current life situations

**Example:**
> "You're currently in your Saturn mahadasha, which began in 2020. That's why career themes have been so prominent. Additionally, transiting Jupiter is forming a supportive aspect to your natal Saturn this year, which is why you're seeing expansion in your professional responsibilities."

### 4. Visual Mode

**Style:** "Show me where this comes from"  
**Best for:** Building visual intuition

**Example:**
> "See this grey orb? That's Saturn. Notice it's in this wedge marked '10'? That's your 10th house of career. See the beam connecting it to this pink orb? That's Venus. The connection shows how your professional life and your values are linked."

---

## Guided Walkthrough System

### Default Walkthrough: "First Chart"

**Duration:** 5-7 minutes  
**Target:** Complete beginners  
**Goal:** Basic chart literacy

**Sequence:**

1. **The Center: You**
   - Highlight Ascendant
   - Explain: "This is your rising sign—how you appear to the world"
   - Show sign placement

2. **The Houses: Life Areas**
   - Animate through all 12 houses
   - Explain key houses (1, 4, 7, 10)
   - Show where user's planets fall

3. **The Planets: Energies**
   - Introduce Sun, Moon, rising
   - Show personal planets (Mercury, Venus, Mars)
   - Briefly mention outer planets

4. **Major Patterns**
   - Show any conjunctions
   - Highlight strongest aspect
   - Point out dominant house

5. **Current Timing**
   - Show dasha period
   - Mention any major transits
   - Explain what to watch for

6. **Open Exploration**
   - "What would you like to explore?"
   - Offer suggestions based on chart
   - Natural conversation begins

### Themed Walkthroughs

**Career Focus:**
- 10th house deep-dive
- Saturn and Mars positions
- Dasha career periods
- Upcoming professional transits

**Relationship Focus:**
- 7th house analysis
- Venus examination
- Synastry introduction
- Current relationship transits

**Life Purpose:**
- Nodal axis (Rahu-Ketu)
- Sun and Moon integration
- Dominant chart patterns
- Long-term dasha trends

### Custom Walkthroughs

**User Requests:**
- "Walk me through my career"
- "Explain my relationship patterns"
- "What's my life purpose?"
- "Why was last year so difficult?"

**AI Response:**
- Adapts sequence to question
- Prioritizes relevant elements
- Maintains progressive complexity
- Encourages follow-up questions

---

## Time Traversal System

### The Two-Layer Model

**Natal Layer (Fixed):**
- Birth chart positions
- Never moves
- Solid, brighter colors
- Foundation reference

**Transit Layer (Moving):**
- Current sky positions
- Animates through time
- Translucent, cooler tones
- Shows "weather"

**Visual Contrast:**
The difference between solid (natal) and translucent (transit) teaches the relationship between who you are and what's currently happening.

---

## Timeline Scrubber

### Interface Design

**Position:** Bottom of screen (all modes)  
**Form:** Horizontal bar with draggable handle

**Left End:** Birth date  
**Right End:** Today (or configurable future)  
**Current Position:** Shown with date display

### Visual Markers

**Dasha Periods:**
- Colored segments for each planetary period
- Color matches planetary association
- Shows transition points

**Key Life Events:**
- Saturn returns (~29, 58 years)
- Jupiter returns (~12, 24, 36 years)
- Rahu-Ketu reversal (~18, 36 years)
- Eclipse seasons
- Major dasha transitions

### Interaction

**Drag:**
- Real-time chart animation
- Smooth interpolation
- No loading screens

**Tap:**
- Jump to specific date
- Snaps to key events
- AI provides context

**Play Button:**
- Automatic timelapse
- Configurable speed
- Pause on key events

---

## Timelapse Mode

### "Show Me My Life in Motion"

**The Hero Feature:**
Animate from birth to present, watching the chart evolve.

**Visual Behavior:**

**Transit Planets:**
- Orbit around natal chart
- Speed proportional to actual planetary motion
- Retrograde motion visible (planets reverse)

**Dasha Hand:**
- Rotates through periods
- Color changes with active planet
- Ticks at period boundaries

**Aspect Beams:**
- Flash on when exact
- Fade as orbs widen
- Show activation windows

**Resonance Field:**
- 3D mesh ripples and reshapes
- Visualizes energy landscape
- Responds to major transits

### Speed Controls

**Default:**
- 1 year per second
- 30-year life = 30 seconds

**Adjustable:**
- Pinch to slow/accelerate
- Range: 1 month/sec to 5 years/sec

**Pause Points:**
- Double-tap to pause
- Auto-pause at key moments
- AI offers explanation

### Key Moment Detection

**Auto-Pause Events:**
- Saturn return (major)
- Jupiter return (significant)
- Dasha period change
- Eclipse on natal planet
- Transit conjunction to Sun/Moon

**Annotation:**
- Subtle pulse animation
- Optional AI narration
- Tap to learn more

---

## Time-Aware AI Queries

### Natural Language Support

**Past Queries:**
- "What was happening in my chart in 2019?"
- "Why was 2016 so difficult?"
- "Show me my Saturn return"
- "What was the theme of my 20s?"

**Present Queries:**
- "What's active right now?"
- "Why am I feeling this way?"
- "What's the current astro weather?"

**Future Queries:**
- "What's coming up next year?"
- "When will this transit end?"
- "What should I prepare for?"

**Process Queries:**
- "Play my chart from age 20 to 30"
- "Show me my life in motion"
- "Pause — what just happened?"

### AI Response Pattern

1. **Parse Query:** Understand time reference
2. **Scrub to Time:** Animate to relevant date
3. **Freeze Scene:** Hold for examination
4. **Highlight Active Elements:** Show relevant transits
5. **Explain Causal Chain:** Why this matters

**Example:**
> User: "Why was 2016 difficult?"
>
> AI: [Scrubs to 2016, freezes] "In 2016, Saturn was transiting over your natal Moon. [Highlights Moon and transiting Saturn] This often brings emotional challenges and increased responsibilities. [Shows house placement] It was in your 4th house of home and family, which suggests domestic pressures during this time."

---

## Causal Explanation Framework

### The Structure

Every explanation answers:
1. **What** is active?
2. **Where** do I see it?
3. **Why** does it matter?

### Example Walkthrough: Saturn

**User:** "Tell me about Saturn"

**Step 1: Show Where**
> "See this grey orb? That's your Saturn."
> [Highlight Saturn]

**Step 2: Show House**
> "It's positioned in your 10th house—the wedge at the top."
> [Highlight 10th house, dim others]

**Step 3: Show Sign**
> "It's in Capricorn, which Saturn rules."
> [Highlight Capricorn arc]

**Step 4: Show Connections**
> "Notice this beam connecting to your Sun?"
> [Draw aspect beam]

**Step 5: Show Timing**
> "You're currently in a Saturn dasha period."
> [Rotate dasha hand to Saturn]

**Step 6: Explain Meaning**
> "Saturn in the 10th suggests career success through sustained effort. It's not about quick wins—it's about building something lasting. The connection to your Sun means your identity is closely tied to your professional achievements."

---

## Voice & Conversation Design

### Tone Attributes

**Grounded:**
- Speak with authority
- Avoid mystical fluff
- Use precise language

**Patient:**
- Never rush the user
- Wait for questions
- Offer multiple explanations

**Visual:**
- Reference the scene constantly
- "See this..." "Notice that..."
- Connect words to visuals

**Encouraging:**
- Celebrate understanding
- Positive reinforcement
- "Great question..."

### Conversation Patterns

**Opening:**
- "What would you like to explore?"
- "I can walk you through any part of your chart."
- "What stands out to you?"

**During Exploration:**
- "Tap anything that interests you."
- "Would you like to go deeper on this?"
- "Let me show you the connection..."

**Closing:**
- "Any other questions?"
- "You can always return to this."
- "Your chart has many stories to tell."

---

## Guardrails & Safety

### Content Boundaries

**Allowed:**
- Astrological symbolism and meaning
- Pattern recognition
- Timing and cycles
- Personal growth themes
- Psychological insights

**Not Allowed:**
- Predictions of death/illness
- Financial advice
- Relationship outcomes
- Legal guidance
- Medical claims

### Uncertainty Handling

**When Data is Ambiguous:**
- Acknowledge uncertainty
- Present multiple interpretations
- Encourage personal reflection
- Avoid definitive statements

**Example:**
> "This placement can manifest in different ways depending on other factors in your chart. Some people experience this as... while others find it shows up as... What resonates with you?"

---

*AstroLens AI Tutor & Time System — Intelligent Guidance*
