# Dev Container

This dev container is prepared for a future Cloudflare stack:

- Cloudflare Pages development through your project framework dev server
- Cloudflare D1 local work through Wrangler and `sqlite3`
- Cloudflare R2 bindings through Wrangler

Included tools:

- Node.js 24
- npm and Corepack-enabled package managers
- Wrangler CLI
- SQLite CLI
- Git and GitHub CLI

Common commands once the app is added:

```bash
wrangler login
wrangler pages dev ./dist
wrangler d1 list
wrangler r2 bucket list
```

When `wrangler.toml` is added later, define the D1 and R2 bindings there, for example:

```toml
[[d1_databases]]
binding = "DB"
database_name = "menukit"
database_id = "replace-with-cloudflare-d1-id"

[[r2_buckets]]
binding = "BUCKET"
bucket_name = "menukit-assets"
```
