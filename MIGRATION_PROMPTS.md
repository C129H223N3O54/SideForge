# Migration Prompts

Copy-paste templates für andere Claude-Chats, wenn du ein Tool auf Sideforge migrieren oder updaten willst.

Es gibt zwei Szenarien — wähle den passenden Prompt.

---

## Szenario 1: Tool ist noch NICHT migriert

Wenn du ein Tool zum ersten Mal auf Sideforge umstellen willst, kopiere diesen Prompt in den jeweiligen Tool-Chat:

```
Ich möchte [TOOLNAME] auf das Sideforge Design-System migrieren.

Sideforge ist mein Dach-Branding für alle meine Tools. Das zentrale
Repo liegt hier:
https://github.com/C129H223N3O54/SideForge

Bitte hol dir folgende Dateien aus dem Repo:
- README.md (Übersicht & Quick-Start)
- docs/COLORS.md (Farbpalette)
- docs/TYPOGRAPHY.md (Schrift-Regeln)
- docs/BRIEFING.md (detaillierter Migrations-Leitfaden)

Und je nach Stack des Tools:
- Web-Tool: web/sideforge-tokens.css
- PowerShell/WPF: wpf/Sideforge-Theme.ps1

Kurz die wichtigsten Eckpunkte:
- Branding: "Sideforge / [TOOLNAME]" mit SF-Logo-Kachel im Header
- Logo: schwarze Kachel, S in Orange #E8600A, F in Weiß, Georgia italic bold
- Primärfarbe: Ember-Orange (#E8600A Light / #F07E2D Dark)
- Sekundärfarbe: Moss-Grün #639922
- Neutrals: warme Anvil-Grautöne (kein kühles Blaugrau)
- UI-Schrift: Verdana (überall vorinstalliert, keine Webfonts)
- Logo bleibt Georgia italic bold (bewusster Kontrast zum UI)
- Light + Dark Mode sind Pflicht

Funktionale Logik bleibt unangetastet — nur das visuelle Layer ändert
sich. Historische Changelog-Einträge nicht umschreiben.

Als Referenz: DiskLens v1.3.0 wurde bereits migriert und liegt unter
https://github.com/C129H223N3O54/DiskLens — kannst du als Vorlage
für PowerShell/WPF-Tools nutzen.

Lass uns loslegen!
```

---

## Szenario 2: Tool ist BEREITS migriert (v1.0.0 → v1.0.1 Update)

Wenn ein Tool schon einen Sideforge-Zwischenstand hat (System-Fonts statt Verdana), kopiere diesen Prompt:

```
Ich habe [TOOLNAME] bereits auf das Sideforge Design-System migriert,
aber zu einem Zwischenstand (v1.0.0). Inzwischen gibt es ein Update
des Design-Systems auf v1.0.1 — bitte zieh das nach.

Sideforge-Repo:
https://github.com/C129H223N3O54/SideForge

Was sich von v1.0.0 zu v1.0.1 geändert hat:

→ NEUE BRAND-SCHRIFT: Verdana
   Das UI nutzt jetzt durchgängig Verdana (statt System-Font-Stack
   bzw. Segoe UI / -apple-system / etc.). Begründung: Verdana ist
   auf Windows, macOS und Linux mit MS Core Fonts vorinstalliert
   — keine Webfont-Downloads, einheitlicher Look überall.

   Fallback-Stack: Verdana, Geneva, "DejaVu Sans", Tahoma, sans-serif

→ LOGO BLEIBT GEORGIA ITALIC BOLD
   Bewusster Kontrast zum UI. Nicht ändern!

→ MONO BLEIBT SYSTEM-MONO
   Consolas / SF Mono / etc. — nur das UI-Sans wird zu Verdana.

Bitte hol dir die aktualisierten Dateien aus dem Repo:
- web/sideforge-tokens.css (--sf-font-sans wurde auf Verdana umgestellt)
- wpf/Sideforge-Theme.ps1 (neue Keys FontFamily, FontFamilyMono, FontFamilySerif)
- docs/TYPOGRAPHY.md (komplette Schrift-Regeln, falls gewünscht)

Zu tun in [TOOLNAME]:
1. Alle Stellen wo eine Sans-Schrift gesetzt ist auf Verdana umstellen
   - Web: font-family: Verdana, Geneva, "DejaVu Sans", Tahoma, sans-serif;
   - WPF: FontFamily="Verdana" am Window-Root jedes Fensters
2. Logo-Buchstaben (Georgia) NICHT anfassen
3. Mono-Bereiche (Code, Pfade, Listen mit Tabellendarstellung) NICHT anfassen
4. Versions-Bump (Patch-Level) und Changelog-Eintrag

Funktionale Logik wieder unangetastet. Lass uns das Update machen!
```

---

## Wenn künftige Sideforge-Updates kommen

Wann immer das Design-System ein Update bekommt (z.B. v1.0.2 mit neuer Komponente, oder v1.1.0 mit zusätzlicher Farbe), erweiterst du diese Datei einfach um ein neues Szenario, z.B. **Szenario 3: v1.0.1 → v1.0.2 Update**, mit dem entsprechenden Prompt.

So bleibt die Datei das zentrale Nachschlagewerk für alle Sideforge-Migrationen — und du kannst von jedem Tool-Chat aus einfach den passenden Prompt holen.
