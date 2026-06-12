# Copilot Instructions

This repository is a Cloudflare Pages landing project for MenuKit.

- Use Node.js 24 and npm.
- Serve and deploy the static site from `public/`.
- Keep Pages Functions in `functions/`; the current API surface is only `functions/api/health.js`.
- Use `make check` or `npm run check` as the baseline validation command before finishing changes.
- Prefer Makefile targets for local workflows: `make dev`, `make pages-create`, and `make deploy`.
- GitHub Actions deploys `public/` to the Cloudflare Pages project `menukit`.
- Do not add D1, R2, Turnstile, or secret bindings until a real subscription, order, upload, or protected-form flow needs them.
- Keep generated responsive image assets under `public/assets/optimized/` and brand assets under `public/assets/brand/`.
- `docs/landing.html` is a preview/reference page and may use paths that point back to `public/assets/`.
