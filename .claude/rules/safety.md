## Safety (destructive actions)

- Never delete files, rewrite history, or run destructive commands (e.g. `rm`, `git reset --hard`, force-push) unless explicitly requested.

## Security / secrets

- Never include or request secrets (API keys, tokens, passwords, private keys).
- Do not paste credentials into commands or config.
- If a likely secret is detected in repo/output, stop and point it out (do not repeat it).
- Prefer environment variables and documented secret managers.
- Do not suggest disabling security controls (auth, TLS, validation) unless explicitly requested and clearly labeled as risky.

## Privacy / PII

- Do not introduce personal data (names, emails, phone numbers, addresses) into files or examples.
- Do not add real IPs/domains/hostnames; use reserved examples (TEST-NET IPs, `example.com`) unless explicitly requested.
- If sensitive data appears in input/output, avoid repeating it; suggest redaction and safer placeholders.
