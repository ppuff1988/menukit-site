---
name: "brainstorming"
description: "Use when the user wants ideation, feature scoping, design exploration, spec drafting, UX direction, or multiple approaches before implementation. Helpful for turning a rough request into an approved plan."
---

# Brainstorming

Use this skill when the work is still fuzzy and we should shape the solution before writing code.

## Core workflow
1. Explore the current repo, docs, and nearby code so suggestions fit the project.
2. Clarify the goal, constraints, and success criteria with focused questions only when needed.
3. Offer 2-3 viable approaches with trade-offs and a recommendation.
4. Present a concrete design or spec outline sized to the task.
5. Confirm the direction before moving into implementation.

## Visual work
- If mockups, diagrams, or side-by-side options would help, read [references/visual-companion.md](references/visual-companion.md).
- Reuse the bundled browser companion in `scripts/` instead of rebuilding one-off tooling.

## Writing specs
- Save specs in the repo location the user prefers. If no convention exists, use a sensible `docs/` path.
- When you want an independent quality pass, use [references/spec-document-reviewer-prompt.md](references/spec-document-reviewer-prompt.md) as a review checklist or as the prompt for a separate reviewer.

## Guardrails
- Do not force a long design loop for obviously small, low-risk requests.
- Keep the process collaborative: enough structure to reduce rework, not so much that it blocks progress.
- If the user already gave a clear spec, summarize it, sanity-check risks, and move forward.
