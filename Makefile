.PHONY: install uninstall
export XDG_CONFIG_HOME = $(HOME)/.config

PACKAGE := dotfiles.d

ARGS    := --dotfiles --no-folding -t "$(HOME)"


install: fzf-install
	@mkdir -p $(XDG_CONFIG_HOME)
	stow -S $(FLAGS) $(PACKAGE)

update: fzf-update

uninstall: fzf-uninstall
	stow -D $(FLAGS) $(PACKAGE)


include make.d/fzf.mk
