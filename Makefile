.PHONY: help install dev landing open check check-node pages-create deploy

PORT ?= 8787
HOST ?= 0.0.0.0
PROJECT_NAME ?= menukit
WRANGLER ?= npx --yes wrangler@4.100.0
LANDING_URL := http://localhost:$(PORT)/

help:
	@echo "米妞KIT Cloudflare commands"
	@echo ""
	@echo "  make install            Install npm dependencies"
	@echo "  make dev                Start Cloudflare Pages dev server"
	@echo "  make landing            Print the local landing page URL"
	@echo "  make open               Open the local landing page in your browser"
	@echo "  make check              Check Cloudflare Pages files exist"
	@echo "  make pages-create       Create the Cloudflare Pages project"
	@echo "  make deploy             Deploy public/ to Cloudflare Pages"
	@echo ""
	@echo "Options:"
	@echo "  PORT=5174 make dev"
	@echo "  PROJECT_NAME=my-pages-project make deploy"

install:
	@$(MAKE) check-node
	@npm install

dev: check check-node
	@echo "Serving 米妞KIT with Cloudflare Pages at $(LANDING_URL) with live reload"
	@$(WRANGLER) pages dev public --port $(PORT) --ip $(HOST) --live-reload

landing:
	@echo "$(LANDING_URL)"

open: check
	@echo "Opening $(LANDING_URL)"
	@if command -v xdg-open >/dev/null 2>&1; then \
		xdg-open "$(LANDING_URL)"; \
	elif command -v open >/dev/null 2>&1; then \
		open "$(LANDING_URL)"; \
	else \
		echo "Open this URL manually: $(LANDING_URL)"; \
	fi

check:
	@test -f public/index.html
	@test -f public/favicon.ico
	@test -f public/assets/brand/logo-rectangle.png
	@test -f public/assets/brand/logo-rectangle-188.webp
	@test -f public/assets/brand/logo-rectangle-376.webp
	@test -f public/assets/brand/favicon-16x16.png
	@test -f public/assets/brand/favicon-32x32.png
	@test -f public/assets/brand/apple-touch-icon.png
	@test -f public/assets/brand/icon-192.png
	@test -f public/assets/brand/icon-512.png
	@test -f public/assets/brand/og-image.jpg
	@test -f public/site.webmanifest
	@test -f public/assets/menukit-landing-hero.png
	@test -f public/assets/menukit-storefront-ordering.png
	@test -f public/assets/menukit-operations-tablet.png
	@test -f docs/design-system.md
	@test -f docs/app-featured.md
	@test -f docs/landing-style-guide.md
	@test -f wrangler.toml
	@test -f functions/api/health.js
	@echo "Cloudflare Pages files are ready."

check-node:
	@node -e "const major = Number(process.versions.node.split('.')[0]); if (major < 24) { console.error('Node.js 24+ is required. Rebuild the Dev Container after the Dockerfile update. Current: ' + process.version); process.exit(1); }"

deploy: check check-node
	@$(WRANGLER) pages deploy public --project-name $(PROJECT_NAME)

pages-create: check-node
	@$(WRANGLER) pages project create $(PROJECT_NAME) --production-branch main
