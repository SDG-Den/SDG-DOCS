#!/bin/bash

WORKDIR="$HOME/.cache/SDG-PKG/sdg-docs"

rm -rf "$HOME/.local/SDG-DOCS"
cp -r "$WORKDIR/local/"* "$HOME/.local/"

rm -rf "$HOME/.local/docs/SDG-DOC-NEW-USERS" \
      "$HOME/.local/docs/SDG-DOC-TINKERERS" \
      "$HOME/.local/docs/SDG-DOC-DEVS" \
      "$HOME/.local/docs/SDG-DOC-AGENTS"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"

rm -rf "$HOME/.local/tips/SDG-DOCS"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/"

sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-docs" /usr/bin/sdgdocs
sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-links" /usr/bin/sdglinks
