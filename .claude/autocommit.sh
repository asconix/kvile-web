#!/bin/sh
# Commit everything in this repo if something changed. Used by the Stop hook.
cd "$(git rev-parse --show-toplevel)" || exit 0
[ -n "$(git status --porcelain)" ] || exit 0
git add -A
git commit -q -m "chore: autocommit $(date -u +%Y-%m-%dT%H:%M:%SZ)" || true
