# Automation Integration

## Discovering System State

An agent can assess the SDG-OS installation by checking these paths:

| Check | What it tells you |
|-------|------------------|
| `~/.local/` contents | Which modules are installed |
| `~/.local/docs/` | Which modules have documentation |
| `~/.local/tips/` | Which modules contribute tips |
| `/usr/bin/sdg*` | Available CLI tools |
| `~/.config/mango/binds.conf` | User's keybind customisations |
| `~/.config/SDG-VOX/config.json` | Voice command bindings |
| `~/.config/SDG-GLYPHS/glyphs-data/*.json` | Defined glyph commands |
| `~/.local/state/quickshell/user/generated/colors.json` | Current colour palette |

## Reading Documentation for Context

When an agent needs to understand a specific subsystem:

```sh
MODULE="SDG-VOX"
DOCS_DIR="$HOME/.local/docs/$MODULE"

if [ -d "$DOCS_DIR" ]; then
  for doc in "$DOCS_DIR"/**/*.md; do
    cat "$doc"
    echo "---"
  done
fi
```

This allows an agent to self-educate about any installed module by
reading its documentation directory.

## Reading Tips for Suggestions

When offering suggestions to a user:

```sh
# Collect all tips
ALL_TIPS=$(cat ~/.local/tips/*/*.list 2>/dev/null)

# Pick one relevant to the current context
echo "$ALL_TIPS" | grep -i "$CONTEXT" | shuf -n 1
```

## Lifecycle Automation

An agent can manage modules programmatically:

```sh
# Install a module
sdgpkg install sdg-vox

# Update all modules
sdgpkg upgrade

# List available modules
sdgpkg fetch

# Check for updates
sdgpkg upgradable
```

## Extending the System

Agents can also create new modules by following the conventions
documented in `SDG-DOC-DEVS`.  A module is simply a git repo with
an `install.sh` — there is no SDK or build step required.

The key contracts an automated module creator must follow:

1. Files in `config/` → `~/.config/<MODULE>/` (user-editable)
2. Files in `local/` → `~/.local/<MODULE>/` (executables)
3. Files in `docs/` → `~/.local/docs/<MODULE>/` (documentation)
4. Files in `tips/` → `~/.local/tips/<MODULE>/` (tips)
5. CLI tools → symlink from `~/.local/<MODULE>/` to `/usr/bin/`
