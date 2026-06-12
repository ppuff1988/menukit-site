---
name: "ui-ux-pro-max"
description: "Use for UI/UX design, frontend implementation, interface reviews, design-system work, responsive layouts, accessibility passes, color and typography choices, or when searchable style guidance would help."
---

# UI/UX Pro Max

Searchable UI guidance plus scripts for generating a design-system recommendation.

## When to use
- Designing a new page, flow, or component
- Reviewing UI code for accessibility, clarity, responsiveness, or polish
- Picking a visual direction, palette, typography, or layout pattern
- Looking for stack-specific frontend guidance

## Recommended workflow
1. Extract the product type, audience, mood, and stack from the request.
2. Start with a full design-system pass:

```bash
python3 scripts/search.py "<query>" --design-system -p "Project Name"
```

3. Add focused searches when you need more depth:

```bash
python3 scripts/search.py "<query>" --domain style
python3 scripts/search.py "<query>" --domain ux
python3 scripts/search.py "<query>" --stack react
```

4. Use the search results to define a consistent direction before writing UI code.

## Defaults
- Default stack: `html-tailwind` when the user does not specify one.
- Prioritize accessibility, responsive behavior, and coherent visual hierarchy over novelty alone.
- Preserve the repo's existing design language when working inside an established product.

## Bundled resources
- `scripts/` contains the searchable CLI and design-system generator.
- `data/` contains the CSV knowledge base used by those scripts.

## Practical notes
- Run the scripts from this skill directory, or pass absolute paths if your shell cwd is elsewhere.
- If Python is missing, install it or explain the dependency and continue with a manual design review.
