# Lifecycle Scripts Reference

Every SDG-OS module defines lifecycle scripts at its repository root
that sdgpkg calls during install, update, and removal.

## install.sh

Called once when a module is first installed.  sdgpkg clones the repo
to `~/.cache/SDG-PKG/<module>/` and then runs this script.

**Contract:**
- Deploy all files to the correct XDG-style paths
- Create `/usr/bin/` symlinks for CLI entrypoints
- Install dependencies via `unipkg` (if applicable)
- Run any first-time setup (model downloads, database initialisation)
- Verify critical commands exist before exiting

If `install.sh` exits with a non-zero status, sdgpkg considers the
installation failed.

## uninstall.sh

Called when a module is removed.  sdgpkg runs this script, then moves
the cache directory to `~/.cache/SDG-PKG-OLD/<module>/`.

**Contract:**
- Remove everything that `install.sh` created
- Remove `/usr/bin/` symlinks
- Ask before removing user configuration (or just remove it —
  convention varies by module)

## update.sh

Called during `sdgpkg update <module>` and `sdgpkg upgrade` (which
runs update on every installed module).

**Contract:**
- Fully replace `~/.local/<module>/`, `~/.local/docs/<module>/`,
  and `~/.local/tips/<module>/`
- **Do not touch** `~/.config/<module>/` — user customisations live there
- Re-apply symlinks (the entrypoint may have changed)
- Verify critical commands exist

## detect.sh (optional)

**Contract:**
- Check that all required system dependencies are available
- Exit 0 if everything is fine, non-zero with a message if not
- Optional dependencies should be noted but not cause failure

## Common Patterns

### Conditional Config Copy

```bash
# Only copy config if it doesn't exist (preserves user edits)
[ ! -f /home/$(whoami)/.config/MODULE/config.json ] && \
  cp $WORKDIR/config/MODULE/config.json /home/$(whoami)/.config/MODULE/config.json
```

### Dependency Installation

```bash
unipkg install any python3-gobject
unipkg install any python3-cairo
```

### Multiple Entrypoints

```bash
sudo ln -sf /home/$(whoami)/.local/MODULE/tool1.sh /usr/bin/tool1
sudo ln -sf /home/$(whoami)/.local/MODULE/tool2.sh /usr/bin/tool2
```
