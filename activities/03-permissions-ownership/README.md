# Activity 3: Permissions & Ownership

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Understand Linux permission bits, change them with `chmod`, and change file ownership with `chown`.

## Tasks (from the lab sheet)

- [ ] Create `secure.txt`
- [ ] Owner read+write, group read only, others none
- [ ] Change permissions to `777`
- [ ] Create user `student2` (if permitted)
- [ ] Change owner of `secure.txt` to `student2`
- [ ] Verify with `ls -l`

## Commands used

```bash
touch secure.txt
chmod 640 secure.txt
ls -l secure.txt              # expect -rw-r-----
chmod 777 secure.txt
ls -l secure.txt              # expect -rwxrwxrwx
sudo adduser student2
sudo chown student2 secure.txt
ls -l secure.txt              # owner column now shows student2
```

## What each command does

| Command | Purpose |
|---|---|
| `chmod 640` | Owner `rw-` (6 = 4+2), group `r--` (4), others `---` (0). |
| `chmod 777` | Everyone gets read, write and execute. Insecure on real systems. |
| `adduser` | Creates a new user with a home directory (needs `sudo`). |
| `chown` | Changes the file owner (needs `sudo`). |
| `ls -l` | Long listing: permissions, links, owner, group, size, date, name. |

## Expected output / reference

```text
-rw-r----- 1 kali    kali    0 ... secure.txt
-rwxrwxrwx 1 kali    kali    0 ... secure.txt
-rwxrwxrwx 1 student2 kali   0 ... secure.txt
```

## Screenshots

Save each file in `screenshots/activity-03/` using the exact names below.

**`ls -l` showing `-rw-r-----`**

![`ls -l` showing `-rw-r-----`](../../screenshots/activity-03/03-chmod-640.png)

**`ls -l` showing `-rwxrwxrwx`**

![`ls -l` showing `-rwxrwxrwx`](../../screenshots/activity-03/03-chmod-777.png)

**`ls -l` showing owner `student2`**

![`ls -l` showing owner `student2`](../../screenshots/activity-03/03-chown-student2.png)

## Key takeaways

- Permission digits: read = 4, write = 2, execute = 1, added together per class (owner / group / others).
- `777` is almost never appropriate on real systems because anyone can modify or run the file.
- Changing ownership requires elevated privileges.

## Challenges & notes

- Run the lab as a normal user (`kali`), not root. Root ignores permission bits, which would make this activity meaningless.

---

[← Previous: File Viewing & Editing](../02-file-viewing-editing/README.md) | [Next: Archiving & Compression →](../04-archiving-compression/README.md)

[Back to main README](../../README.md)
