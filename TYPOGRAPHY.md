# Sideforge Typography

Sideforge uses **system-installed fonts** only — no webfont downloads, no FOUC, instant render. The chosen fonts are pre-installed on Windows, macOS, and Linux (with the MS Core Fonts package).

---

## The fonts

### Sans — **Verdana**

The primary UI font. Used for everything: body text, buttons, labels, navigation.

```
Verdana, Geneva, "DejaVu Sans", Tahoma, sans-serif
```

**Why Verdana?**
- Designed by Matthew Carter (1996) specifically for screen readability
- Wide letters, generous spacing, open shapes — friendly without being playful
- Pre-installed on Windows since 95, macOS since forever, Linux distros with MS Core Fonts
- Fallback chain covers every platform without surprises

**Fallback rationale:**
- `Geneva` — macOS classic with similar character
- `DejaVu Sans` — Linux default that ships everywhere, Verdana-like proportions
- `Tahoma` — Windows safety net (same designer as Verdana, denser)
- `sans-serif` — final generic fallback

### Mono — **Consolas / system mono**

Used for code, file paths, terminal-style elements, exact identifiers.

```
"SF Mono", Menlo, Monaco, Consolas, "Courier New", monospace
```

System-native: SF Mono on macOS, Consolas on Windows. We don't standardize on a single mono because users expect their platform's familiar mono in code contexts.

### Serif — **Georgia**

Used **only** for the SF logo and occasional accent quotes/manifesto text. Never for UI labels or body copy.

```
Georgia, "Times New Roman", serif
```

Georgia in **italic bold** is the visual signature of the SF logo tile. Don't replace it.

---

## Sizes

CSS variables are defined in `web/sideforge-tokens.css`:

| Token            | Size  | Use                              |
|------------------|-------|----------------------------------|
| `--sf-text-xs`   | 11px  | Labels, badges, fine print       |
| `--sf-text-sm`   | 12px  | Captions, sub-text               |
| `--sf-text-base` | 13px  | **Default body**                 |
| `--sf-text-md`   | 14px  | Slightly larger body, sub-titles |
| `--sf-text-lg`   | 16px  | Section headings                 |
| `--sf-text-xl`   | 20px  | Stat values, prominent headings  |
| `--sf-text-2xl`  | 28px  | Hero / app title                 |

For WPF, sizes follow the same scale but expressed as raw numbers in XAML (`FontSize="13"`).

---

## Weights

Verdana ships with two weights: **Regular (400)** and **Bold (700)**. There is no semibold or light. Don't ask for `font-weight: 500` — it'll just snap to bold or regular depending on the renderer.

| Token                  | Weight | Use                          |
|------------------------|--------|------------------------------|
| `--sf-weight-regular`  | 400    | Default body                 |
| `--sf-weight-medium`   | 500    | (snaps to bold in Verdana)   |
| `--sf-weight-bold`     | 700    | Headings, brand wordmark     |

The `medium` token exists for fonts that have it (e.g. mono fallbacks). For UI in Verdana, treat `medium` and `bold` as the same.

---

## Brand wordmark

The "Sideforge" wordmark uses the standard Verdana — **not** a special font. The trick is:

- `Side` in `var(--sf-text)` (regular weight)
- `forge` in `var(--sf-accent)` (regular weight)
- Both **bold**

This keeps the wordmark consistent everywhere it's typed without needing a custom logotype.

The **SF logo tile** is the only place serifs appear: Georgia, italic, bold, S in Ember orange and F in white on a black tile.

---

## Don'ts

- **Don't load Google Fonts.** The whole point is no network dependency.
- **Don't mix multiple sans fonts.** Verdana for UI, Georgia only for the logo.
- **Don't use Verdana below 11px.** It's designed for legibility but tiny is tiny.
- **Don't use bold for body text.** Bold is reserved for headings, brand, and emphasis. If everything is bold, nothing is.
