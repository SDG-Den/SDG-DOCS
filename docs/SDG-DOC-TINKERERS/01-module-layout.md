# Module Layout Convention

Every SDG-OS module follows a standard directory layout in its source
repository and a matching layout on the installed system.

## Source Layout

```
SDG-MODULE-NAME/
  config/       # Configuration files → ~/.config/MODULE-NAME/
  local/        # Scripts, binaries → ~/.local/MODULE-NAME/
  docs/         # Documentation → ~/.local/docs/MODULE-NAME/
  tips/         # Tip files → ~/.local/tips/MODULE-NAME/
  other/        # Desktop entries, extras
  install.sh    # Lifecycle: install
  uninstall.sh  # Lifecycle: uninstall
  update.sh     # Lifecycle: update
```

## Installed Layout

After `sdgpkg install <module>`, the module's files end up at:

| Source | Installed to | Purpose |
|--------|-------------|---------|
| `config/foo` | `~/.config/MODULE/foo` | User-facing configuration — preserved across updates |
| `local/bar` | `~/.local/MODULE/bar` | Executables and libraries — replaced on update |
| `docs/*` | `~/.local/docs/MODULE/*` | Documentation — replaced on update |
| `tips/*` | `~/.local/tips/MODULE/*` | Tips — replaced on update |

### Configuration Is Preserved

The `config/` directory holds user-facing settings that should survive
updates.  A careful install script checks whether a config file already
exists before overwriting it, or the update script skips `~/.config/`
entirely (like SDG-VOX does).

### Local Files Are Replaced

The `local/`, `docs/`, and `tips/` directories are treated as
deployable assets — they are fully replaced on every update.

## Doc Sub-Modules

Within a module's `docs/` directory, content can be organised into
named subdirectories that act as *virtual doc modules*:

```
docs/
  SDG-DOC-GETTING-STARTED/   # One doc sub-module
  SDG-DOC-DESKTOP-USAGE/     # Another doc sub-module
```

These subdirectories are what the `sdg-docs` CLI discovers when you
use `--module` to drill into a specific topic area.  A doc sub-module
can be split out into its own repository later without changing any
consumer paths — just the install source path changes.

## Tip Sub-Modules

The same pattern applies to tips:

```
tips/
  SDG-TIPS-MANGO/   # Tip files about mangoWM
  SDG-TIPS-TERM/    # Tip files about the terminal
```

The `sdgtip` CLI aggregates all `.list` files it finds under
`~/.local/tips/`, so adding a new tip sub-module automatically
makes its content available.
