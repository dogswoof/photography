# /project:review

Review the current branch for quality, correctness, and security.

## Steps
1. Run `git diff main...HEAD` to see all changes
2. Check for: logic errors, security issues, missing tests, hardcoded values
3. Report findings as a prioritized list: Critical / Warning / Suggestion

## Output format
- **Critical**: must fix before merge
- **Warning**: should fix, explains why
- **Suggestion**: optional improvement
