# Git & GitHub Workflow

## One-time setup

```bash
git config --global user.name  "YOUR NAME"
git config --global user.email "you@example.com"
```

## Create the repository

1. On GitHub: **New repository** named `linux-practical-lab` (public, no README, no licence, since they already exist here).
2. Locally, inside the project folder:

```bash
git init
git branch -M main
git add .
git commit -m "docs: initial repository structure"
git remote add origin https://github.com/YOUR-USERNAME/linux-practical-lab.git
git push -u origin main
```

## Per-activity routine

After completing each activity:

```bash
# 1. Save screenshots into screenshots/activity-XX/
# 2. Update the activity README (status, notes, challenges)
bash scripts/check_screenshots.sh     # see what is still missing
git add .
git commit -m "feat(activity-03): complete permissions and ownership"
git push
```

### Commit message convention

| Prefix | Use for |
|---|---|
| `feat(activity-XX):` | Completing an activity |
| `docs:` | README or docs changes |
| `fix:` | Correcting mistakes or broken links |
| `chore:` | Housekeeping (.gitignore, CI) |

## Optional: branch per activity

```bash
git checkout -b activity-05-processes
# ...work, commit...
git push -u origin activity-05-processes
# open a Pull Request on GitHub, review, merge
```

## Finishing touches

- Replace every `YOUR NAME` / `YOUR-USERNAME` placeholder (`grep -rn "YOUR" .`).
- Update the status table in the main README.
- Add a repository description and topics (`linux`, `kali-linux`, `bash`, `sysadmin`, `portfolio`).
- Pin the repository on your GitHub profile.
- Check the **Actions** tab: the CI badge should be green.
