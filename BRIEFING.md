# Briefing: Sideforge Design-System in ein Tool integrieren

> **Zweck dieser Datei:** Copy-paste-Vorlage für neue Claude-Chats, wenn du eines
> deiner Tools auf Sideforge umstellen willst.

---

## Kurz-Briefing (zum Einfügen in Claude)

```
Ich möchte [TOOLNAME] auf das Sideforge Design-System migrieren.

Sideforge ist mein persönliches Dev-Tool-Label. Die zentrale Repo liegt hier:
https://github.com/C129H223N3O54/SideForge

Wichtig:
- Name: Sideforge (Tool-Header: "Sideforge / [TOOLNAME]")
- Logo: SF-Monogramm auf schwarzer Kachel, S in Orange, F in Weiß,
  Georgia italic bold
- Primärfarbe: Ember-Orange #E8600A (Light) / #F07E2D (Dark)
- Sekundärfarbe: Moss-Grün #639922
- Neutrals: Anvil (warme Grautöne, kein kühles Blaugrau)
- Light + Dark Mode sind Pflicht

Die Design-Tokens und Helper findest du im Repo:
- Web-Tools: web/sideforge-tokens.css
- PowerShell/WPF: wpf/Sideforge-Theme.ps1

Bitte hol dir das Repo-README und die relevante Token-Datei, dann legen wir
los. Funktionalität bleibt unangetastet — nur das visuelle Layer ändert sich.
```

---

## Detailliertes Briefing (falls mehr Kontext nötig)

### Was Sideforge ist

Sideforge ist das Dach-Branding für alle meine selbstgebauten Tools. Jedes Tool behält seinen eigenen Namen und Zweck, bekommt aber die einheitliche Sideforge-Optik: Farbpalette, Typografie, Logo, Header-Struktur, Light/Dark-Mode.

Tools die dazugehören: DiskLens, NetworkLens, Music Shuffle, TimeTune, Hüte-Matrix.
Tools die **nicht** dazugehören: Hand hilft Pfote (Charity-Site), Kita WirbelWind (Förderverein) — die haben eigene Identität.

### Was geändert wird

**Visuelles:**
- Farbpalette durchgängig austauschen (alle hardcodierten Farben durch Tokens ersetzen)
- Fenstertitel auf `Sideforge - [Tool]` bzw. `Sideforge / [Tool]`
- Header bekommt SF-Logo + Sideforge-Wordmark links oben
- Startup-Dialoge (falls vorhanden) bekommen ebenfalls das Branding
- Favicon / App-Icon wird zum SF-Logo

**Was nicht geändert wird:**
- Funktionale Logik
- Bestehende Features
- Config-Formate (bestehende User-Settings bleiben lesbar)
- Historische Changelog-Einträge

### Farb-Migration

Typisches Mapping von alten Farben zu Sideforge:

| Alt                          | Neu (Sideforge)              |
|------------------------------|------------------------------|
| Lila / Violet                | Ember-Orange                 |
| Kühles Grau (`#9CA3AF` etc.) | Anvil-Warm-Grau              |
| Grün als Primärakzent        | Orange als Primärakzent      |
| Grün für Erfolg              | Moss-Grün bleibt für Erfolg  |
| Blau für Info                | kann oft durch Orange ersetzt werden |
| Rot (Fehler)                 | bleibt rot                   |
| Amber (Warnung)              | bleibt amber                 |

### Vorgehen (empfohlen)

1. **Inspektion** — Anschauen wo im Code Farben hardcodiert sind
2. **Tokens einbinden** — `sideforge-tokens.css` oder `Sideforge-Theme.ps1` ins Projekt
3. **Palette ersetzen** — hardcodierte Farben durch Tokens ersetzen
4. **Branding** — Header, Title, Favicon
5. **Testen** — Light und Dark Mode jeweils einmal durchklicken
6. **Changelog** — Versions-Bump (z.B. `+0.1.0`) mit klarem Eintrag

### Referenz-Migration

DiskLens wurde als erstes migriert — Version 1.3.0. Das dient als Vorlage für andere PowerShell/WPF-Tools:
- https://github.com/C129H223N3O54/DiskLens

---

## Tipps für Claude in Tool-Chats

- **Immer beide Modi prüfen:** Wenn du Farben änderst, teste gedanklich ob der Kontrast in Light UND Dark noch passt.
- **Semantisch denken:** Statt "Orange" nutze `--sf-accent`. Der Token kennt selbst ob er gerade hell oder dunkel sein soll.
- **Nicht übertreiben:** Wenn das Tool schon eigene Akzentfarben für Unterfunktionen hat (DiskLens hat z.B. Grün für Erfolg, Amber für "leere Ordner"), überlege ob das bewusst so ist. Manchmal lohnt ein neuer semantischer Token (`--sf-btn-empty`) statt alles über einen Kamm zu scheren.
- **Historisches stehen lassen:** Alte Changelog-Einträge nicht umbenennen — sie dokumentieren die Vergangenheit.
