# Activity 2: File Viewing & Editing

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Edit a file with `nano` and inspect it with `head`, `tail`, `wc` and `grep`.

## Tasks (from the lab sheet)

- [ ] Open `readme.txt` with `nano`, add your name at the bottom, and write the function of Kernel, FHS and Shell
- [ ] Display the first 3 lines with `head`
- [ ] Display the last 2 lines with `tail`
- [ ] Count the words with `wc`
- [ ] Search for the word "Linux" with `grep`

## Commands used

```bash
cd ~/linux_lab
nano readme.txt     # add name + Kernel / FHS / Shell definitions, then Ctrl+O, Enter, Ctrl+X
head -n 3 readme.txt
tail -n 2 readme.txt
wc -w readme.txt
grep "Linux" readme.txt
```

## What each command does

| Command | Purpose |
|---|---|
| `nano` | Beginner-friendly terminal editor. Save: `Ctrl+O` then Enter. Exit: `Ctrl+X`. |
| `head -n 3` | Prints the first 3 lines. |
| `tail -n 2` | Prints the last 2 lines. |
| `wc -w` | Counts words (`-l` lines, `-c` bytes). |
| `grep` | Prints lines matching a pattern (`-i` ignore case, `-n` line numbers). |

## Expected output / reference

```text
# Suggested content added to readme.txt
Welcome to Linux Practice
Name: <Your Full Name>

Kernel: The core of the OS. Manages hardware (CPU, memory, devices), runs processes, and bridges hardware and software.
FHS (Filesystem Hierarchy Standard): Defines the standard directory layout, e.g. /etc (config), /home (user files), /var (logs), /bin (essential commands).
Shell: A command interpreter (e.g. bash, zsh) that passes the user's commands to the kernel and shows the results.
```

## Screenshots

Save each file in `screenshots/activity-02/` using the exact names below.

**`readme.txt` open in nano with name and definitions**

![`readme.txt` open in nano with name and definitions](../../screenshots/activity-02/02-nano-editing.png)

**Output of `head`, `tail`, `wc -w` and `grep`**

![Output of `head`, `tail`, `wc -w` and `grep`](../../screenshots/activity-02/02-head-tail-wc-grep.png)

## Key takeaways

- The **kernel** talks to hardware, the **shell** talks to the user, and the **FHS** keeps files in predictable places.
- `head`/`tail` are quick ways to peek at big files and logs.

## Challenges & notes

- Kali's default shell is **zsh**; all commands here behave the same as in bash.

---

[← Previous: Navigation & File Management](../01-navigation-file-management/README.md) | [Next: Permissions & Ownership →](../03-permissions-ownership/README.md)

[Back to main README](../../README.md)
