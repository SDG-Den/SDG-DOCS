# Migration Guide

## Upgrading SDG-OS Modules

The recommended upgrade path is:

```sh
# Upgrade all installed modules
sdgpkg upgrade

# Or upgrade a specific module
sdgpkg update <module>
```

Module updates replace `~/.local/`, `~/.local/docs/`, and `~/.local/tips/` but preserve `~/.config/`. Your customisations are safe.

## Migrating from v0.1 to v0.2

### What Changed

- Documentation moved from individual module READMEs to dedicated doc suites under `~/.local/docs/`.
- The help system was consolidated: `sdgdocs` replaces the earlier per-module doc browsers.
- Tips were standardised into `tips.list` files consumed by `sdgtip`.

### Steps

1. **Update all modules**:
   ```sh
   sdgpkg upgrade
   ```

2. **Verify documentation is available**:
   ```sh
   sdgdocs
   ```
   You should see the full list of installed doc modules.

3. **Check that tips are accessible**:
   ```sh
   sdgtip list
   ```

4. **Remove old legacy tools** (if still present):
   ```sh
   sdgpkg uninstall sdg-util-scripts  # If no longer needed
   ```

### Rollback

If you need to revert:

```sh
# Uninstall the updated module
sdgpkg uninstall sdg-docs

# Reinstall the previous version from cache
# (if available in ~/.cache/SDG-PKG-OLD/)
```

## Migrating from v0.2 to Future Versions

Check the release notes in each module's `CHANGELOG.md` before upgrading. Major version bumps may include breaking changes to:

- **Config format**: Check `~/.config/<module>/` for new or changed options.
- **CLI commands**: Renamed or removed commands will be noted in the changelog.
- **Data layout**: File paths in `~/.local/` may change between major versions.

## General Migration Tips

1. **Back up your configs** before upgrading:
   ```sh
   cp -r ~/.config ~/.config.backup
   ```

2. **Review the CHANGELOG** for each module you depend on.

3. **Test with a single module first** before upgrading everything.

4. **Keep an eye on `~/.cache/SDG-PKG-OLD/`** — uninstalled module sources are preserved there for recovery.
