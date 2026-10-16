# Activity 1: Navigation & File Management

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Practise creating, copying, moving and deleting files and directories, and viewing a directory tree.

## Tasks (from the lab sheet)

- [ ] Create a directory named `linux_lab`
- [ ] Create subdirectories `docs` and `scripts` inside it
- [ ] Create `readme.txt`, `notes.txt`, `script.sh`
- [ ] Write "Welcome to Linux Practice" inside `readme.txt`
- [ ] Copy `readme.txt` to `docs`
- [ ] Move `notes.txt` to `docs`
- [ ] Delete `script.sh`
- [ ] Display the directory structure with `tree` or `ls -R`

## Commands used

```bash
cd ~
mkdir linux_lab
cd linux_lab
mkdir docs scripts
touch readme.txt notes.txt script.sh
echo "Welcome to Linux Practice" > readme.txt
cp readme.txt docs/
mv notes.txt docs/
rm script.sh
tree        # or: ls -R
```

## What each command does

| Command | Purpose |
|---|---|
| `mkdir` | Makes a directory. Accepts several names at once. |
| `touch` | Creates an empty file (or updates a file's timestamp). |
| `echo "text" > file` | Writes text into a file; `>` overwrites, `>>` appends. |
| `cp` | Copies a file; the original stays. |
| `mv` | Moves (or renames) a file; the original is gone. |
| `rm` | Deletes permanently (no recycle bin). |
| `tree` / `ls -R` | Shows the directory structure recursively. |

## Expected output / reference

```text
linux_lab
├── docs
│   ├── notes.txt
│   └── readme.txt
├── readme.txt
└── scripts
```

## Screenshots

Save each file in `screenshots/activity-01/` using the exact names below.

**All commands run, ending with `tree` output**

![All commands run, ending with `tree` output](../../screenshots/activity-01/01-commands-and-tree.png)

## Key takeaways

- `cp` duplicates while `mv` relocates.
- `rm` is permanent, so double-check paths before deleting.
- `>` overwrites a file; `>>` appends to it.

## Challenges & notes

- If `tree` is not installed yet, `ls -R` gives the same information. (Activity 8 installs and removes `tree`.)

---

[Next: File Viewing & Editing →](../02-file-viewing-editing/README.md)

[Back to main README](../../README.md)
