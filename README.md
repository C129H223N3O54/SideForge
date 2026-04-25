# Sideforge Design System

> Tools, crafted on the side.

A small, self-contained design system shared across all **Sideforge** tools — desktop utilities, web apps, and PowerShell scripts. One color palette, one logo, consistent feel, Light + Dark mode everywhere.

![Sideforge](sideforge-logo.svg)

---

## What this is

Sideforge is the personal tool suite of [kampfmade](https://github.com/kampfmade). Every tool here is built in spare time for specific problems — disk analysis, network scanning, music shuffling, spreadsheet tricks. They all share one visual identity so they feel like parts of the same workshop.

This repo holds everything needed to give a tool that identity:

- **Color palette** (Ember / Moss / Anvil)
- **Logo** as SVG, CSS, and XAML
- **Ready-to-use tokens** for web (CSS) and WPF (PowerShell)
- **Live demo** to preview components

---

## Repo structure

```
sideforge-design/
├── sideforge-logo.svg           # Logo as SVG (favicon, social, embeds)
├── web/
│   ├── sideforge-tokens.css     # All tokens + components for web tools
│   └── demo.html                # Live preview (open in browser)
├── wpf/
│   └── Sideforge-Theme.ps1      # Theme palette + XAML helpers for PS/WPF
├── docs/
│   ├── BRIEFING.md              # Copy-paste briefing for new Claude chats
│   ├── COLORS.md                # Full color reference
│   ├── MIGRATION_PROMPTS.md     # Ready-to-use prompts for tool migration
│   └── TYPOGRAPHY.md            # Font reference and rules
├── CHANGELOG.md
├── LICENSE
└── README.md                    # this file
```

---

## Quick start

### For a web tool

```html
<!-- In your <head> -->
<link rel="stylesheet" href="path/to/sideforge-tokens.css">
<link rel="icon" type="image/svg+xml" href="path/to/sideforge-logo.svg">
```

Then use the semantic tokens in your CSS:

```css
body {
  background: var(--sf-bg);
  color: var(--sf-text);
  font-family: var(--sf-font-sans);
}

.my-button {
  background: var(--sf-accent);
  color: white;
  border-radius: var(--sf-radius-md);
}
```

Or use the pre-built component classes:

```html
<button class="sf-btn sf-btn-primary">Save</button>
<div class="sf-card">…</div>
<span class="sf-badge sf-badge-accent">Active</span>
```

Open `web/demo.html` in a browser to see everything in action with a Light/Dark toggle.

### For a PowerShell/WPF tool

Dot-source the theme file near the top of your script:

```powershell
. "$PSScriptRoot\Sideforge-Theme.ps1"

# Pick a mode (or read from user config)
$script:ThemeMode = Get-SideforgeSystemTheme  # auto-detect
$T = $script:SideforgeThemes[$script:ThemeMode]

# Use in your XAML via $($T.KeyName) interpolation
[xml]$XAML = @"
<Window Background="$($T.WinBg)">
  <TextBlock Foreground="$($T.TextAccent)" Text="Hello!"/>
</Window>
"@
```

The brand row helper gives you the full logo + wordmark in one line:

```powershell
$brandRow = Get-SideforgeBrandRowXaml -ToolName "NetworkLens" -Theme $T -LogoSize 36
```

See the header of [`wpf/Sideforge-Theme.ps1`](wpf/Sideforge-Theme.ps1) for full examples.

---

## Design decisions

### Name
**Sideforge** — "side" for side-project, "forge" for something crafted. The suite is a personal workshop, not a product.

### Logo: SF monogram
A small black tile (`#1A1A1A`) with **S** in Ember orange and **F** in white, set in Georgia italic bold. The tile stays black in both Light and Dark mode so the logo reads consistently on any background.

### Color ramps

| Ramp       | Meaning                     | Primary hex |
|------------|-----------------------------|-------------|
| **Ember**  | Primary accent (orange)     | `#E8600A`   |
| **Moss**   | Secondary (green, success)  | `#639922`   |
| **Anvil**  | Neutrals (warm grayscale)   | `#888780`   |

Only two color ramps carry meaning. Everything else is neutral. The warm grayscale (Anvil) sets Sideforge apart from the cool blue-gray default of most apps — it complements the orange instead of fighting it.

### Typography
**Verdana** for UI, **Georgia** italic bold for the SF logo, system mono for code. All system-installed — no webfont downloads. See [`docs/TYPOGRAPHY.md`](docs/TYPOGRAPHY.md) for the full reference.

### Dark mode
Not optional. Every token has both a Light and a Dark value. In the web version, `prefers-color-scheme` handles this automatically; a manual override via `<html data-theme="dark">` is supported. In WPF, the theme is picked once at load (with `Get-SideforgeSystemTheme` or from the tool's own config) and applied via XAML interpolation.

### What stays out
- No logos that look too corporate
- No gradients or glow effects (flat, solid, honest)
- No blue as a primary color — Sideforge is warm, not cold
- Charity and non-personal projects (Hand hilft Pfote, Kita Wirbelwind) are **not** part of Sideforge and keep their own branding

---

## Using Sideforge in a Claude chat

When you want help migrating a tool to Sideforge, paste this at the top of a new chat:

> I want to migrate [ToolName] to the Sideforge design system. See
> https://github.com/C129H223N3O54/SideForge for the palette, logo, and tokens.
> For web tools use `web/sideforge-tokens.css`; for PowerShell/WPF tools use
> `wpf/Sideforge-Theme.ps1`. Keep the tool's own functionality untouched —
> only the visual layer changes. Light and Dark mode must both work.

You can also link the raw files directly so Claude can fetch them:

```
https://raw.githubusercontent.com/C129H223N3O54/SideForge/main/web/sideforge-tokens.css
https://raw.githubusercontent.com/C129H223N3O54/SideForge/main/wpf/Sideforge-Theme.ps1
```

A fuller briefing template lives in [`docs/BRIEFING.md`](docs/BRIEFING.md), and ready-to-use migration prompts (for first-time migration or version updates) are in [`docs/MIGRATION_PROMPTS.md`](docs/MIGRATION_PROMPTS.md).

---

## Tools using Sideforge

| Tool             | Stack            | Status           |
|------------------|------------------|------------------|
| DiskLens         | PowerShell + WPF | ✅ v1.3.0        |
| NetworkLens      | C# / .NET 8 WPF  | 🔲 pending       |
| Music Shuffle    | Vanilla JS PWA   | 🔲 pending       |
| TimeTune         | Static HTML/JS   | 🔲 pending       |
| Hüte-Matrix      | Standalone HTML  | 🔲 pending       |

---

## Credits

Design direction by **Jan Erik Mueller** (kampfmade).
Implementation pair-programmed with **[Claude](https://claude.ai)** by Anthropic.

## License

MIT — see [LICENSE](LICENSE).
