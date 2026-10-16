# Activity 7: Searching & Finding

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Locate files and content with `find` and `grep`, and combine commands with pipes.

## Tasks (from the lab sheet)

- [ ] Find `readme.txt` across the system
- [ ] Search `.txt` files in `docs` for "Linux"
- [ ] List files modified in the last 24 hours
- [ ] Count `.txt` files in the home directory

## Commands used

```bash
find / -name readme.txt 2>/dev/null
grep -r "Linux" ~/linux_lab/docs/
find ~ -mtime -1
find ~ -name "*.txt" | wc -l
```

## What each command does

| Command | Purpose |
|---|---|
| `find / -name` | Searches the whole filesystem by file name. |
| `2>/dev/null` | Discards error messages (stream 2) such as "Permission denied". |
| `grep -r` | Searches recursively inside files. |
| `-mtime -1` | Modified less than 1 day ago. |
| `| wc -l` | Pipe: counts the lines `find` printed, i.e. the number of files. |

## Screenshots

Save each file in `screenshots/activity-07/` using the exact names below.

**`find / -name readme.txt` results**

![`find / -name readme.txt` results](../../screenshots/activity-07/07-find-readme.png)

**`grep` results inside `docs`**

![`grep` results inside `docs`](../../screenshots/activity-07/07-grep-docs.png)

**Files modified in the last 24 h**

![Files modified in the last 24 h](../../screenshots/activity-07/07-find-mtime.png)

**Count of `.txt` files**

![Count of `.txt` files](../../screenshots/activity-07/07-count-txt.png)

## Key takeaways

- The pipe `|` feeds one command's output into another.
- `2>/dev/null` keeps output clean when searching protected directories.

## Challenges & notes

- _Add anything unexpected you ran into here._

---

[← Previous: Networking Basics](../06-networking-basics/README.md) | [Next: Package Management (Debian/Ubuntu-based) →](../08-package-management/README.md)

[Back to main README](../../README.md)
