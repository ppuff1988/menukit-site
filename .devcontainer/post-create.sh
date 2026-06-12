#!/usr/bin/env bash
set -euo pipefail

if [ -f package.json ]; then
  if [ -f pnpm-lock.yaml ]; then
    corepack enable
    pnpm install
  elif [ -f yarn.lock ]; then
    corepack enable
    yarn install
  elif [ -f package-lock.json ] || [ -f npm-shrinkwrap.json ]; then
    npm ci
  else
    npm install
  fi
fi

wrangler --version
sqlite3 --version
