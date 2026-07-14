# Customizing DMS

This page covers parts of the DMS settings menu that are not immediately obvious. You can open the settings from the bar or by pressing **SUPER+S**.

## Personalization

**Wallpaper settings** can be changed using the wallpaper script (**SUPER+W**). Turning on per-mode or per-monitor wallpapers here will prevent the script from working properly.

**Color settings** are listed by their application area. The top section controls theme and colors. Setting colors to Auto uses Matugen for dynamic color extraction from your wallpaper.

Matugen templates control how the color scheme is applied to other programs. All templates are enabled by default, so most software works automatically. Some applications need manual configuration:

- **Firefox, Vesktop, VSCode** — may need additional setup. Instructions are available at https://danklinux.com/docs/dankmaterialshell/application-themes
- **Vesktop** — enable the theme in Vencord theme settings, then toggle light/dark mode to trigger an update
- **GTK/QT applications** — if themes are not applying, click the refresh button at the bottom of the Themes and Colors page

## Bar

SDG-OS comes with several pre-configured bars: a full top bar, a bottom bar, a top status bar, and a side bar. You can tweak these in the settings or by using `dmsbars` to switch between preset combinations.

## Workspaces

These settings affect how workspaces and tags are displayed in your top bar.

## Keyboard shortcuts

This section lets you view all current keybinds and add new ones. Custom binds are saved to `~/.config/mango/dms/binds.conf`.
