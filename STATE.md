# STATE.md
_Cold-start anchor. Keep brief — full session detail lives in `.claude/sessions/`._

## Repo
- **Name:** photography
- **Aim:** Discussion and reference space covering all things photography — hardware, software, technique, and workflow.
- **Stack:** Markdown

## Current focus
LrC catalogue backup to NAS — next step before travel.

## Last session
**2026-07-14** — Completed hourly rsync backup setup on both iMac and MBP. Script at `~/dotfiles/bin/t7-backup.sh` syncs `/Volumes/t7/photos/` → `/Volumes/photos/photography/`, auto-mounting NAS via SMB (LAN or Tailscale). NAS credentials in Keychain on both machines. launchd agent loaded and verified on both. Next: LrC catalogue backup to NAS, then end-to-end Tailscale test before departure.

## Session log
- [2026-07-14](.claude/sessions/2026-07-14.md)
