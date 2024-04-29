#!/usr/bin/env bash
pkgs=(
# libraries
    libfuse2  # for AppImage support

# development
    build-essential
    git

# utilities
    curl
    neovim
    tree
)

sudo apt install ${pkgs[*]}
