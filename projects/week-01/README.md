# Week 01 — Mini-Project submission guide

**Project**: DevOps Toolkit Repo (Build 1 + Build 2 + polished shell utilities)
**Track**: 🟢 Part A — Local Track · **50 points** · manually graded
**Deadline**: **Sunday 11:59 PM (IST)** of Week 1
**Spec**: [content/week-01-linux-networking-git.md → Weekly Mini-Project](../../content/week-01-linux-networking-git.md#weekly-mini-project--devops-toolkit-repo)

> Two different things land in Week 1, **don't confuse them**:
>
> | | Contest (autograded) | Mini-Project (this guide) |
> |---|---|---|
> | **What** | 12 shell/sysadmin tasks | DevOps Toolkit GitHub repo |
> | **Points** | 100 | 50 |
> | **How submitted** | `csot` CLI → [csot-devops.devclub.in](https://csot-devops.devclub.in) | **Submission form** (link shared in your cohort group) |
> | **Grading** | Automatic, in a Docker sandbox | Manual review by mentors |
> | **Guide** | [`/submission/README.md`](../../submission/README.md) | You're reading it |

---

## 1. What you're submitting

A **public GitHub repository** containing your DevOps Toolkit (everything specified under **[Weekly Mini-Project — DevOps Toolkit Repo](../../content/week-01-linux-networking-git.md#weekly-mini-project--devops-toolkit-repo)** in the Week 1 content guide). At minimum:

- `README.md` — intro, usage, demo screenshots
- `DEMO.md` — sample outputs of every script
- `scripts/` — `backup.sh`, `log_parser.sh`, `user_manager.sh`, `sysreport.sh`, `deploy.sh`
- `systemd/` — Build 1's timer + Build 2's service unit files
- `nginx/` — Build 2's site config
- `.env.example`, `.gitignore`, `LICENSE`

Full required contents, examples, and the **grading rubric (50 pts)** live in the [Weekly Mini-Project section of the Week 1 guide](../../content/week-01-linux-networking-git.md#weekly-mini-project--devops-toolkit-repo). Read it before you start — this file is only about *how to hand it in*.

---

## 2. Submission checklist (do these before opening the form)

- [ ] Project repo is **public** on GitHub
- [ ] All 5 scripts run cleanly with sample input / `--help`
- [ ] Build 1's systemd timer is configured (proof: `systemctl list-timers` screenshot in `DEMO.md`)
- [ ] Build 2's nginx works on `localhost` with **either** self-signed HTTPS **or** Cloudflare Quick Tunnel
- [ ] Every script handles missing args, empty input, and file-not-found
- [ ] `.env.example` committed; `.env` **not** committed (check `.gitignore`)
- [ ] Commit history has **≥ 4 commits across 2+ branches with one merge**
- [ ] `trufflehog git file://. --only-verified` → **clean** (no verified secrets in history)
- [ ] `README.md` includes a 1-line "How to run" and a screenshot or asciicast
- [ ] You know the **exact commit SHA** you want graded (run `git rev-parse HEAD` in the project repo)

---

## 3. How to submit (form flow)

We submit Week 1 mini-projects via a **submission form**. The form link is shared in your cohort group on Discord / WhatsApp — it is **not posted in this public repo**.

> **Prerequisite:** you've already forked this repo per the root README's **[How to Participate](../../README.md#-how-to-participate-read-this-once-then-refer-back)** section. Your DevOps Toolkit lives in **its own separate public GitHub repo** — *not* inside this fork. (Putting it in a clean dedicated repo makes it a much better portfolio piece.)

### Step-by-step

```bash
# 1. Build your toolkit in its own dedicated public repo, e.g.:
#    github.com/<your-github-username>/devops-toolkit-week01

# 2. When you're ready to submit, grab the commit SHA you want graded:
cd ~/path/to/devops-toolkit-week01
git rev-parse HEAD
# → 9f3c1a8b...   ← copy this

# 3. Make sure the repo is PUBLIC and the README/DEMO render correctly on GitHub.

# 4. Open the submission form (link in your cohort Discord / WhatsApp group)
#    and fill in the fields listed below.
```

### What the form will ask for

Have these ready **before** you open the form, so you fill it out in one go:

| Field | Example | Notes |
|---|---|---|
| Name | `Jane Doe` | As registered with DevClub |
| DevClub email | `jane@example.com` | The email tied to your DevClub login |
| GitHub username | `janedoe` | Without the `@` |
| Project repo URL (public) | `https://github.com/janedoe/devops-toolkit-week01` | Must be **public** at grading time |
| Commit SHA being submitted | `9f3c1a8` | Short or full SHA, from `git rev-parse HEAD` |
| HTTPS demo flavor | `self-signed` or `cloudflare-tunnel` | Which option you used for Build 2 |
| Project chosen | `Default (DevOps Toolkit)` or alternative name | See [Alternative Mini-Projects](../../content/week-01-linux-networking-git.md#alternative-mini-project-ideas-optional) |
| What you built (2–4 sentences) | "5 shell scripts plus Build 1's systemd timer and Build 2's nginx+HTTPS setup. Added a bonus discord-webhook alert to sysreport.sh." | Plain text, brief |
| Anything for the reviewer | Edge cases, known issues, what you'd do with more time | Optional but encouraged |

After you submit, a mentor will review within ~3 days and post your score in the cohort group / on the leaderboard.

### Important rules

- You may **re-submit** the form before the deadline if you find a bug — the **latest submission** before deadline is the one graded. The mentor uses the **commit SHA you specify in the form**, so push fixes first, then re-submit the form with the new SHA.
- **Do not change the repo's visibility to private** between submission and grading — that breaks review and forfeits your points.
- **Do not force-push or rewrite history** after submitting — the grader checks out the exact SHA you submitted. If that SHA disappears from history, your submission is unverifiable.

---

## 4. Late, partial, or "I'm stuck" submissions

- **Late**: Submit anyway — capped at 50% credit for the mini-project. Better than zero.
- **Partial**: Submit what works. Be honest in the *"Anything for the reviewer"* field of the form. Partial credit is real.
- **Stuck**: Ask in your cohort group `#help` channel describing what you tried. Mentors check daily.

---

## 5. Where things live (quick map)

```text
csot-devops/                                  ← upstream (this repo) — read-only for you
├── content/week-01-linux-networking-git.md   ← teaching material + project spec + rubric
├── submission/
│   ├── README.md                             ← CONTEST submission guide (csot CLI)
│   └── week-01/                              ← your contest task files (in YOUR fork)
└── projects/
    ├── README.md                             ← index of all weekly project guides
    └── week-01/
        └── README.md                         ← (you are here) mini-project submission guide

github.com/<you>/devops-toolkit-week01/       ← YOUR project repo (separate, public)
                                              ← URL goes into the submission form
```

---

## 6. FAQ

**Q. Where is the submission form link?**
In your cohort group (Discord / WhatsApp), pinned by an organizer. It's intentionally not posted here so only registered participants can submit.

**Q. Can my project just live inside my fork of this repo (in `projects/week-01/`)?**
Technically yes, but it's a bad portfolio piece — your fork is full of cohort content (other guides, contest folders, etc.). Create a **dedicated public repo** for the project and submit *that* URL. Your fork is the workspace; the dedicated repo is the deliverable.

**Q. Can I submit the contest tasks via this form?**
No. Contest tasks go through the `csot` CLI — see [`/submission/README.md`](../../submission/README.md). They are graded automatically and separately.

**Q. I don't have a domain — can I still do the HTTPS part?**
Yes. Use the **self-signed cert** flow or a **Cloudflare Quick Tunnel** (both shown in the [Week 1 guide](../../content/week-01-linux-networking-git.md#how-to-demo-https-without-a-real-domain)). Either is accepted for full marks.

**Q. Can I pick an Alternative Mini-Project instead?**
Yes — see [Alternative Mini-Project Ideas](../../content/week-01-linux-networking-git.md#alternative-mini-project-ideas-optional) in the Week 1 guide. Note which one you picked in the form's *"Project chosen"* field; the same 50-point rubric applies (with criteria mapped sensibly to your chosen project).

**Q. I submitted, then noticed a bug. Can I fix it?**
Yes — push the fix to your project repo, then re-submit the form with the new commit SHA. The latest submission before the deadline is the one graded.
