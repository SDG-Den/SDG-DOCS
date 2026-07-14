# Basic Navigation

SDG-OS comes pre-configured with tools that make terminal navigation easier: `eza` (a modern replacement for `ls`), `zoxide` (a smarter `cd`), and `fzf` (a fuzzy finder).

## The prompt

When you open a terminal, you will see something like this:

```
   ~
```

This shows your current directory. The `~` symbol is shorthand for your home directory (e.g., `/home/yourusername`). You can also see the full path by running `pwd`.

## Listing files

Type `ls` to list files in the current directory. This uses `eza` under the hood and gives you a colorized, icon-rich output:

```
drwxr-xr-x     - den 24 may 23:57  test
```

From left to right: permissions, size (empty for directories), owner, last modified date, and filename. If you see something like:

```
lrwxrwxrwx     - den 12 apr 05:04  .vscode -> /home/den/.vscode-oss
```

The `->` means this is a symbolic link pointing to another location.

## Moving between directories

Use `cd <directory>` to change directories. This uses `zoxide` under the hood, which learns which directories you visit most and lets you jump with partial names:

```sh
cd mangoscripts
```

This works even if the full path is `/home/den/ownCloud/ArchConfig/MangoScripts`, as long as it is the match you visit most often.

Special directory references:

| Symbol | Meaning |
|--------|---------|
| `~` | Your home directory |
| `.` | Current directory |
| `..` | One directory up |
| `...` | Two directories up |

Examples:

| Command | Where it goes |
|---------|---------------|
| `cd dir` | `~/dir` (relative to home with zoxide) |
| `cd ~/dir` | `~/dir` regardless of current location |
| `cd ./dir` | `~/dir` (explicit relative path) |
| `cd /dir` | `/dir` (absolute path) |
| `cd ../dir` | `/home/dir` (one level up, then into dir) |
