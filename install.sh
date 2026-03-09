#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/bin"
chmod +x "$SCRIPT_DIR/combine_audio"
ln -sf "$SCRIPT_DIR/combine_audio" "$HOME/bin/combine_audio"

echo "Installed: $HOME/bin/combine_audio -> $SCRIPT_DIR/combine_audio"
echo ""
echo "Ensure ~/bin is in your PATH. If not, add this to ~/.zshrc:"
echo '  export PATH="$HOME/bin:$PATH"'
