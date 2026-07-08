#!/bin/bash

rm -rf /home/$(whoami)/.local/docs/SDG-DOC-NEW-USERS
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-TINKERERS
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-DEVS
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-AGENTS
rm -rf /home/$(whoami)/.local/tips/SDG-DOCS
rm -rf /home/$(whoami)/.local/SDG-DOCS

sudo unlink /usr/bin/sdg-docs 2>/dev/null
