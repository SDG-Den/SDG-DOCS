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
  SDG-DOC-NEW-USERS/         # Another doc sub-module
```

These subdirectories are what the `sdgdocs` CLI discovers when you
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

## Registering a Module in the Repo

For a module to be installable via `sdgpkg install <name>`, it must
be registered in a `.repo` index.  The central registry is maintained
in the SDG-REPO module:

```
sdg-vox|https://git.sdgcloud.nl/SDGDen/SDG-VOX|https://git.sdgcloud.nl/SDGDen/SDG-VOX/raw/branch/main/README.md
```

Fields: `package-name | git-clone-url | readme-url`

Repo files live in `~/.config/SDG-PKG/`.  Each file is plain text
with one URL per line pointing to a pipe-delimited index.  The
default file is `50-core.repo`.

### Testing a Module Locally

Before submitting to the central registry, test with a local repo
file:

```sh
echo "https://raw.githubusercontent.com/you/sdg-repo/main/SDGOS.repo" > ~/.config/SDG-PKG/00-test.repo
sdgpkg install my-new-module
sdgdocs                   # Should include your module's docs
which mycli               # Should show the symlink
```
