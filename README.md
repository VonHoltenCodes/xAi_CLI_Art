# xAi_CLI_Art

**The Official ASCII/Unicode Art Library for the xAI CLI**

*Crafted in God-Mode by an obsessive terminal-native artist. Maximum detail. No compromises.*

---

## Philosophy

This repository is the single source of truth for all visual identity of the **xAI CLI** — the command-line interface that should feel as powerful, cosmic, and hand-crafted as the intelligence behind it.

Every piece in this library was forged with the following rules:

- **Terminal first** — Looks incredible in dark terminals with high-quality monospace fonts (JetBrains Mono, Berkeley Mono, Fira Code, IBM Plex Mono).
- **Unicode block mastery** — Full use of █ ▓ ▒ ░ ▄ ▀ ▌ ▐ and box-drawing characters for depth, glow, and bevel.
- **Multiple scales** — God-tier wide versions for READMEs + compact versions that still hit hard in a 80-column `--help` or startup banner.
- **Style spectrum** — From pure neon tubes to heavy metal extrusion to subtle CRT phosphor.
- **Soul over perfection** — Every piece carries emotional weight: the heat of real neon, the gravity of a black hole, the cold precision of machined steel.

---

## Quick Start

```bash
# Clone the library
git clone https://github.com/VonHoltenCodes/xAi_CLI_Art.git
cd xAi_CLI_Art

# View the current flagship piece
cat art/xai-cli/neon-sigil-v2.txt

# Or use the helper
./scripts/display.sh neon
```

**Recommended viewing:**
- Dark terminal background (#0a0a0a or pure black)
- 90–120 columns
- Font size 13–16pt
- JetBrains Mono or Berkeley Mono

---

## The Collection

### XAI CLI — Current Flagship

**Neon Sigil v2.0 — "Tubes in the Void"**  
*The current pinnacle.* Thick hand-bent glass neon tubes, violent merged bloom, authentic CRT scanline shimmer, two-tone (hot magenta XAI / electric lime CLI). When viewed from across the room it is indistinguishable from a real premium neon shop sign.

→ [art/xai-cli/neon-sigil-v2.txt](art/xai-cli/neon-sigil-v2.txt)

**3D Extruded Wordmark**  
Chiseled obsidian-style 3D letters with strong top-left lighting and deep cast shadows. Feels like it was milled from a single block of neutronium and dropped into the terminal.

→ [art/xai-cli/3d-extruded.txt](art/xai-cli/3d-extruded.txt)

**God-Tier Flat (Pure Letter)**  
The original high-detail typographic version. Maximum presence with zero icons. Perfect when you want the letters themselves to carry all the weight.

→ [art/xai-cli/god-tier-flat.txt](art/xai-cli/god-tier-flat.txt)

**Compact CLI Banner**  
Battle-tested 12-line version designed to live at the top of every `--help`, startup sequence, or interactive prompt. Still reads perfectly at 80 columns.

→ [art/xai-cli/compact-banner.txt](art/xai-cli/compact-banner.txt)

---

### Grok Black Hole

**GOD TIER — Maximum Power Black Hole (2025)**  
The definitive terminal recreation of the official Grok logo. Real spiral motion, gravitational lensing, relativistic beaming, and a capital **G** formed in the brightest plasma. Multiple disk layers. This one still gives people chills.

→ [art/grok/blackhole-god-tier.txt](art/grok/blackhole-god-tier.txt)

**Compact Icon**  
The same black hole reduced to a perfect 9-line sigil that still reads as both a cosmic event horizon and the letter G. Ideal for tight UI elements or status lines.

→ [art/grok/compact-icon.txt](art/grok/compact-icon.txt)

---

### Style Variations

**Heavy Metal**  
Brutalist, over-the-top bevels and deep occlusion. Looks like it was forged in a foundry and left to rust in a beautiful way.

→ [art/variations/heavy-metal.txt](art/variations/heavy-metal.txt)

**Pure Phosphor CRT**  
Green-on-black old-school terminal phosphor with bloom, slight burn-in ghosting, and 60 Hz flicker simulation. Pure nostalgia weaponized for 2026.

→ [art/variations/phosphor-crt.txt](art/variations/phosphor-crt.txt)

**Cosmic Minimal**  
The quietest, most elegant version. Almost no fill — just perfect negative space and hairline highlights. The void does most of the work.

→ [art/variations/cosmic-minimal.txt](art/variations/cosmic-minimal.txt)

---

## Usage in Your Own Tools

All files are plain UTF-8 text. Simply embed them or `cat` them at runtime.

Example in a Python CLI (using Rich for extra glow):

```python
from rich.console import Console
from pathlib import Path

console = Console()

def show_logo(style="neon"):
    art = Path(f"art/xai-cli/{style}.txt").read_text()
    console.print(art, style="bold magenta")
```

For pure terminal without dependencies:

```bash
cat art/xai-cli/neon-sigil-v2.txt
```

---

## Font Recommendations (Ranked)

| Rank | Font                  | Why it slaps for this art                  | Size  |
|------|-----------------------|--------------------------------------------|-------|
| 1    | Berkeley Mono         | Perfect weight, beautiful Unicode blocks   | 14pt  |
| 2    | JetBrains Mono        | Ubiquitous, excellent contrast             | 13-15pt |
| 3    | Fira Code             | Great ligatures, very readable             | 14pt  |
| 4    | IBM Plex Mono         | Slightly more analog feel                  | 13pt  |
| 5    | Monaspace Neon        | Literal neon in the name. Use it.          | 14pt  |

---

## Contributing / Iteration

This library is alive.

The artist (ASCII Art God-Mode) is still iterating. New pieces, refinements, and completely unhinged style variations will land here regularly.

If you have a reference image (physical neon sign, brutalist poster, old CRT capture, concept art), drop it in an issue with the subject **"New Reference — [short description]"** and the God-Mode will go to work.

---

## License

All art in this repository is released under the MIT License.

You are free to use these pieces in your own xAI-related tools, personal projects, or anything else that respects the craft.

---

**Built with obsession. Viewed best in the dark.**

*Last forged: 2026*

---

> "The terminal is not a limitation. It is the canvas."
