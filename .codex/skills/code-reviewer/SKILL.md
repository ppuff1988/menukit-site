---
name: "code-reviewer"
description: "Use when the user explicitly wants a code review, a pre-commit quality pass, or a focused scan for bugs, regressions, risky patterns, or missing tests in changed code."
---

# Code Reviewer

Run a concise, high-signal review centered on correctness and risk.

## Review workflow
1. Inspect the relevant diff or files first.
2. Prioritize findings that could cause bugs, regressions, security issues, or broken tests.
3. Treat style and minor cleanup as secondary unless they affect maintainability in a meaningful way.
4. Call out missing validation or missing test coverage when it increases risk.

## Output expectations
- Lead with findings, ordered by severity.
- Include concrete file and line references when possible.
- Keep summaries brief.
- If no findings stand out, say so explicitly and mention any residual risk or testing gaps.

## Useful checks
- `git diff --stat`, `git diff`, and targeted file reads
- Focused test or lint commands when they help confirm a suspected issue
- `rg` searches for related call sites, assumptions, or duplicated patterns
