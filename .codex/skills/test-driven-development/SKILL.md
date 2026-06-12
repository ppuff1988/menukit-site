---
name: "test-driven-development"
description: "Use when implementing a feature or bugfix with test-first workflow, or when the user explicitly asks for strict TDD, red-green-refactor, or stronger test discipline before code changes."
---

# Test-Driven Development

Drive behavior with tests first whenever the task and codebase support it.

## Red-Green-Refactor
1. Write the smallest test that captures the next behavior.
2. Run that targeted test and verify it fails for the expected reason.
3. Write the minimal production change to make it pass.
4. Re-run the targeted test and any nearby affected tests.
5. Refactor only while the suite stays green.

## Guardrails
- A passing first run is a warning sign: confirm the test is actually exercising the new behavior.
- Prefer real behavior over mock-heavy tests.
- Keep each test focused on one behavior.
- For bugfixes, reproduce the bug in a test before fixing it.

## References
- Read [references/testing-anti-patterns.md](references/testing-anti-patterns.md) before introducing heavy mocking, fake-only assertions, or test-only production APIs.

## When TDD may not fit cleanly
- Config-only changes
- One-off scripts with no maintained test harness
- Environments where test execution is unavailable

In those cases, explain the limitation and pick the smallest reliable validation path instead of pretending TDD happened.
