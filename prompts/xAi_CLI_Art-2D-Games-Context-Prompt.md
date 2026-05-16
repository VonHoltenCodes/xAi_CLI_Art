# xAi_CLI_Art – 2D Games Collection Context Prompt

**Use this prompt in a fresh/new Grok session** to continue the 2D Games collection without hitting the session image generation limit.

---

## Current Project State (Carry Forward)

You are working inside the local repo at `/home/devbase1/xAi_CLI_Art/`, also hosted on GitHub at https://github.com/VonHoltenCodes/xAi_CLI_Art.

### Gallery Collections Status (as of May 2026):

- `grok-self-portraits/` — 50 images (complete)
- `vehicles/` — 47 images (complete)
- `animals/` — 50 images (complete)
- `retro-tech/` — 50 images (complete)
- `audio/` — 25 images (complete)
- `pantheon/` — 50 images (complete)
- **`2d-games/`** — **24 images** (in progress)

**Current total:** ~296 images across 6 completed collections + the active 2D Games series.

### Folder Structure

All finished art lives in the `gallery/` folder at the top level:

```
gallery/
├── grok-self-portraits/
├── vehicles/
├── animals/
├── retro-tech/
├── audio/
├── pantheon/
└── 2d-games/          ← This is the active collection
```

**Important rule for 2D Games:**
- Keep the structure **completely flat**.
- All images must go directly into `gallery/2d-games/`.
- **Do NOT** create subfolders (no `raw/`, `cosmic/`, `styles/`, `artist/`, `real/`, `imaginary/` etc.).
- Use clear, descriptive kebab-case filenames directly in the folder.

---

## Task

Continue building the **2D Games** collection.

**Goal:** Reach at least 50 high-quality images (you can go beyond if the ideas are strong).

**Style Direction (Balanced Mix):**
- A healthy balance between:
  - **Real 2D video games** (classic and modern) — Mega Man, Metroid, Castlevania, Zelda, Hollow Knight, Celeste, Dead Cells, Ori, Blasphemous, Super Mario, Sonic, Chrono Trigger, etc.
  - **Original / imaginary 2D games** — Create cool-sounding game titles and scenes that feel like real games (examples already made: *Neon Ronin*, *The Last Lantern*, *Eclipse Runner*, *The Pale Court*, *Garden of the Moon*, *Void Command*, *The Iron Saint*, etc.)

**Visual Style:**
- High-quality, detailed 2D game illustration / key art style
- Cinematic lighting, strong composition, rich colors
- Can range from nostalgic pixel-art inspired to modern polished 2D indie game art
- Focus on characters, bosses, level scenes, title screen energy, or atmospheric key art

---

## Workflow

1. Generate images using the `image_gen` tool.
2. After each generation (or small batch), immediately move the file into:
   ```
   /home/devbase1/xAi_CLI_Art/gallery/2d-games/
   ```
3. Give every image a clear, descriptive kebab-case filename, for example:
   - `mega-man-x-armor-upgrade.jpg`
   - `hollow-knight-radiance.jpg`
   - `chronotrigger-lavos.jpg`
   - `neon-ronin-final-boss.jpg`
   - `the-last-signal-protagonist.jpg`

4. Work in batches of 6–8 images, then move them before continuing.
5. Report progress regularly (e.g., “2D Games: 24/50 → 32/50 complete”).

---

## After Reaching ~50 Images

1. Verify all files are directly in `gallery/2d-games/` (flat).
2. Stage and commit with a clear message.
3. Push to `origin main`.

---

## Minimal Carry Forward Block (Copy this into a new session)

```
Project: xAi_CLI_Art
Repo: /home/devbase1/xAi_CLI_Art/  |  GitHub: VonHoltenCodes/xAi_CLI_Art

Current state:
- All previous collections complete (Grok 50, Vehicles 47, Animals 50, Retro Tech 50, Audio 25, Pantheon 50)
- 2D Games collection: 24 images so far, located at gallery/2d-games/

Rules:
- Keep the structure completely flat — all images go directly into gallery/2d-games/
- No subfolders inside 2d-games/
- Balanced mix of real classic/modern 2D games + original imaginary games
- High quality cinematic 2D game illustration style
- Use descriptive kebab-case filenames

Task: Continue the 2D Games collection toward 50+ images.
```

---

**Last Updated:** May 2026 (after 24 images generated in the 2D Games collection)

---

## Notes for Next Session

- Paste the “Minimal Carry Forward Block” first.
- Then paste the full instructions above.
- Start generating and immediately file images into the flat `gallery/2d-games/` folder.
- Once you reach a good number (50+), organize filenames cleanly → commit → push.