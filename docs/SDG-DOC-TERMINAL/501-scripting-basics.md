> Scripting basics

bash scripting lets you automate tasks and extend SDG-OS with custom tooling.

### script structure

a bash script starts with a shebang:

```bash
#!/bin/bash
# my script
echo "hello world"
```

make it executable: `chmod +x myscript.sh`
run it: `./myscript.sh` or `bash myscript.sh`

### variables

```bash
name="world"
echo "hello $name"
```

use curly braces for clarity: `echo "${name}_file"`

### command substitution

```bash
result=$(ls)
echo "$result"
```

### arguments

```bash
echo "first arg: $1"
echo "all args: $@"
echo "arg count: $#"
```

### reading input

```bash
read -p "enter your name: " name
echo "hi $name"
```

### exit codes

```bash
command
if [ $? -eq 0 ]; then
    echo "success"
else
    echo "failed"
fi
```

### useful commands for scripting

- `grep` — search text
- `sed` — replace text
- `awk` — process columns
- `jq` — parse JSON
- `find` — locate files
- `xargs` — build command lines
