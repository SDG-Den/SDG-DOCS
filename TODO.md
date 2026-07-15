# TODO — SDG-DOCS

## Documentation
- [x] Verify `sdgdocs` browses all modules correctly
- [x] Verify `sdglinks` resolves external targets
- [x] Check all doc suites are indexed and browsable
- [x] Fix doc count (README/info.md said "six" — now says "comprehensive")
- [x] Fix uninstall.sh to remove all 11 doc suites (was missing 5)
- [x] Fix 401-405 docs: wrong config file paths (mangowm.conf → config.conf + specific files)
- [x] Fix 401: wrong layout option names
- [x] Fix 402: wrong keybind syntax, missing keymodes section
- [x] Fix 403: decoration options from wrong config, removed DMS bar options
- [x] Rewrite 404: autostart was bash script format, now uses exec-once syntax
- [x] Rewrite 405: monitor syntax was wrong format, now uses monitorrule
- [x] Fix 203: movement keys (arrows → WASD), removed non-existent resize bind
- [x] Sync 704-sdgpkg-reference with actual SDG-PKG docs
- [x] Fix AGENTS doc paths
- [x] Add Matugen color engine doc (406)
- [x] Add window rules doc (407)
- [x] Add keymodes to 202-overview-of-other-menus
- [x] Add workspace swap to 202-overview-of-other-menus
- [x] Fix SDG-FETCH README doc filename references
- [x] Fix SDG-PKG info.md command list

## Remaining
- [ ] SUPER+0 keybind: decide to implement or remove from all docs (documented in MANGO-CORE README, MANGO-CORE docs, SDG-DOCS keybind refs, but no actual bind exists in config)
- [ ] Verify `sdglinks` external URLs resolve
- [ ] Empty index (no modules installed)
- [ ] Malformed doc files handled gracefully
- [ ] Cross-references between doc files resolve
