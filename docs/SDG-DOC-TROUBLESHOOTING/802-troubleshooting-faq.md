# Troubleshooting FAQ

## sdgdocs shows "No documentation found"

**Cause**: No doc modules are installed yet, or `sdgdocs` is looking in the wrong place.

**Fix**: Verify docs are deployed correctly:

```sh
ls ~/.local/docs/
```

If empty, reinstall the doc module:

```sh
sdgpkg install sdg-docs
```

`sdgdocs` globs `~/.local/docs/SDG-DOC-*/` — make sure your doc directories follow the `SDG-DOC-` prefix convention.

## sdgpkg install fails with "command not found"

**Cause**: `sdgpkg` is not installed or not in PATH.

**Fix**: Ensure SDG-PKG is installed:

```sh
which sdgpkg
```

If missing, install it from the SDG-REPO or contact your distribution maintainer.

## Module update doesn't show new docs

**Cause**: The update script may skip `docs/` to preserve user customisations.

**Fix**: Run a full reinstall instead of update:

```sh
sdgpkg install <module>
```

This replaces all doc files. Your config in `~/.config/` will not be touched.

## External links don't open with sdglinks

**Cause**: Firefox is not installed or not in PATH.

**Fix**: Install Firefox or update `~/.local/SDG-DOCS/links.list` to use a different browser:

```
My Link|firefox --new-tab https://example.com
# Change to:
My Link|chromium https://example.com
```

## Keybind SUPER+SPACE doesn't launch the app launcher

**Cause**: The launcher keybind may conflict with another application, or mangoWM config needs reloading.

**Fix**:

1. Press `SUPER+R` to reload the mangoWM configuration.
2. Check for conflicting keybinds in `~/.config/mango/binds.conf`.
3. Verify the launcher command is correct in your mangoWM config.

## bat preview shows raw text instead of formatted markdown

**Cause**: `bat` is not installed or the theme is unset.

**Fix**:

```sh
# Install bat
unipkg install any bat

# Set a theme
export BAT_THEME="Dracula"
```

Add the `BAT_THEME` export to your shell rc file for a persistent effect.

## Colour palette not updating after wallpaper change

**Cause**: Matugen colour generation may not have triggered, or the generated palette file is stale.

**Fix**:

```sh
# Force regenerate the palette
matugen image ~/.config/SDG-THEMES/current/wallpaper.png

# Restart affected components
SUPER+R  # Reload mangoWM
```

The generated palette lives at `~/.local/state/quickshell/user/generated/colors.json`.

## "Permission denied" when running sdgdocs

**Cause**: The symlink in `/usr/bin/` may be broken or pointing to the wrong location.

**Fix**:

```sh
# Recreate the symlink
sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-docs" /usr/bin/sdgdocs

# Verify
which sdgdocs
```

## How do I report a bug or request a feature?

Open an issue on the relevant module's repository. For SDG-DOCS specifically:

https://github.com/SDG-Den/SDG-DOCS/issues

Include:
- Your SDG-OS version (`sdgpkg version`)
- The module and version you are having trouble with
- Steps to reproduce the issue
- Any relevant log output or error messages
