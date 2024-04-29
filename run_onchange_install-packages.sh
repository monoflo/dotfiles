#!/usr/bin/env bash
pkgs=(
# development
    build-essential
    git

# utilities
    curl
    neovim
    tree
)

sudo apt install ${pkgs[*]}
