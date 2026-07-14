# Configuring Modules

## Where Configuration Lives

Every module places its configuration in `~/.config/<MODULE-NAME>/`.
For example:

```
~/.config/
  mango/              # mangoWM window manager
    binds.conf
    monitors.conf
    autostart.conf
  SDG-VOX/            # Voice command system
    config.json
  SDG-GLYPHS/         # Glyph input system
    config.json
    glyphs-data/
  SDG-THEMES/         # Wallpaper groups
    example.conf
    default/
  SDG-PKG/            # Package manager repos
    00-core.repo
  SDG-TIPS/           # Tips system config
    config.toml
  SDG-WAYSHELL/       # Wayshell event daemon
    wayshell.conf
    wayshell.modules
  SDG-WAYSHELL-CONFIGS/  # Bar, volume, brightness configs
    bottom-bar/
    volume/
    screenshot/
```

## Editing Configuration

Most configuration can be edited directly with a text editor.  Some
modules also provide TUI or GUI tools:

| Module | Tool | Purpose |
|--------|------|---------|
| mangoWM | `SUPER+M` | Config browser (SDG-MANGO-HELPERS) |
| DMS | `SUPER+S` | Settings panel |
| SDG-VOX | `sdgvox-config` | Voice command tree editor |
| SDG-TIPS | `sdgtip config exclude` | Tip source exclusions |

## Preserving Customisation Across Updates

The lifecycle scripts are designed so that:

- **First install**: all config files are deployed fresh.
- **Update**: most modules leave `~/.config/` untouched, only
  updating `~/.local/`, `~/.local/docs/`, and `~/.local/tips/`.

This means your customised configuration survives module updates.
If a module adds new config options, you may need to merge them
manually.
