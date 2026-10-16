# Linux Practical Lab: Hands-On Portfolio

![Kali Linux](https://img.shields.io/badge/OS-Kali%20Linux-557C94?logo=kalilinux&logoColor=white)
![Shell](https://img.shields.io/badge/Shell-bash%20%2F%20zsh-4EAA25?logo=gnubash&logoColor=white)
![Activities](https://img.shields.io/badge/Activities-10-blue)
![License](https://img.shields.io/badge/License-MIT-green)
[![CI](https://github.com/YOUR-USERNAME/linux-practical-lab/actions/workflows/ci.yml/badge.svg)](https://github.com/YOUR-USERNAME/linux-practical-lab/actions/workflows/ci.yml)

A documented walkthrough of a 10-activity Linux practical test, completed on **Kali Linux** using the command line.
Every activity includes the commands run, an explanation of each command, screenshots as evidence, key takeaways, and the problems encountered along the way.

> **Author:** YOUR NAME  
> **Date completed:** DD Month YYYY  
> **Environment:** Kali Linux (VM or bare metal), user `kali`, shell `zsh`

---

## Table of contents

- [Overview](#overview)
- [Activity index](#activity-index)
- [Repository structure](#repository-structure)
- [Skills demonstrated](#skills-demonstrated)
- [How to reproduce this lab](#how-to-reproduce-this-lab)
- [Troubleshooting log](#troubleshooting-log)
- [Documentation](#documentation)
- [License](#license)

## Overview

The lab covers the core Linux administration skills expected of a beginner system administrator or security analyst:

| Area | Activities |
|---|---|
| Files, navigation, editing | 1, 2 |
| Permissions & ownership | 3 |
| Archiving & compression | 4 |
| Processes & networking | 5, 6 |
| Searching & package management | 7, 8 |
| Scripting & system monitoring | 9, 10 |

## Activity index

| # | Activity | Status |
|---|---|---|
| 1 | [Navigation & File Management](activities/01-navigation-file-management/README.md) | ⬜ |
| 2 | [File Viewing & Editing](activities/02-file-viewing-editing/README.md) | ⬜ |
| 3 | [Permissions & Ownership](activities/03-permissions-ownership/README.md) | ⬜ |
| 4 | [Archiving & Compression](activities/04-archiving-compression/README.md) | ⬜ |
| 5 | [Process Management](activities/05-process-management/README.md) | ⬜ |
| 6 | [Networking Basics](activities/06-networking-basics/README.md) | ⬜ |
| 7 | [Searching & Finding](activities/07-searching-finding/README.md) | ⬜ |
| 8 | [Package Management (Debian/Ubuntu-based)](activities/08-package-management/README.md) | ⬜ |
| 9 | [Scripting Basics](activities/09-scripting-basics/README.md) | ⬜ |
| 10 | [System Monitoring & Logs](activities/10-system-monitoring-logs/README.md) | ⬜ |

## Repository structure

```text
linux-practical-lab/
├── README.md                  <- you are here
├── LICENSE                    <- MIT
├── .gitignore
├── .markdownlint.json
├── .github/
│   └── workflows/ci.yml       <- markdown lint, shellcheck, screenshot check
├── activities/                <- one folder + README per activity (commands, explanation, screenshots)
│   ├── 01-navigation-file-management/
│   ├── ...
│   └── 10-system-monitoring-logs/
├── screenshots/               <- evidence images, one subfolder per activity
├── scripts/
│   ├── hello.sh               <- Activity 9 script
│   └── check_screenshots.sh   <- verifies every README image exists
├── outputs/                   <- text output samples (e.g. trimmed packages.txt)
└── docs/
    ├── environment-setup.md
    ├── git-workflow.md
    ├── troubleshooting.md
    ├── command-cheatsheet.md
    └── lab-checklist.md
```

## Skills demonstrated

- File and directory management (`mkdir`, `cp`, `mv`, `rm`, `tree`)
- Text viewing and editing (`nano`, `head`, `tail`, `wc`, `grep`)
- Permissions model (`chmod` numeric modes, `chown`, `adduser`)
- Archiving and compression (`tar`, `gzip`)
- Process control (`jobs`, `fg`, `ps`, `kill`, `top`)
- Network diagnostics (`ip`, `ping`, `ss`, `/etc/hosts`)
- Searching (`find`, `grep -r`, pipes, redirection)
- Package management with `apt`
- Bash scripting basics (shebang, `chmod +x`)
- System monitoring and log inspection (`df`, `free`, `journalctl`, `uptime`, `who`, `lscpu`)
- Documenting technical work with Git and GitHub

## How to reproduce this lab

1. Use a Kali (or any Debian/Ubuntu) machine as a **normal user**, not root. See [environment setup](docs/environment-setup.md).
2. Open [`activities/01-navigation-file-management`](activities/01-navigation-file-management/README.md) and follow each activity in order.
3. Capture a screenshot after each step group, saving it with the filename listed in that activity's README.
4. Commit after every activity. See [git workflow](docs/git-workflow.md).

> **Safety note:** Activity 3 sets `chmod 777` and Activity 6 edits `/etc/hosts`. Do these only on a lab/VM machine.

## Troubleshooting log

Real issues hit during this lab (full details in [docs/troubleshooting.md](docs/troubleshooting.md)):

| Issue | Cause | Fix |
|---|---|---|
| `zsh: parse error near \n` after `kill <PID>` | `<` `>` typed literally | Use the real PID, e.g. `kill 29589` |
| `/var/log/syslog: No such file or directory` | Kali uses systemd-journald | `sudo journalctl -n 10 --no-pager` |
| Terminator "Permission denied" for `/etc/xdg/terminator/config` | Unreadable system config | Harmless; ignore |
| `kill` didn't remove a suspended `sleep` | Process state `T` (stopped) | `kill -CONT <pid>` then `kill <pid>`, or `kill -9 <pid>` |

## Documentation

- [Environment setup](docs/environment-setup.md)
- [Git & GitHub workflow](docs/git-workflow.md)
- [Troubleshooting](docs/troubleshooting.md)
- [Command cheat sheet](docs/command-cheatsheet.md)
- [Lab checklist](docs/lab-checklist.md)

## License

Released under the [MIT License](LICENSE).
