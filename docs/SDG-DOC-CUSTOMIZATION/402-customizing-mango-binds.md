> Customizing mango - binds

mangoWM keybinds are configured in ~/.config/mango/mangowm.conf and optionally in ~/.config/mango/dms/binds.conf for DMS-related binds.

### keybind syntax

binds follow this format:
```
bind = [modifiers], key, dispatcher, argument
```

modifiers can be:
- SUPER (mod4/windows key)
- SHIFT
- CTRL
- ALT

### example binds

```
bind = SUPER, Return, exec, ghostty
bind = SUPER, Q, killactive
bind = SUPER SHIFT, Q, exit
bind = SUPER, SPACE, exec, anyrun
```

### dispatchers

common dispatchers include:
- exec — run a command
- killactive — close the focused window
- exit — quit mangoWM
- movefocus — move focus (up/down/left/right)
- movewindow — move window (up/down/left/right)
- togglefloating — toggle floating mode
- workspace — switch to a workspace
- movetoworkspace — move window to a workspace

### viewing current binds

use *super+k* to see all active keybinds, or run `reference mangodispatchers` for the full dispatcher list.
