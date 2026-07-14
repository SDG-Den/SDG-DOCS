# Path Conventions

An agent can discover everything about the system by reading standard
paths.  No module registry or database query is needed.

## Discover Installed Modules

```sh
ls ~/.local/             # Module local directories
ls ~/.local/docs/        # Modules that ship documentation
ls ~/.local/tips/        # Modules that ship tips
ls ~/.config/            # Modules that have configuration
ls /usr/bin/sdg*         # CLI entrypoints
ls /usr/bin/sdgtip     # Check if specific CLI exists
```

## Read Module Documentation

```sh
# List all documentation modules
find ~/.local/docs/ -mindepth 2 -maxdepth 2 -type d

# Read a specific doc file
cat ~/.local/docs/SDG-DOCS/SDG-DOC-DEVS/01-architecture-overview.md

# Read all README files for module overviews
find ~/.local/docs/ -name 'README.md'
```

## Read Module Tips

```sh
# List all tip sources
find ~/.local/tips/ -name '*.list'

# Read all tips
cat ~/.local/tips/*/*.list
cat ~/.local/tips/*/tips.list  # Primary tip files only

# Count tips per module
wc -l ~/.local/tips/*/tips.list
```

## Read Module Configuration

```sh
# List all config directories
ls ~/.config/

# Read specific config
cat ~/.config/SDG-VOX/config.json
cat ~/.config/mango/binds.conf
```

## Check if a CLI Tool Exists

```sh
command -v sdgtip    # Tips CLI
command -v sdgdocs    # Docs browser
command -v sdgpkg      # Package manager
command -v sdgfetch    # System info
command -v sdgvox      # Voice commands
command -v sdgglyphs   # Glyph input
command -v wayshell    # Event daemon
```

## The XDG Convention

SDG-OS follows the XDG Base Directory specification:

| Variable | Default | Purpose |
|----------|---------|---------|
| `$XDG_CONFIG_HOME` | `~/.config/` | User configuration |
| `$XDG_DATA_HOME` | `~/.local/` | User data and executables |
| `$XDG_CACHE_HOME` | `~/.cache/` | User cache (module sources) |
| `$XDG_STATE_HOME` | `~/.local/state/` | Runtime state (colour palette) |

All module paths are relative to these base directories using the
module name as a subdirectory.
