# Test Checklist — SDG-DOCS

## Commands
- [ ] `sdgdocs` — opens fzf browser with all installed modules listed
- [ ] `sdgdocs --from SDG-PKG` — shows only SDG-PKG docs
- [ ] Selecting a doc file opens it in pager (bat / less)
- [ ] `sdglinks` — shows external link browser
- [ ] Empty state: no modules installed — shows helpful message
- [ ] Malformed frontmatter in doc file — graceful handling
