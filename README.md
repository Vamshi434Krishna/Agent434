# Local Assistant Agent

A terminal bot you can run on your local device to execute assistant-style tasks on files/folders and shell commands.

## Launch

```bash
./local-assistant
```

Install as a global command:

```bash
./install.sh
local-assistant
```

## New functionality added

- Interactive workspace navigation with `/pwd` and `/cd`.
- Prompt history with `/history`.
- Folder tree view with `/tree`.
- File/path name search with `/search`.
- Create folders with `/mkdir`.
- Delete files/folders with `/delete`.
- Copy and move files/folders with `/copy` and `/move`.
- Safety sandbox: paths are restricted to the selected `--root` directory.
- Read-size guard to avoid dumping huge files (configurable with `--max-read-kb`).

## Command reference

- `/help`
- `/exit`
- `/pwd`
- `/cd <path>`
- `/history`
- `/list [path]`
- `/tree [path]`
- `/search <pattern> [path]`
- `/read <path>`
- `/write <path> ::: <content>`
- `/append <path> ::: <content>`
- `/mkdir <path>`
- `/delete <path>`
- `/copy <src> ::: <dest>`
- `/move <src> ::: <dest>`
- `/run <shell command>`

## Natural-language shortcuts

- `list files`
- `read file notes.txt`
- `create folder docs`
- `delete file old.txt`
- `run: git status`

## Options

```bash
./local-assistant --root ~/projects --max-read-kb 512
./local-assistant --yes
```

- `--root`: limit all file actions to this directory.
- `--max-read-kb`: max size of file allowed for `/read`.
- `--yes`: auto-approve write/delete/copy/move/run actions.

## Example session

```text
You (.)> /mkdir notes
You (.)> /write notes/today.txt ::: finish report
You (.)> /search today .
You (.)> /run python3 --version
You (.)> /exit
```
