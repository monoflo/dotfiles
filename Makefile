.PHONY: install update remove
export XDG_CONFIG_HOME = $(HOME)/.config


install: i-dotfiles i-fzf

update:  u-dotfiles u-fzf

remove:  r-dotfiles r-fzf


include make.d/dotfiles.mk
include make.d/fzf.mk
