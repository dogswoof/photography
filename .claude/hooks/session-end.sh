#!/usr/bin/env bash

SESSION_DIR=".claude/sessions"
mkdir -p "$SESSION_DIR"

DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H:%M:%S')
FILE="$SESSION_DIR/$DATE.md"

GIT_STATUS=$(git status --short 2>/dev/null | head -10 || echo "not a git repo")
RECENT=$(git log --oneline -5 2>/dev/null || echo "no commits")

if [[ ! -f "$FILE" ]]; then
  echo "# Session $DATE" > "$FILE"
fi

cat >> "$FILE" << EOF

## $TIME — checkpoint
**Modified:**
\`\`\`
${GIT_STATUS:-nothing modified}
\`\`\`
**Recent commits:**
\`\`\`
$RECENT
\`\`\`
EOF
