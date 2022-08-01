.PHONY: install uninstall
export XDG_CONFIG_HOME = $(HOME)/.config

PACKAGE := dotfiles.d

ARGS    := --dotfiles --no-folding -t "$(HOME)"


install: i-fzf
	@mkdir -p $(XDG_CONFIG_HOME)
	stow -S $(FLAGS) $(PACKAGE)

update: u-fzf

remove: r-fzf
	stow -D $(FLAGS) $(PACKAGE)


include make.d/fzf.mk
