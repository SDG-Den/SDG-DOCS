# Getting Help

## Built-in Documentation System

SDG-OS has a layered help system:

**`sdg-docs`** — Browse all installed module documentation.

- `sdg-docs` — Interactive fzf browser across all docs
- `sdg-docs --from MODULE` — Docs from a specific module
- `sdg-docs sources` — List which modules have docs
- `sdg-docs links` — Online reference links (MangoWM, DMS, Arch Wiki)

**`sdgtip`** — Random tips and searchable tip library.

- `sdgtip` — Random tip from all module tips
- `sdgtip list` — Browse all tips
- `sdgtip sources` — List which modules contribute tips

**Legacy tools** (still available during migration):

- `SUPER+SHIFT+H` — `helptui` (original help topic browser)
- `SUPER+H` — `tldrtui` (command reference with tldr + man)
- `SUPER+SHIFT+M` — `document` (external doc links launcher)
- `SUPER+SHIFT+/` — `reference` (config reference sheets)

## Documentation Modules

Documentation is organised into doc modules under `~/.local/docs/`.
Each module can have multiple doc sub-modules:

```
~/.local/docs/
  SDG-UTIL-SCRIPTS/
    SDG-DOC-GETTING-STARTED/   # Welcome, keybinds, overview
    SDG-DOC-DESKTOP-USAGE/     # Window management, menus
    SDG-DOC-TERMINAL/          # Terminal basics
    SDG-DOC-CUSTOMIZATION/     # DMS and mangoWM config
    SDG-DOC-DEVELOPMENT/       # Scripting
  SDG-DOCS/
    SDG-DOC-NEW-USERS/         # This section
    SDG-DOC-TINKERERS/         # Customisation deep-dive
    SDG-DOC-DEVS/              # Module development
    SDG-DOC-AGENTS/            # AI/automation integration
```

When you install a new module, its documentation is automatically
available through `sdg-docs` — there is nothing extra to configure.
