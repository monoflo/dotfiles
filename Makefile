.PHONY: install update remove
export XDG_CONFIG_HOME = $(HOME)/.config


install: i-dotfiles i-fzf i-vimplug

update:  u-dotfiles u-fzf u-vimplug

remove:  r-dotfiles r-fzf r-vimplug


include make.d/dotfiles.mk
include make.d/fzf.mk
include make.d/vim-plug.mk
