# Flow Control

bash provides standard programming constructs for conditional execution and looping.

### if/then/elif/fi

```bash
if [ condition ]; then
    # do something
elif [ other_condition ]; then
    # do something else
else
    # fallback
fi
```

spaces around `[` and `]` are required.

### test operators

file tests:
- `[ -f file ]` — file exists and is a regular file
- `[ -d dir ]` — directory exists
- `[ -e path ]` — path exists
- `[ -s file ]` — file is non-empty
- `[ -r/-w/-x file ]` — file is readable/writable/executable

string tests:
- `[ "$a" = "$b" ]` — strings are equal (use =, not ==)
- `[ "$a" != "$b" ]` — strings are different
- `[ -z "$a" ]` — string is empty
- `[ -n "$a" ]` — string is non-empty

numeric tests:
- `[ "$a" -eq "$b" ]` — equal
- `[ "$a" -ne "$b" ]` — not equal
- `[ "$a" -gt "$b" ]` — greater than
- `[ "$a" -lt "$b" ]` — less than

always quote your string variables in tests. without quotes, an empty variable causes a syntax error.

### combining conditions

```bash
[ condition1 ] && [ condition2 ]   # AND
[ condition1 ] || [ condition2 ]   # OR
[ ! condition ]                    # NOT
```

### for loops

iterate over a list:

```bash
for item in one two three; do
    echo "$item"
done
```

iterate over files:

```bash
for file in ~/projects/*; do
    echo "found: $file"
done
```

iterate over numbers:

```bash
for i in {1..5}; do
    echo "number $i"
done
```

### while loops

read a file line by line:

```bash
while IFS= read -r line; do
    echo "line: $line"
done < ~/somefile.txt
```

the `IFS=` and `-r` preserve whitespace and backslashes.

infinite loop with break:

```bash
while true; do
    read -p "enter q to quit: " input
    [ "$input" = "q" ] && break
done
```

### case statements

```bash
case "$var" in
    start)
        echo "starting..."
        ;;
    stop)
        echo "stopping..."
        ;;
    restart|reload)
        echo "restarting..."
        ;;
    *)
        echo "unknown command"
        ;;
esac
```

each pattern ends with `;;`. `*` is the default catch-all.

### practical examples

checking if a state file exists before reading it:

```bash
#!/bin/bash
STATE=~/.config/sdgos/wallpaper.state
if [ -f "$STATE" ]; then
    CURRENT=$(cat "$STATE")
else
    CURRENT="default"
fi
echo "Current wallpaper group: $CURRENT"
```

looping through multiple state files:

```bash
for state in ~/.config/sdgos/state/*.state; do
    [ -f "$state" ] || continue
    name=$(basename "$state" .state)
    echo "State for $name: $(cat "$state")"
done
```

the `[ -f "$state" ] || continue` guard skips the body if the glob matched nothing.
