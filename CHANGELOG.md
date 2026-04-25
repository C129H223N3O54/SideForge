# Changelog

All notable changes to the Sideforge design system.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.0.1] — 2026-04-25

### Changed
- **Typography** — `--sf-font-sans` (web) and `FontFamily` (WPF) now use Verdana as the primary brand font with a universal fallback stack (Geneva, DejaVu Sans, Tahoma, sans-serif). Verdana is preinstalled on Windows, macOS, and Linux distros that ship MS core fonts, so all Sideforge tools render with a consistent UI font without requiring a webfont download.

---

## [1.0.0] — 2026-04-24

Initial release.

### Added
- **Color palette** — Ember (orange), Moss (green), Anvil (warm neutrals), each with 7 stops
- **Web tokens** — `sideforge-tokens.css` with semantic CSS variables, Light/Dark mode, and drop-in component classes (`.sf-btn`, `.sf-card`, `.sf-badge`, `.sf-logo`, etc.)
- **WPF tokens** — `Sideforge-Theme.ps1` with PowerShell hashtable palette and XAML helper functions (`Get-SideforgeLogoXaml`, `Get-SideforgeBrandRowXaml`)
- **Logo** — SF monogram as SVG, Georgia italic bold, S in Ember orange and F in white on a black tile
- **Live demo** — `web/demo.html` showing all components with theme toggle
- **Briefing template** — `docs/BRIEFING.md` for use in Claude chats when migrating a tool
- **Color reference** — `docs/COLORS.md` with full ramp + semantic token documentation

### Reference migration
- **DiskLens 1.3.0** — first tool migrated to Sideforge, used as the template for PowerShell/WPF migrations
