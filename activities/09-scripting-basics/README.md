# Activity 9: Scripting Basics

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Write, make executable, and run a simple bash script.

## Tasks (from the lab sheet)

- [ ] Create `hello.sh`
- [ ] Display "Hello, Linux World!"
- [ ] Show date and time
- [ ] Show current working directory
- [ ] Make it executable
- [ ] Run it

## Commands used

```bash
nano hello.sh
chmod +x hello.sh
./hello.sh
```

## What each command does

| Command | Purpose |
|---|---|
| `#!/bin/bash` | Shebang: tells the system to run the file with bash. |
| `echo` | Prints text. |
| `date` | Prints the current date and time. |
| `pwd` | Prints the working directory. |
| `chmod +x` | Adds execute permission. |
| `./` | Runs a file in the current directory. |

## Expected output / reference

```text
Hello, Linux World!
<current date and time>
/home/kali
```

## Screenshots

Save each file in `screenshots/activity-09/` using the exact names below.

**`cat hello.sh` showing the script**

![`cat hello.sh` showing the script](../../screenshots/activity-09/09-hello-sh-source.png)

**`chmod +x` and the script output**

![`chmod +x` and the script output](../../screenshots/activity-09/09-chmod-run.png)

## Key takeaways

- A script is a text file of commands plus execute permission.
- The shebang line selects the interpreter.

## Challenges & notes

- A copy of the finished script is in [`../../scripts/hello.sh`](../../scripts/hello.sh).

---

[← Previous: Package Management (Debian/Ubuntu-based)](../08-package-management/README.md) | [Next: System Monitoring & Logs →](../10-system-monitoring-logs/README.md)

[Back to main README](../../README.md)
