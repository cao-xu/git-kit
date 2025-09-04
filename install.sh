#!/bin/bash
#
# Git-Kit Installer
# This script installs the git-kit tools to a directory in the user's PATH.
#
set -e # Exit immediately if a command exits with a non-zero status.

# Determine the installation directory, prioritizing /usr/local/bin
INSTALL_DIR="/usr/local/bin"
if [ ! -w "$INSTALL_DIR" ]; then
    echo "⚠️  Warning: No write permissions for $INSTALL_DIR. Trying ~/.local/bin..."
    INSTALL_DIR="$HOME/.local/bin"
    # Create the directory if it doesn't exist
    mkdir -p "$INSTALL_DIR"
fi

# Check if INSTALL_DIR is in the user's PATH
case ":$PATH:" in
  *":$INSTALL_DIR:"*) ;;
  *) 
    echo "⚠️  Warning: Your installation directory ($INSTALL_DIR) is not in your PATH."
    echo "Please add it to your shell's configuration file (e.g., ~/.bashrc, ~/.zshrc):"
    echo "   export PATH=\"\$PATH:$INSTALL_DIR\""
    echo ""
    ;;
esac

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/scripts"

echo "🚀 Installing Git-Kit tools to $INSTALL_DIR..."

for script in "$SCRIPT_DIR"/*; do
    script_name=$(basename "$script")
    target_path="$INSTALL_DIR/$script_name"
    
    echo "   - Installing '$script_name'..."
    # Copy the script
    cp "$script" "$target_path"
    # Make it executable
    chmod +x "$target_path"
done

echo ""
echo "✅ Git-Kit installed successfully!"
echo ""
echo "🎉 NEXT STEPS:"
echo "1. Copy '.git-kit-config.template' to your project's root folder."
echo "2. Rename it to '.git-kit-config' and customize it."
echo ""
echo "   Enjoy your new streamlined Git workflow!"
