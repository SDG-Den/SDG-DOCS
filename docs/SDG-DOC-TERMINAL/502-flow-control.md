> Flow control

bash provides standard programming constructs for conditional execution and looping.

### if statements

```bash
if [ condition ]; then
    # do something
elif [ other condition ]; then
    # do something else
else
    # fallback
fi
```

### common test operators

- `[ -f file ]` — file exists
- `[ -d dir ]` — directory exists
- `[ -z string ]` — string is empty
- `[ string1 = string2 ]` — string equality
- `[ num1 -eq num2 ]` — numeric equality
- `[ num1 -gt num2 ]` — greater than
- `[ num1 -lt num2 ]` — less than

### for loops

```bash
for file in *.txt; do
    echo "$file"
done

for i in {1..5}; do
    echo "number $i"
done
```

### while loops

```bash
count=0
while [ $count -lt 5 ]; do
    echo "count: $count"
    count=$((count + 1))
done
```

### functions

```bash
greet() {
    echo "hello, $1"
}

greet "world"
```

### case statements

```bash
case "$1" in
    start)
        echo "starting..."
        ;;
    stop)
        echo "stopping..."
        ;;
    *)
        echo "usage: $0 {start|stop}"
        ;;
esac
```

### practical example

```bash
#!/bin/bash
for dir in ~/projects/*/; do
    if [ -d "$dir/.git" ]; then
        echo "updating $(basename $dir)"
        git -C "$dir" pull
    fi
done
```
