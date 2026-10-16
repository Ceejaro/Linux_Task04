# Environment Setup

## System

| Item | Value |
|---|---|
| OS | Kali Linux (rolling) |
| User | `kali` (normal user, member of `sudo`) |
| Shell | zsh (default on Kali); commands are bash-compatible |
| Terminal | Terminator / default terminal |

## Pre-flight checks

```bash
whoami        # should print your username, NOT root
sudo whoami   # should print root (confirms sudo works)
cd ~ && pwd   # /home/<username>
```

## Why not root?

- Root ignores file permissions, which would make Activity 3 meaningless.
- A typo as root (`rm`, `find /`) can damage the system.
- The lab creates its own extra user (`student2`) in Activity 3.

## VM networking

If using a VM, set the network adapter to **NAT** or **Bridged** so `ping google.com` works in Activity 6.

## Cleanup after the lab

```bash
sudo deluser --remove-home student2
sudo sed -i '/testsite.local/d' /etc/hosts
rm -rf ~/linux_lab ~/backup_test ~/restore_test ~/backup.tar.gz ~/packages.txt ~/hello.sh
```
