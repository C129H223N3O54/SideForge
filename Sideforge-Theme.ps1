<#
.SYNOPSIS
    Sideforge Design System - WPF Theme Palette for PowerShell/WPF tools.

.DESCRIPTION
    Provides the Sideforge color palette (Ember/Moss/Anvil) as a
    PowerShell hashtable compatible with XAML string interpolation
    via $($T.KeyName) placeholders.

    Light and Dark mode are both defined. Pick one based on user
    preference or system setting. All colors are flat hex strings.

.USAGE
    # 1. Dot-source this file near the top of your .ps1:
    . ".\Sideforge-Theme.ps1"

    # 2. Pick a theme mode (or read from config):
    $script:ThemeMode = "Dark"   # or "Light"
    $T = $script:SideforgeThemes[$script:ThemeMode]

    # 3. Use in XAML via string interpolation:
    [xml]$XAML = @"
    <Window Background="$($T.WinBg)" ...>
      <TextBlock Foreground="$($T.TextAccent)" Text="Hello"/>
    </Window>
    "@

.NOTES
    Version: 1.0.0
    Part of the Sideforge Design System
    https://github.com/C129H223N3O54/SideForge
#>

# ============================================================================
# Sideforge Color Palette - WPF Edition
# ============================================================================

$script:SideforgeThemes = @{

    Dark = @{
        # --- Surfaces (warm anthracite, no blue tint) ---
        WinBg           = "#0F0F0F"
        PanelBg         = "#1A1A1A"
        HeaderBg        = "#141414"
        StatusBg        = "#1A1A1A"
        BottomBarBg     = "#0A0A0A"
        InputBg         = "#1F1F1F"

        # --- Text ---
        TextPrimary     = "#F5F5F5"
        TextSecondary   = "#B4B2A9"
        TextMuted       = "#888780"
        TextAccent      = "#F5A05A"   # Ember 300 (lighter orange for dark bg)
        InputFg         = "#F5F5F5"
        FileFg          = "#F5F5F5"
        FolderFg        = "#F5A05A"

        # --- Ember accent (Primary / Orange) ---
        Accent          = "#F07E2D"   # Ember 400
        AccentHover     = "#E8600A"   # Ember 500

        # --- Buttons ---
        BtnNeutral      = "#444441"
        BtnNeutralHover = "#2C2C2A"
        BtnBlue         = "#F07E2D"   # aliased to Ember (we don't use blue)
        BtnBlueHover    = "#E8600A"
        BtnDanger       = "#DC2626"
        BtnDangerDark   = "#991B1B"
        BtnGreen        = "#74A732"   # Moss 400 (for success states)
        BtnAmber        = "#BA7517"
        BtnAmberScan    = "#F07E2D"   # Same as accent
        BtnDupe         = "#F07E2D"   # Dupe-finder uses main accent
        BtnDupeHover    = "#E8600A"

        # --- Borders ---
        Border          = "#2C2C2A"
        BorderLight     = "#444441"
        InputBorder     = "#2C2C2A"

        # --- Rows / Selection ---
        RowHover        = "#2A1906"   # Very dark ember
        RowHoverFg      = "#FFFFFF"
        RowSelected     = "#8C3800"   # Ember 800
        RowSelectedDupe = "#27500A"   # Moss 800

        # --- Misc ---
        BarBg           = "#2C2C2A"
        SeparatorFg     = "#888780"
        BreadcrumbFg    = "#F5A05A"
        BreadcrumbMuted = "#B4B2A9"
        WarnFg          = "#FAC775"
        NoAccessFg      = "#F09595"
        BadgeFg         = "White"

        # --- Drive usage bars ---
        DriveBar        = "#E8600A"
        DriveBarWarn    = "#BA7517"
        DriveBarCrit    = "#991B1B"

        # --- Size class badges (optional, used in DiskLens) ---
        SizeBadgeVL     = "#991B1B"
        SizeBadgeL      = "#B84905"
        SizeBadgeM      = "#1E3A5F"
        SizeBadgeS      = "#27500A"
        SizeBadgeVS     = "#2C2C2A"

        # --- Changelog windows ---
        ChangelogHdr    = "#1A1A1A"
        ChangelogEntry  = "#141414"
        GroupHeaderBg   = "#141414"
    }

    Light = @{
        # --- Surfaces (warm off-white, anvil neutrals) ---
        WinBg           = "#FAFAF7"
        PanelBg         = "#FFFFFF"
        HeaderBg        = "#F1EFE8"
        StatusBg        = "#F1EFE8"
        BottomBarBg     = "#E5E5E0"
        InputBg         = "#FFFFFF"

        # --- Text ---
        TextPrimary     = "#1A1A1A"
        TextSecondary   = "#5F5E5A"
        TextMuted       = "#888780"
        TextAccent      = "#8C3800"   # Ember 800 (dark, readable on white)
        InputFg         = "#1A1A1A"
        FileFg          = "#1A1A1A"
        FolderFg        = "#8C3800"

        # --- Ember accent (Primary / Orange) ---
        Accent          = "#E8600A"   # Ember 500
        AccentHover     = "#CC5208"   # Ember 600

        # --- Buttons ---
        BtnNeutral      = "#5F5E5A"
        BtnNeutralHover = "#444441"
        BtnBlue         = "#E8600A"
        BtnBlueHover    = "#CC5208"
        BtnDanger       = "#DC2626"
        BtnDangerDark   = "#991B1B"
        BtnGreen        = "#639922"   # Moss 500
        BtnAmber        = "#BA7517"
        BtnAmberScan    = "#E8600A"
        BtnDupe         = "#E8600A"
        BtnDupeHover    = "#CC5208"

        # --- Borders ---
        Border          = "#D3D1C7"
        BorderLight     = "#E5E5E0"
        InputBorder     = "#D3D1C7"

        # --- Rows / Selection ---
        RowHover        = "#FDD9BC"   # Ember 100
        RowHoverFg      = "#1A1A1A"
        RowSelected     = "#F5A05A"   # Ember 300
        RowSelectedDupe = "#C9DEA0"   # Moss 100

        # --- Misc ---
        BarBg           = "#E5E5E0"
        SeparatorFg     = "#B4B2A9"
        BreadcrumbFg    = "#8C3800"
        BreadcrumbMuted = "#5F5E5A"
        WarnFg          = "#8C3800"
        NoAccessFg      = "#991B1B"
        BadgeFg         = "White"

        # --- Drive usage bars ---
        DriveBar        = "#E8600A"
        DriveBarWarn    = "#BA7517"
        DriveBarCrit    = "#991B1B"

        # --- Size class badges ---
        SizeBadgeVL     = "#DC2626"
        SizeBadgeL      = "#E8600A"
        SizeBadgeM      = "#2563EB"
        SizeBadgeS      = "#639922"
        SizeBadgeVS     = "#5F5E5A"

        # --- Changelog windows ---
        ChangelogHdr    = "#F1EFE8"
        ChangelogEntry  = "#FFFFFF"
        GroupHeaderBg   = "#F1EFE8"
    }
}

