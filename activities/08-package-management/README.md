# Activity 8: Package Management (Debian/Ubuntu-based)

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Manage software with `apt`: update, install, verify, remove and list packages.

## Tasks (from the lab sheet)

- [ ] `sudo apt update`
- [ ] Install `tree`
- [ ] Verify with `tree --version`
- [ ] Remove `tree`
- [ ] List installed packages into `packages.txt`

## Commands used

```bash
sudo apt update
sudo apt install tree -y
tree --version
sudo apt remove tree -y
apt list --installed > packages.txt
head packages.txt
```

## What each command does

| Command | Purpose |
|---|---|
| `apt update` | Refreshes the package index (does not upgrade anything). |
| `apt install` | Downloads and installs a package and its dependencies. |
| `apt remove` | Uninstalls a package (keeps config files; `purge` removes them too). |
| `>` | Redirects the package list into `packages.txt`. |

## Screenshots

Save each file in `screenshots/activity-08/` using the exact names below.

**`sudo apt update`**

![`sudo apt update`](../../screenshots/activity-08/08-apt-update.png)

**`tree` installed and `tree --version`**

![`tree` installed and `tree --version`](../../screenshots/activity-08/08-install-tree.png)

**`tree` removed**

![`tree` removed](../../screenshots/activity-08/08-remove-tree.png)

**`head packages.txt` or `wc -l packages.txt`**

![`head packages.txt` or `wc -l packages.txt`](../../screenshots/activity-08/08-packages-txt.png)

## Key takeaways

- `apt update` refreshes the catalogue; `apt upgrade` actually upgrades packages.
- Redirecting output to a file makes system inventories easy.

## Challenges & notes

- `tree` may already be installed on Kali. Run install/remove anyway so the output is captured.
- A warning that `apt` has no stable CLI interface is harmless. `dpkg -l > packages.txt` is an alternative.

---

[← Previous: Searching & Finding](../07-searching-finding/README.md) | [Next: Scripting Basics →](../09-scripting-basics/README.md)

[Back to main README](../../README.md)
