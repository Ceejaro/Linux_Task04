# Activity 10: System Monitoring & Logs

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Check disk, memory, logs, uptime, logged-in users and CPU information.

## Tasks (from the lab sheet)

- [ ] `df -h`
- [ ] `free -h`
- [ ] Last 10 log entries from `/var/log/syslog` (or `/var/log/messages`)
- [ ] `uptime`
- [ ] `who`
- [ ] `lscpu`

## Commands used

```bash
df -h
free -h
sudo tail -n 10 /var/log/syslog           # fails on Kali (file does not exist)
sudo journalctl -n 10 --no-pager          # Kali alternative
uptime
who
lscpu
```

## What each command does

| Command | Purpose |
|---|---|
| `df -h` | Disk usage per filesystem in human-readable units. |
| `free -h` | RAM and swap usage. |
| `journalctl -n 10` | Last 10 entries from the systemd journal. |
| `uptime` | Time since boot, users, load average. |
| `who` | Currently logged-in users. |
| `lscpu` | CPU model, cores, architecture. |

## Screenshots

Save each file in `screenshots/activity-10/` using the exact names below.

**`df -h` and `free -h`**

![`df -h` and `free -h`](../../screenshots/activity-10/10-df-free.png)

**`tail /var/log/syslog` error**

![`tail /var/log/syslog` error](../../screenshots/activity-10/10-syslog-error.png)

**`journalctl -n 10` output**

![`journalctl -n 10` output](../../screenshots/activity-10/10-journalctl.png)

**`uptime`, `who`, `lscpu`**

![`uptime`, `who`, `lscpu`](../../screenshots/activity-10/10-uptime-who-lscpu.png)

## Key takeaways

- Modern distributions log through **systemd-journald**; `journalctl` is the tool to read it.
- Load average and memory figures are the first things to check on a slow system.

## Challenges & notes

- Kali does not ship `/var/log/syslog` by default, so `tail` returns *No such file or directory*. `journalctl` satisfies the same task requirement.
- Optional: `sudo apt install rsyslog` creates `/var/log/syslog`.

---

[← Previous: Scripting Basics](../09-scripting-basics/README.md)

[Back to main README](../../README.md)
