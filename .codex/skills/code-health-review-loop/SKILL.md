---
name: code-health-review-loop
description: Iterative code-health review workflow for repositories. Use when the user asks to review code for missing or broken tests, dead code, duplicated logic, abstraction opportunities, documentation gaps, or to update .github/copilot-instructions.md/Copilot instructions as part of a repo quality pass. Supports explicit loop counts such as "run 3 times", "3 loops", "執行3次", where each loop repeats the full test/dead-code, duplication/abstraction, and documentation review sequence.
---

# Code Health Review Loop

## Overview

Run a structured repository quality pass that repeats the same three review areas for a requested number of loops:

1. Tests and dead code
2. Duplication and abstraction opportunities
3. Documentation gaps, including `.github/copilot-instructions.md`

Default to one loop unless the user gives a count. If the user says "3 times", "3 loops", "三次", or similar, run the full 1-2-3 sequence three times, incorporating findings and edits from earlier loops before starting the next one.

## Loop Count

Determine the loop count before starting:

- Use an explicit integer from the request when present.
- Treat "once", "一次", or no count as 1.
- Treat "twice", "兩次", or "2 times" as 2.
- For large counts, use judgment: if the requested count would be expensive, state that you will begin with a practical bounded pass and report any remaining risk.

Announce the count briefly, for example: "I will run 3 review loops; each loop covers tests/dead code, duplication/abstraction, and docs/copilot instructions."

## Workflow

For each loop, execute the sections below in order. Do not treat later loops as a superficial re-read; each loop should re-run enough search, inspection, and validation to catch issues introduced or revealed by earlier edits.

### 1. Tests and Dead Code

Map the project first:

- Identify language, framework, package manager, test runner, and relevant CI commands from files such as `README`, `Makefile`, `package.json`, `pyproject.toml`, `requirements.txt`, `pytest.ini`, `.github/workflows`, or equivalent.
- Use fast search tools such as `rg` and `rg --files` to discover source and test layout.
- Run focused tests or static checks when practical. If full test execution is too costly or blocked, run the closest useful subset and explain the limitation.

Review for:

- Source files or public behavior with no corresponding tests.
- Tests that are stale, skipped without clear reason, overly broad, flaky-looking, or no longer aligned with the code.
- Test helpers or fixtures that are unused or duplicated.
- Dead code: unreachable branches, unused functions/classes, obsolete scripts, unused config, stale feature flags, or code superseded by newer paths.

When the user asked for implementation, make targeted edits: add or repair tests, remove clearly dead code, or leave precise notes when removal is risky.

### 2. Duplication and Abstraction

Search for repeated structure and near-duplicate logic:

- Repeated functions, request/response handling, validation, parsing, error handling, constants, fixtures, setup code, or documentation snippets.
- Similar code that has intentionally different behavior; avoid flattening differences that matter.
- Existing helpers, services, modules, or patterns that should be reused before creating new abstractions.

Prefer conservative abstraction:

- Extract only when it reduces meaningful duplication or clarifies a stable concept.
- Keep behavior unchanged unless the user requested a functional change.
- Avoid broad refactors during a review loop unless they are necessary to fix a real issue.

If you edit code, add or update tests that prove the abstraction preserved behavior.

### 3. Documentation and Copilot Instructions

Review documentation against the actual code:

- Check `README`, `docs/`, API specs, examples, scripts, env files, Make targets, deployment notes, and CI instructions.
- Identify missing setup steps, stale commands, undocumented environment variables, mismatched API behavior, outdated examples, or missing operational notes.
- Compare contributor guidance with current repo patterns.

Always inspect `.github/copilot-instructions.md` when it exists. If it does not exist, create it only when the repo has enough conventions to justify it or the user explicitly asks.

Update `.github/copilot-instructions.md` when the review finds relevant changes to agent-facing guidance, such as:

- New or corrected test commands.
- Project layout discoveries.
- Repo-specific coding conventions.
- Documentation, environment, CI, or operational rules that future coding agents should know.
- Known constraints or common pitfalls surfaced during the review.

Keep copilot instructions concise and actionable. Do not turn them into a changelog; encode stable guidance for future work.

## Reporting

During work, keep the user informed with short progress updates, especially between loops.

At the end, report:

- Loop count completed.
- Files changed, with a short reason for each.
- Tests/checks run and their results.
- Remaining findings or risks, grouped by tests/dead code, duplication/abstraction, and documentation.
- Any recommended follow-up that was intentionally left out of scope.

If no changes are needed, say so clearly and still report the evidence gathered.
