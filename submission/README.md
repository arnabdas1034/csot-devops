# Week 01 — Contest submission pack

**Mandatory contest** · **100 points** · Platform: **[csot-devops.devclub.in](https://csot-devops.devclub.in)**

> **Workflow:** this assumes you've already **forked this repo** and cloned your fork per the **[How to Participate](../README.md#-how-to-participate-read-this-once-then-refer-back)** section of the root README. Contest code lives in `submission/week-01/` of **your fork** — commit your solutions there so you have a version history of your attempts.

Put your solutions in **`submission/week-01/` of your fork** (recommended) using the **exact filenames** below, then submit with the `csot` CLI. The CLI uploads your files directly to the autograder — it does **not** read your fork's GitHub history.

---

## 1. Install and sign in (one-time)

```bash
# Install the CSOT CLI
curl -fsSL https://csot-devops.devclub.in/install.sh | bash

# Sign in with your DevClub account (browser paste-code flow)
csot login
```

1. Open **[csot-devops.devclub.in](https://csot-devops.devclub.in)** and click **Sign in with DevClub**.
2. After login, the site shows a **paste code**.
3. In your terminal, run `csot login` and paste that code when prompted.

Your credentials are stored locally (`~/.config/csot/`). You only need to log in again if the session expires.

---

## 2. Folder layout to submit

Create these files in **one directory** (flat layout, except task 12):

```text
week-01/
├── 01.sh
├── 02.sh
├── 03.sh
├── 04.sh
├── 05.sh
├── 06.sh
├── 07.service
├── 07.timer
├── 08.conf
├── 09.sh
├── 10.sh
├── 11.sh
└── 12-todo/
    └── todo.sh
```

Use the repo path: `submission/week-01/` in **your fork** — add your scripts here, commit them (so you have history of your attempts), then submit from the repo root or from this folder. Pushing to your fork is optional for the contest but recommended.

---

## 3. Files to submit (checklist)

| # | Submit as | Task | Pts | Partial? |
|---|-----------|------|-----|:--------:|
| 01 | `01.sh` | Find files strictly larger than 1 MiB | 7 | yes |
| 02 | `02.sh` | Count unique IPv4 addresses in a log | 7 | yes |
| 03 | `03.sh` | Replace tabs with 4 spaces (recursive) | 7 | — |
| 04 | `04.sh` | Rename `*.txt` → `*.md` recursively | 7 | — |
| 05 | `05.sh` | Parse JSON with `jq` (active emails) | 9 | yes |
| 06 | `06.sh` | Retry a command with exponential backoff | 10 | yes |
| 07 | `07.service` + `07.timer` | systemd timer → Hello World every minute | 9 | yes |
| 08 | `08.conf` | nginx reverse proxy + `X-Powered-By: csot` | 9 | yes |
| 09 | `09.sh` | Self-signed cert + nginx HTTPS on `:8443` | 10 | yes |
| 10 | `10.sh` | Top 10 directories by disk usage | 8 | — |
| 11 | `11.sh` | List running systemd services | 7 | — |
| 12 | `12-todo/todo.sh` | `todo` CLI in pure bash | 10 | yes |

**Total: 100 points.**

Full specs (input/output, grader checks, skeleton examples): **[csot-devops.devclub.in/contest/week-01](https://csot-devops.devclub.in/contest/week-01)**

---

## 4. Submit commands

From the directory that contains your files:

```bash
# Grade all 12 tasks (recommended once everything is ready)
csot submit .

# Or from repo root, pointing at this folder:
csot submit ./submission/week-01

# Grade only one task while iterating
csot submit . -t 02
csot submit ./07.service -t 07

# After submitting
csot history
csot show <attempt-id>          # per-task pass/partial/fail + logs
csot leaderboard                # overall
csot leaderboard --weekly       # this week
csot update                     # refresh CLI from server
```

---
