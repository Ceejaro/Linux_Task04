# Command Cheat Sheet

| Area | Command | Meaning |
|---|---|---|
| Navigation | `pwd`, `cd`, `ls -la`, `tree` | Where am I / move / list / structure |
| Files | `touch`, `mkdir`, `cp`, `mv`, `rm`, `rm -r` | Create / copy / move / delete |
| Viewing | `cat`, `head -n`, `tail -n`, `less`, `wc` | Read and count |
| Search | `grep -rin`, `find / -name`, `find -mtime` | Content and file search |
| Permissions | `chmod 640 f`, `chmod +x f`, `chown user f` | Modes and ownership |
| Users | `adduser`, `deluser`, `whoami`, `id` | User management |
| Archive | `tar -cvf`, `tar -xvzf`, `gzip`, `gunzip` | Bundle / compress |
| Processes | `ps aux`, `top`, `jobs`, `fg`, `bg`, `kill`, `kill -9` | Process control |
| Network | `ip a`, `ping -c`, `ss -tulnp`, `hostname` | Network info |
| Packages | `apt update`, `apt install`, `apt remove`, `apt list --installed` | Software |
| Monitoring | `df -h`, `free -h`, `uptime`, `who`, `lscpu`, `journalctl -n` | System health |

## Permission digits

| Digit | Binary | Meaning |
|---|---|---|
| 7 | 111 | rwx |
| 6 | 110 | rw- |
| 5 | 101 | r-x |
| 4 | 100 | r-- |
| 0 | 000 | --- |

## Redirection & pipes

| Symbol | Meaning |
|---|---|
| `>` | Write output to file (overwrite) |
| `>>` | Append output to file |
| `2>/dev/null` | Discard errors |
| `\|` | Send output of one command into another |
