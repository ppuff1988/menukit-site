# Dev Container

This dev container is prepared for the current MenuKit Cloudflare Pages landing project:

- Cloudflare Pages local development through Wrangler
- Static assets served from `public/`
- Pages Functions under `functions/`

Included tools:

- Node.js 24
- npm
- Wrangler CLI
- Git and GitHub CLI

Common commands:

```bash
npm ci
make check
make dev
```

Deployment is handled by GitHub Actions. For manual Cloudflare Pages project setup:

```bash
make pages-create
make deploy
```

D1, R2, and Turnstile bindings are intentionally not configured yet. Add them only when the subscription, order, upload, or protected-form flows are implemented.
