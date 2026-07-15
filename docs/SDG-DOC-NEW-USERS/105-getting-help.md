# Getting Help

## Built-in Documentation System

SDG-OS has a layered help system:

**`sdgdocs`** — Browse all installed module documentation.

- `sdgdocs` — Interactive fzf browser across all docs
- `sdgdocs --from MODULE` — Docs from a specific module
- `sdglinks` — Online reference links (MangoWM, DMS, Arch Wiki)

**`sdgtip`** — Random tips and searchable tip library.

- `sdgtip` — Random tip from all module tips
- `sdgtip list` — Browse all tips
- `sdgtip sources` — List which modules contribute tips

**Additional tools**:

- `SUPER+SHIFT+H` — `helptui` (original help topic browser)
- `SUPER+H` — `tldrtui` (command reference with tldr + man)
- `SUPER+SHIFT+M` — `sdgdocs` (documentation browser)
- `SUPER+SHIFT+/` — Config reference sheets

## Documentation Modules

Documentation is organised into doc modules under `~/.local/docs/`.
Each module can have multiple doc sub-modules:

```
~/.local/docs/
  SDG-DOCS/
    SDG-DOC-GETTING-STARTED/   # Welcome, keybinds, overview
    SDG-DOC-NEW-USERS/         # Desktop navigation, keybinds, workflows
    SDG-DOC-TERMINAL/          # Terminal basics, scripting
    SDG-DOC-TINKERERS/         # Module layout, configuration, theming
    SDG-DOC-DEVS/              # Architecture overview, SDG-PKG reference
    SDG-DOC-AGENTS/            # AI/automation integration
    SDG-DOC-TROUBLESHOOTING/   # Common issues and fixes
```

When you install a new module, its documentation is automatically
available through `sdgdocs` — there is nothing extra to configure.
