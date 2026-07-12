#!/bin/bash

rm -rf $HOME/.local/docs/SDG-DOC-NEW-USERS
rm -rf $HOME/.local/docs/SDG-DOC-TINKERERS
rm -rf $HOME/.local/docs/SDG-DOC-DEVS
rm -rf $HOME/.local/docs/SDG-DOC-AGENTS
rm -rf $HOME/.local/docs/SDG-DOC-TROUBLESHOOTING
rm -rf $HOME/.local/docs/SDG-DOC-MIGRATION
rm -rf $HOME/.local/tips/SDG-DOCS
rm -rf $HOME/.local/SDG-DOCS

sudo unlink /usr/bin/sdgdocs 2>/dev/null
sudo unlink /usr/bin/sdglinks 2>/dev/null
