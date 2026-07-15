> Customizing mango - binds

mangoWM keybinds are configured in ~/.config/mango/config.conf which sources binds-modes.conf (for core keybinds organized by keymode) and additional binds-*.conf files for specific categories. DMS-related binds can also go in ~/.config/mango/dms/binds.conf.

### keybind syntax

binds follow this format:
```
bind=MODIFIERS,KEY,DISPATCHER,ARGUMENT
```

modifiers can be combined with + (no spaces):
- SUPER (mod4/windows key)
- SHIFT
- CTRL
- ALT

### example binds

```
bind=SUPER,RETURN,spawn_shell,ghostty
bind=SUPER,Q,killclient,
bind=SUPER+SHIFT,Q,quit,
bind=SUPER,SPACE,spawn_shell,dms ipc call spotlight toggle
```

### dispatchers

common dispatchers include:
- spawn_shell — run a shell command
- killclient — close the focused window
- quit — quit mangoWM
- focusdir — move focus (up/down/left/right)
- togglefloating — toggle floating mode
- togglefullscreen — toggle fullscreen
- toggleoverview — enter the overview
- movefocus — move focus in a direction
- exchange_client — swap window position with neighbor
- toggle_scratchpad — toggle the scratchpad visibility
- toggle_named_scratchpad — toggle a named scratchpad

### keymodes

binds can be assigned to keymodes for context-sensitive shortcuts:
- **common** — always active (default)
- **window** — enter with F1, WASD moves windows instead of focus
- **group** — enter with F2, group operations and layout switching
- **scripts** — enter with F3
- **theming** — enter with F4, wallpaper/bar/color shortcuts
- press **escape** in any sub-mode to return to default

### viewing current binds

use *super+k* to see all active keybinds for the current mode, or run `reference mangodispatchers` for the full dispatcher list.