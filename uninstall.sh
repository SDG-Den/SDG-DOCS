#!/bin/bash

rm -rf $HOME/.local/docs/SDG-DOC-NEW-USERS
rm -rf $HOME/.local/docs/SDG-DOC-TINKERERS
rm -rf $HOME/.local/docs/SDG-DOC-DEVS
rm -rf $HOME/.local/docs/SDG-DOC-AGENTS
rm -rf $HOME/.local/tips/SDG-DOCS
rm -rf $HOME/.local/SDG-DOCS

sudo unlink /usr/bin/sdg-docs 2>/dev/null
