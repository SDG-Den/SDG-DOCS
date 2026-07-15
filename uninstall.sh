#!/bin/bash

rm -rf $HOME/.local/docs/SDG-DOC-NEW-USERS
rm -rf $HOME/.local/docs/SDG-DOC-DESKTOP-USAGE
rm -rf $HOME/.local/docs/SDG-DOC-TERMINAL
rm -rf $HOME/.local/docs/SDG-DOC-CUSTOMIZATION
rm -rf $HOME/.local/docs/SDG-DOC-DEVELOPMENT
rm -rf $HOME/.local/docs/SDG-DOC-TINKERERS
rm -rf $HOME/.local/docs/SDG-DOC-DEVS
rm -rf $HOME/.local/docs/SDG-DOC-AGENTS
rm -rf $HOME/.local/docs/SDG-DOC-GETTING-STARTED
rm -rf $HOME/.local/docs/SDG-DOC-TROUBLESHOOTING
rm -rf $HOME/.local/docs/SDG-DOC-MIGRATION
rm -rf $HOME/.local/tips/SDG-DOCS
rm -rf $HOME/.local/SDG-DOCS

sudo unlink /usr/bin/sdgdocs 2>/dev/null
sudo unlink /usr/bin/sdglinks 2>/dev/null
