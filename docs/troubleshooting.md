# Troubleshooting Log

Problems met while doing this lab, with the cause and fix.

## 1. `zsh: parse error near \n` after `kill <PID>`

- **Cause:** `<PID>` was typed literally. `<` and `>` are redirection operators in the shell.
- **Fix:** Find the real PID with `ps aux | grep sleep` (second column) and run `kill 29589`, substituting your number.

## 2. `tail: cannot open '/var/log/syslog'`

- **Cause:** Kali (and other recent distributions) use **systemd-journald** and do not install rsyslog by default.
- **Fix:** `sudo journalctl -n 10 --no-pager`. Optionally `sudo apt install rsyslog` to create the file.

## 3. Terminator: `Permission denied: /etc/xdg/terminator/config`

- **Cause:** The terminal emulator cannot read its system-wide config.
- **Fix:** None needed. The warning is harmless.

## 4. Suspended process not removed by `kill`

- **Cause:** After `Ctrl+Z` the process is in state `T` (stopped) and cannot handle SIGTERM until resumed.
- **Fix:** `kill -CONT <pid>` then `kill <pid>`, or `kill -9 <pid>`.

## 5. `ping google.com` fails

- **Cause:** VM has no internet access.
- **Fix:** Set the VM adapter to NAT/Bridged and restart networking, then retry.

## 6. `sudo: user is not in the sudoers file`

- **Fix:** `su -` then `usermod -aG sudo <username>`; log out and in again.

## 7. `Permission denied` when editing `/etc/hosts`

- **Cause:** File is owned by root.
- **Fix:** `sudo nano /etc/hosts`, or `echo "127.0.0.1   testsite.local" | sudo tee -a /etc/hosts`.
