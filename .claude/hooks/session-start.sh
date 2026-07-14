#!/usr/bin/env bash

CURRENT_TIME=$(date '+%Y-%m-%d %H:%M:%S')
STATE_MOD=$(date -r STATE.md '+%Y-%m-%d %H:%M:%S' 2>/dev/null || echo "not found")
INBOX_MOD=$(date -r INBOX.md '+%Y-%m-%d %H:%M:%S' 2>/dev/null || echo "not found")

TREE_RAW=$(find . -not -path './.git/*' -not -path './node_modules/*' -not -path './.claude/sessions/*' | sort | head -60 2>/dev/null)
TREE_ESCAPED=$(echo "$TREE_RAW" | python3 -c "import sys,json; print(json.dumps(sys.stdin.read())[1:-1])" 2>/dev/null || echo "(tree unavailable)")

cat << EOF
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "Session started: ${CURRENT_TIME}\nSTATE.md last modified: ${STATE_MOD}\nINBOX.md last modified: ${INBOX_MOD}\n\nFile tree:\n${TREE_ESCAPED}"
  }
}
EOF
