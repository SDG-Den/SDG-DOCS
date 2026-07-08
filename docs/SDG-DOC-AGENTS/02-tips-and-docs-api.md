# Tips and Docs API

The `sdgtip` and `sdg-docs` CLIs expose machine-readable output
modes that agents can consume.

## sdgtip Machine Interface

```sh
# List sources with tip counts (parsable)
sdgtip sources

# Get a single random tip
sdgtip random

# Get all tip lines for processing
sdgtip list            # Interactive fzf — not suitable for automation
# Instead, read files directly:
cat ~/.local/tips/*/*.list
```

## sdg-docs Machine Interface

```sh
# List available doc sources
sdg-docs sources

# List external documentation links
sdg-docs links

# Read doc files directly (more reliable for automation)
find ~/.local/docs/ -name '*.md' -type f
```

## File-Based Discovery (Recommended for Agents)

Rather than parsing CLI output, agents should read the filesystem
directly.  The convention is simpler than any API:

**To find all tips:**
```python
import glob
tips = []
for f in glob.glob(os.path.expanduser("~/.local/tips/*/*.list")):
    with open(f) as fh:
        tips.extend(line.strip() for line in fh if line.strip())
```

**To find all documentation:**
```python
import glob
docs = glob.glob(os.path.expanduser("~/.local/docs/*/*/*.md"))
```

**To find a module's documentation:**
```python
module_docs = glob.glob(os.path.expanduser(f"~/.local/docs/{module}/**/*.md"))
```

## Config Files

Agents can also read module configs to understand user preferences:

```sh
# Tips exclusion list
cat ~/.config/SDG-TIPS/config.toml

# Voice command tree
cat ~/.config/SDG-VOX/config.json

# Wallpaper settings
cat ~/.config/SDG-THEMES/default/wallpaper.conf

# MangoWM binds
cat ~/.config/mango/binds.conf
```
