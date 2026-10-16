# Activity 6: Networking Basics

**Status:** ⬜ Pending (change to ✅ Completed when done)  
**Environment:** Kali Linux, normal user `kali`, `sudo` where required

## Objective

Inspect network configuration, test connectivity, list listening ports, and map a custom hostname in `/etc/hosts`.

## Tasks (from the lab sheet)

- [ ] Show IP address with `ip a`
- [ ] `ping google.com -c 4`
- [ ] List listening ports with `ss -tulnp`
- [ ] Show hostname
- [ ] Add `127.0.0.1 testsite.local` to `/etc/hosts`
- [ ] Ping `testsite.local`

## Commands used

```bash
ip a
ping google.com -c 4
sudo ss -tulnp
hostname
echo "127.0.0.1   testsite.local" | sudo tee -a /etc/hosts
tail -n 3 /etc/hosts
ping testsite.local -c 4
```

## What each command does

| Command | Purpose |
|---|---|
| `ip a` | Shows interfaces and IP addresses (look for `inet`). |
| `ping -c 4` | Sends 4 ICMP packets to test reachability. |
| `ss -tulnp` | Lists **t**cp/**u**dp **l**istening sockets, **n**umeric, with **p**rocess info. |
| `hostname` | Prints the machine name. |
| `/etc/hosts` | Local name-to-IP table, checked before DNS. |
| `tee -a` | Appends to a root-owned file when combined with `sudo`. |

## Expected output / reference

```text
PING testsite.local (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 ...
```

## Screenshots

Save each file in `screenshots/activity-06/` using the exact names below.

**`ip a` output**

![`ip a` output](../../screenshots/activity-06/06-ip-a.png)

**`ping google.com -c 4`**

![`ping google.com -c 4`](../../screenshots/activity-06/06-ping-google.png)

**`ss -tulnp` output**

![`ss -tulnp` output](../../screenshots/activity-06/06-ss-tulnp.png)

**`/etc/hosts` with the new entry**

![`/etc/hosts` with the new entry](../../screenshots/activity-06/06-hosts-entry.png)

**`ping testsite.local` replying from 127.0.0.1**

![`ping testsite.local` replying from 127.0.0.1](../../screenshots/activity-06/06-ping-testsite.png)

## Key takeaways

- `/etc/hosts` overrides DNS for names listed in it.
- `ss` is the modern replacement for `netstat`.

## Challenges & notes

- If `ping google.com` fails in a VM, set the network adapter to **NAT** or **Bridged**, and record the result in the report.

---

[← Previous: Process Management](../05-process-management/README.md) | [Next: Searching & Finding →](../07-searching-finding/README.md)

[Back to main README](../../README.md)