# ============================================================================
# Helper: Read system theme (Windows 10/11)
# ============================================================================

function Get-SideforgeSystemTheme {
    <#
    .SYNOPSIS
        Returns "Light" or "Dark" based on the current Windows apps theme.
    #>
    try {
        $val = Get-ItemPropertyValue `
            -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" `
            -Name "AppsUseLightTheme" -ErrorAction Stop
        return $(if ($val -eq 1) { "Light" } else { "Dark" })
    } catch {
        return "Dark"
    }
}

# ============================================================================
# Helper: XAML snippet for the SF logo tile
# ============================================================================
# Usage inside your XAML:
#
#   $sfLogo = Get-SideforgeLogoXaml -Size 36
#   [xml]$xaml = @"
#   <Window ...>
#     <StackPanel Orientation="Horizontal">
#       $sfLogo
#       <TextBlock Text="Side" FontSize="16" FontWeight="Bold"
#                  Foreground="$($T.TextPrimary)"/>
#       <TextBlock Text="forge" FontSize="16" FontWeight="Bold"
#                  Foreground="$($T.TextAccent)"/>
#     </StackPanel>
#   </Window>
#   "@
# ============================================================================

function Get-SideforgeLogoXaml {
    <#
    .SYNOPSIS
        Returns a WPF XAML snippet rendering the SF logo tile.

    .PARAMETER Size
        Outer tile size in pixels. Inner text scales proportionally.
        Recommended: 28 (dialogs), 36 (sub-tool headers), 44 (main window).
    #>
    param(
        [int]$Size = 36
    )

    $fontSize   = [math]::Round($Size * 0.58)
    $cornerRad  = [math]::Round($Size * 0.20)
    $sMargin    = [math]::Max(3, [math]::Round($Size * 0.14))
    $fMargin    = $sMargin

    return @"
<Border Width="$Size" Height="$Size" CornerRadius="$cornerRad" Background="#1A1A1A" VerticalAlignment="Center" Margin="0,0,10,0">
  <Grid>
    <TextBlock Text="S" FontFamily="Georgia" FontStyle="Italic" FontWeight="Bold" FontSize="$fontSize" Foreground="#E8600A" HorizontalAlignment="Left"  VerticalAlignment="Center" Margin="$sMargin,0,0,1"/>
    <TextBlock Text="F" FontFamily="Georgia" FontStyle="Italic" FontWeight="Bold" FontSize="$fontSize" Foreground="#F5F5F5" HorizontalAlignment="Right" VerticalAlignment="Center" Margin="0,0,$fMargin,1"/>
  </Grid>
</Border>
"@
}

# ============================================================================
# Helper: Full brand row (logo + wordmark + sub-tool name)
# ============================================================================

function Get-SideforgeBrandRowXaml {
    <#
    .SYNOPSIS
        Returns a WPF XAML snippet with the full Sideforge brand row:
        SF logo tile + "Sideforge" wordmark + "/ ToolName" sub-label.

    .PARAMETER ToolName
        The specific tool name shown after the slash (e.g. "NetworkLens").

    .PARAMETER Theme
        The theme hashtable ($T) so colors can be interpolated.

    .PARAMETER LogoSize
        Logo tile size. 28 for dialogs, 36 for sub-tools, 44 for main window.

    .PARAMETER WordmarkSize
        Font size for "Sideforge". 14 for small dialogs, 16 for sub-tools, 22 for main.
    #>
    param(
        [string]$ToolName,
        [hashtable]$Theme,
        [int]$LogoSize     = 36,
        [int]$WordmarkSize = 16
    )

    $logo    = Get-SideforgeLogoXaml -Size $LogoSize
    $subSize = [math]::Max(11, $WordmarkSize - 4)

    return @"
<StackPanel Orientation="Horizontal" VerticalAlignment="Center">
  $logo
  <StackPanel VerticalAlignment="Center">
    <StackPanel Orientation="Horizontal">
      <TextBlock Text="Side"  FontSize="$WordmarkSize" FontWeight="Bold" Foreground="$($Theme.TextPrimary)"/>
      <TextBlock Text="forge" FontSize="$WordmarkSize" FontWeight="Bold" Foreground="$($Theme.TextAccent)"/>
      <TextBlock Text="  /  $ToolName" FontSize="$subSize" Foreground="$($Theme.TextMuted)" VerticalAlignment="Center" Margin="4,1,0,0"/>
    </StackPanel>
  </StackPanel>
</StackPanel>
"@
}
