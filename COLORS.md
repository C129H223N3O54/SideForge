# Sideforge Color Reference

Complete reference for all color ramps and semantic tokens.

---

## Color ramps (mode-independent)

These are the raw color values. They are defined in both `sideforge-tokens.css` and `Sideforge-Theme.ps1`.

### Ember — Primary accent (orange, "the forge glow")

| Stop | Hex       | Use                                      |
|------|-----------|------------------------------------------|
| 50   | `#FFF4EC` | Lightest fill, backgrounds for badges    |
| 100  | `#FDD9BC` | Soft fills, hover states                 |
| 200  | `#FBC296` | Light fills                              |
| 300  | `#F5A05A` | Accent text on dark surfaces             |
| 400  | `#F07E2D` | Dark-mode accent buttons                 |
| 500  | `#E8600A` | **Primary accent** (buttons, links)      |
| 600  | `#CC5208` | Hover state for primary                  |
| 700  | `#B84905` | Pressed state                            |
| 800  | `#8C3800` | Accent text on light surfaces            |
| 900  | `#5A2300` | Deepest shade                            |

### Moss — Secondary (green, "the nature outside")

| Stop | Hex       | Use                                      |
|------|-----------|------------------------------------------|
| 50   | `#EFF5E4` | Success badge backgrounds                |
| 100  | `#C9DEA0` | Soft success fills                       |
| 200  | `#AACB6F` | Light green fills                        |
| 300  | `#8BB94A` | Dark-mode success text                   |
| 400  | `#74A732` | Mid green                                |
| 500  | `#639922` | **Primary success / secondary accent**   |
| 600  | `#4E7B19` | Hover for success                        |
| 700  | `#3B6D11` | Pressed success                          |
| 800  | `#27500A` | Success text on light                    |
| 900  | `#173404` | Deepest green                            |

### Anvil — Neutrals (warm grays)

| Stop | Hex       | Use                                      |
|------|-----------|------------------------------------------|
| 50   | `#FAFAF7` | Light mode page background               |
| 100  | `#F1EFE8` | Light mode secondary surface             |
| 200  | `#E5E5E0` | Light mode borders, sunk surfaces        |
| 300  | `#B4B2A9` | Dark mode secondary text                 |
| 400  | `#888780` | Muted text in both modes                 |
| 500  | `#5F5E5A` | Light mode secondary text                |
| 600  | `#444441` | Strong borders                           |
| 700  | `#2C2C2A` | Dark mode borders                        |
| 800  | `#1A1A1A` | Dark mode surface / logo background      |
| 900  | `#0F0F0F` | Dark mode page background                |

---

## Semantic tokens (mode-aware)

Use these instead of the raw ramps whenever possible. They automatically adapt between Light and Dark.

### Web (CSS)

| Token                | Light mode          | Dark mode           |
|----------------------|---------------------|---------------------|
| `--sf-bg`            | Anvil 50 `#FAFAF7`  | Anvil 900 `#0F0F0F` |
| `--sf-surface`       | White `#FFFFFF`     | Anvil 800 `#1A1A1A` |
| `--sf-surface-alt`   | Anvil 100 `#F1EFE8` | `#141414`           |
| `--sf-surface-sunk`  | Anvil 200 `#E5E5E0` | `#0A0A0A`           |
| `--sf-text`          | Anvil 900 `#0F0F0F` | `#F5F5F5`           |
| `--sf-text-muted`    | Anvil 500 `#5F5E5A` | Anvil 300 `#B4B2A9` |
| `--sf-text-subtle`   | Anvil 400 `#888780` | Anvil 400 `#888780` |
| `--sf-border`        | Anvil 200 `#E5E5E0` | Anvil 700 `#2C2C2A` |
| `--sf-accent`        | Ember 500 `#E8600A` | Ember 300 `#F5A05A` |
| `--sf-accent-hover`  | Ember 600 `#CC5208` | Ember 200 `#FBC296` |
| `--sf-accent-soft`   | Ember 50 `#FFF4EC`  | `#2A1906`           |
| `--sf-accent-text`   | Ember 800 `#8C3800` | Ember 100 `#FDD9BC` |
| `--sf-success`       | Moss 700 `#3B6D11`  | Moss 300 `#8BB94A`  |
| `--sf-danger`        | `#A32D2D`           | `#A32D2D`           |
| `--sf-warning`       | `#BA7517`           | `#BA7517`           |

### WPF (PowerShell)

Access via `$T.KeyName` after loading the theme. See [`wpf/Sideforge-Theme.ps1`](../wpf/Sideforge-Theme.ps1) for the full list — it has additional keys specific to the WPF use case (DriveBar, SizeBadge, etc.) that aren't needed on the web.

---

## Text contrast rules

When text sits on a colored background, pick text colors from the **same ramp**:

- **Text on Ember 50/100 (light):** use Ember 800 or 900
- **Text on Ember 500 (button):** use white (`#FFFFFF`)
- **Text on Ember 800 (dark surface):** use Ember 100 or white
- **Text on Moss 50 (success badge):** use Moss 700 or 900
- **Text on Anvil 100 (subtle surface):** use Anvil 700 or 900

Never use plain black or plain gray on colored fills — the result always looks muddy.

---

## What's NOT in the palette

- **Purple / Violet** — was the old DiskLens primary, removed with the Sideforge migration
- **Multiple blue variants** — Sideforge is warm; when blue is needed (e.g. info states) use CSS `var(--color-background-info)` sparingly
- **Neon / saturated accents** — everything is muted and honest, no loud tones
- **Gradients** — the design is flat everywhere

---

## Version

Palette version: **1.0.0**
Last changed: 2026-04-24 (initial release with DiskLens v1.3.0 migration)
