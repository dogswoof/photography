#!/bin/bash
# Blocks unsafe shell operations before execution.
# Hook type: PreToolUse — receives JSON payload on stdin.

INPUT=$(cat)

if command -v python3 >/dev/null 2>&1; then
  COMMAND=$(echo "$INPUT" | python3 -c "
import sys, json
try:
    d = json.load(sys.stdin)
    print(d.get('tool_input', {}).get('command', ''))
except Exception:
    print('')
" 2>/dev/null || echo "")
else
  COMMAND=$(echo "$INPUT" | grep -o '"command":"[^"]*"' | cut -d'"' -f4)
fi

BLOCKED_PATTERNS=(
  "rm -rf"
  "git reset --hard"
  "git push --force"
  "git push -f"
  "DROP TABLE"
  "truncate"
  "> /dev/"
)

for pattern in "${BLOCKED_PATTERNS[@]}"; do
  if echo "$COMMAND" | grep -qi "$pattern"; then
    echo "BLOCKED: unsafe pattern detected: '$pattern'" >&2
    exit 2
  fi
done

exit 0
