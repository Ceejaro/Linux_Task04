# Activity 4: Archiving & Compression

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Bundle files with `tar`, compress with `gzip`, and restore them into another directory.

## Tasks (from the lab sheet)

- [ ] Create `backup_test` with three text files
- [ ] Create `backup.tar`
- [ ] Compress to `backup.tar.gz`
- [ ] Extract into `restore_test`
- [ ] Verify all files restored

## Commands used

```bash
cd ~
mkdir backup_test
echo "file one"   > backup_test/f1.txt
echo "file two"   > backup_test/f2.txt
echo "file three" > backup_test/f3.txt
tar -cvf backup.tar backup_test/
gzip backup.tar
mkdir restore_test
tar -xvzf backup.tar.gz -C restore_test/
ls -R restore_test
```

## What each command does

| Command | Purpose |
|---|---|
| `tar -cvf` | **c**reate, **v**erbose, **f**ile name: bundles files into one archive (no compression). |
| `gzip` | Compresses the archive, producing `backup.tar.gz` and removing the plain `.tar`. |
| `tar -xvzf -C` | e**x**tract, g**z**ip, into the directory given by `-C`. |
| `ls -R` | Verifies the restored files. |

## Expected output / reference

```text
restore_test:
backup_test

restore_test/backup_test:
f1.txt  f2.txt  f3.txt
```

## Screenshots

Save each file in `screenshots/activity-04/` using the exact names below.

**Creating `backup.tar` and `backup.tar.gz`**

![Creating `backup.tar` and `backup.tar.gz`](../../screenshots/activity-04/04-tar-gzip.png)

**Extraction and `ls -R restore_test` showing all three files**

![Extraction and `ls -R restore_test` showing all three files](../../screenshots/activity-04/04-restore-verified.png)

## Key takeaways

- `tar` archives; `gzip` compresses. `tar -czvf` does both in one step.
- Always verify a backup by restoring it.

## Challenges & notes

- _Add anything unexpected you ran into here._

---

[← Previous: Permissions & Ownership](../03-permissions-ownership/README.md) | [Next: Process Management →](../05-process-management/README.md)

[Back to main README](../../README.md)
