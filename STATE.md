# STATE.md
_Cold-start anchor. Keep brief — full session detail lives in `.claude/sessions/`._

## Repo
- **Name:** photography
- **Aim:** Discussion and reference space covering all things photography — hardware, software, technique, and workflow.
- **Stack:** Markdown

## Current focus
T7 backup workflow — rsync from T7 to NAS, automated via launchd. iMac done; MBP pending.

## Last session
**2026-07-14** — Set up hourly rsync backup from T7 (`/Volumes/t7/photos/`) to NAS Synology DS225+ (`/Volumes/photos/photography/`) on iMac. Script mounts NAS automatically via SMB (LAN or Tailscale). NAS credentials stored in Keychain. launchd agent runs hourly. Both files committed to dotfiles repo and pushed. MBP setup not yet done.

## Session log
- [2026-07-14](.claude/sessions/2026-07-14.md)
