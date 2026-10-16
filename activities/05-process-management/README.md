# Activity 5: Process Management

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Start, list, suspend, resume and kill processes, and monitor them with `top`.

## Tasks (from the lab sheet)

- [ ] Run `sleep 300 &`
- [ ] Display background jobs with `jobs`
- [ ] Bring the job to the foreground with `fg`
- [ ] Kill the process using its PID
- [ ] Confirm with `ps aux | grep sleep`
- [ ] View processes with `top`

## Commands used

```bash
sleep 300 &
jobs
fg                       # job now in foreground; press Ctrl+Z to suspend and get the prompt back
ps aux | grep sleep      # find the PID (2nd column) of "sleep 300"
kill 29589               # replace 29589 with YOUR actual PID
ps aux | grep sleep      # only the grep line should remain
top                      # press q to quit
```

## What each command does

| Command | Purpose |
|---|---|
| `&` | Runs a command in the background. |
| `jobs` | Lists shell jobs and their state. |
| `fg` | Brings a background/suspended job to the foreground. |
| `Ctrl+Z` | Suspends the foreground process. |
| `ps aux` | Lists all processes; the PID is column 2. |
| `kill PID` | Sends SIGTERM to the process. `kill -9 PID` forces it (SIGKILL). |
| `top` | Live view of processes and resource use. |

## Expected output / reference

```text
[1]+  Running    sleep 300 &
kali  29589 ... sleep 300       <- before kill
kali  30330 ... grep --color=auto sleep   <- only this remains after kill
```

## Screenshots

Save each file in `screenshots/activity-05/` using the exact names below.

**`sleep 300 &`, `jobs` and `fg`**

![`sleep 300 &`, `jobs` and `fg`](../../screenshots/activity-05/05-jobs-fg.png)

**`ps aux | grep sleep` showing the PID**

![`ps aux | grep sleep` showing the PID](../../screenshots/activity-05/05-ps-before-kill.png)

**After `kill`, only the grep line remains**

![After `kill`, only the grep line remains](../../screenshots/activity-05/05-kill-confirmed.png)

**`top` output**

![`top` output](../../screenshots/activity-05/05-top.png)

## Key takeaways

- Every process has a PID; signals such as SIGTERM and SIGKILL control it.
- `ps aux | grep` always lists the `grep` itself; ignore that line.

## Challenges & notes

- Type the **actual PID number**. Typing `<PID>` literally causes `zsh: parse error near \n` because `<` and `>` are shell redirection characters.
- After `Ctrl+Z` the process shows state `T` (stopped). If a plain `kill` doesn't remove it, run `kill -CONT <pid>` then `kill <pid>`, or use `kill -9 <pid>`.

---

[← Previous: Archiving & Compression](../04-archiving-compression/README.md) | [Next: Networking Basics →](../06-networking-basics/README.md)

[Back to main README](../../README.md)
