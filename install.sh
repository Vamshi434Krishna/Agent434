#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${HOME}/.local/bin"
mkdir -p "$TARGET_DIR"
install -m 0755 "$(dirname "$0")/local-assistant" "$TARGET_DIR/local-assistant"

echo "Installed to $TARGET_DIR/local-assistant"
echo "Make sure $TARGET_DIR is in your PATH."
