---
name: "git-commit-helper"
description: "Use when the user asks for a commit message, wants conventional commit formatting, or is preparing staged changes for a git commit."
---

# Git Commit Helper

Generate a clear commit message from the actual diff.

## Workflow
1. Inspect staged changes first with `git diff --staged --name-only` and `git diff --staged`.
2. If nothing is staged, inspect `git status --short` and either:
   - draft a message for the unstaged work, or
   - tell the user there is nothing staged yet.
3. Choose the smallest accurate conventional commit type and scope.
4. Write a subject in imperative mood, ideally under 50 characters, with no trailing period.
5. Add a body only when it improves clarity.

## Conventional commit guide
- `feat`: new user-facing behavior
- `fix`: bug fix or regression fix
- `refactor`: structural change without behavior change
- `test`: test-only changes
- `docs`: documentation-only changes
- `chore`: tooling, maintenance, dependency, or housekeeping work

## Output expectations
- Prefer this shape:

```text
type(scope): subject

Optional body that explains what changed and why.
```

- Mention breaking changes or issue references only if the diff supports them.
- Do not run `git commit` unless the user explicitly asks.
