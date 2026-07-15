# Scripting Basics

bash scripting lets you automate tasks and extend SDG-OS with custom tooling.

### shebang

every script starts with a shebang that tells the system which interpreter to use, this must be the very first line:

```bash
#!/bin/bash
```

after the shebang, you write your commands like you would in the terminal.

to run a script, make it executable with `chmod +x myscript.sh` and run it with `./myscript.sh`. you can also use `bash myscript.sh`.

### variables

```bash
name="SDG-OS"
echo "Hello, $name"
echo "Home: $HOME"
```

use `$` to reference a variable. wrap variables in quotes to preserve spaces: `echo "$name"`. use curly braces when the variable name runs into other text: `echo "${name}_files"`.

### echo

`echo "text"` prints text to the terminal. `echo "value: $var"` prints a variable value.

### reading files

to read a file into a variable:

```bash
content=$(cat /path/to/file)
echo "$content"
```

### command substitution

`$(command)` captures command output into something you can use:

```bash
current_dir=$(pwd)
files=$(ls)
echo "$files"
```

the old backtick syntax (`` `command` ``) works too but `$()` is preferred because it nests better.

### exit codes

every command returns an exit code. 0 = success, anything else = failure.

```bash
ls /tmp
echo "exit code: $?"
```

your script should exit with the right code:

```bash
exit 0   # success
exit 1   # error
```

### SDG-OS script patterns

SDG-OS scripts commonly use:
- `fzf` for interactive menus
- `mmsg dispatch` for mango IPC
- `dms ipc call` for DMS integration
- `notify-send` for desktop notifications
- state files in `~/.config/` for settings

### example: toggle script

```bash
#!/bin/bash
# toggle between two wallpapers

CURRENT=$(cat ~/.config/wallpaper.state 2>/dev/null)
if [ "$CURRENT" = "dark" ]; then
    echo "light" > ~/.config/wallpaper.state
    dms ipc call wallpaper set ~/wallpapers/light.jpg
else
    echo "dark" > ~/.config/wallpaper.state
    dms ipc call wallpaper set ~/wallpapers/dark.jpg
fi
```

this reads a state file, switches the wallpaper, and saves the new state — you'll see this pattern in many SDG-OS utility scripts.
