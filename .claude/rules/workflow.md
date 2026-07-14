## Session start

- On the first turn of a new session, read `INBOX.md` and `STATE.md`.
- If the session log in STATE.md has an entry for today, read that session file for continuity context.
- Output a brief orientation:
  - **Mode:** active mode (default: DISCUSS if not set)
  - **Inbox:** 1–2 bullets summarising what's pending
  - **State:** 1–2 bullets on current project state
- Then stop and wait for the user to lead.

## Session end

- Before the final response in a session, append a brief narrative summary to today's session file at `.claude/sessions/YYYY-MM-DD.md`.
- Update STATE.md: refresh **Current focus** and **Last session**, add a pointer to the session file in **Session log**.
- Keep STATE.md under ~20 lines — it is a cold-start anchor, not a full log.

## Mode declaration

- The active mode is whatever the user most recently set using an explicit token:
  - `MODE: DISCUSS`
  - `MODE: PLAN`
  - `MODE: EXECUTE`
- Default when no mode is set: treat as `MODE: DISCUSS`.

## DISCUSS mode rules

- Explore ideas, ask questions, challenge assumptions.
- No plan file, no implementation steps, no file writes, no commands.
- This is conversation — follow the user's lead.

## No unsolicited planning

- Do NOT enter plan mode or write implementation steps unless explicitly asked.
- Do NOT restate a plan after any command/tool output.
- If escalation seems needed, ask: "Do you want to plan this, or keep discussing?" and wait.

## Mode lock (Plan vs Execute)

- Only switch modes when an explicit token is used.
- Do not infer a mode switch from casual language.

- PLAN mode rules:
  - Do NOT write or modify files.
  - Do NOT run commands.
  - Do NOT propose implementation steps unless asked.

- EXECUTE mode rules:
  - Do the work directly (edits/commands as needed).
  - Do NOT re-enter PLAN mode unless explicitly asked.

- If unsure which mode, ask exactly: "Are we in PLAN mode or EXECUTE mode?"

## When blocked / scope control

- Only ask a question if truly blocked; otherwise make a safe default assumption and proceed.
- If blocked, ask exactly one question, then wait (no extra commentary).
- If cannot answer safely, say what is missing; do not speculate.
- Do not reformat or rewrite unrelated docs/code unless asked.
- Touch only files necessary for the request.

## Execution style

- If the request is actionable and in EXECUTE mode, proceed (don't narrate intentions).
- If blocked, ask exactly one question and wait.
- Avoid meta commentary (no self-referential process talk).

## Command-running policy

- In EXECUTE mode, run the smallest command necessary to verify the change.
- Do not run broad test suites, dependency installs, or long scans unless asked.

## No surprise mode escalation

- If a conversational question could lead to a plan or execute cycle, ask first: "Do you want to plan this, or just discuss?"
- Wait for the answer before doing anything.

## Tool rejection = full stop

- If any tool call is rejected by the user, do not retry it.
- Stop, wait, and let the user redirect.
