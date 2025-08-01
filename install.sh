#!/bin/bash

# dotfiles installer script

set -e

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"

echo "Installing dotfiles..."

# Create .config directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Backup existing nvim config if it exists
if [ -d "$CONFIG_DIR/nvim" ] && [ ! -L "$CONFIG_DIR/nvim" ]; then
    echo "Backing up existing nvim config..."
    mv "$CONFIG_DIR/nvim" "$CONFIG_DIR/nvim.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Create symlinks
echo "Creating symlinks..."

# Neovim
ln -sfn "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"

echo "Dotfiles installed successfully!"
echo ""
echo "Next steps:"
echo "1. Open Neovim and LazyVim will automatically install plugins"
echo "2. Run :checkhealth to ensure everything is set up correctly"