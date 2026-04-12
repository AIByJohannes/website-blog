#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THEME_DIR="$ROOT_DIR/themes/ananke"
OUTPUT_FILE="$ROOT_DIR/docs/index.html"

if [[ ! -f "$THEME_DIR/layouts/_default/baseof.html" ]]; then
  echo "error: missing Ananke theme checkout in themes/ananke" >&2
  echo "run: git submodule update --init --recursive" >&2
  exit 1
fi

cd "$ROOT_DIR"
hugo --minify

if [[ ! -s "$OUTPUT_FILE" ]]; then
  echo "error: build produced an empty docs/index.html" >&2
  exit 1
fi

if ! grep -qi '<!doctype html\|<html' "$OUTPUT_FILE"; then
  echo "error: docs/index.html does not look like valid HTML output" >&2
  exit 1
fi

echo "Build succeeded: docs/index.html is present and non-empty."
