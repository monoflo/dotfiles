export XDG_CONFIG_HOME = $(HOME)/.config

TARGETS := git shell tmux vim
FLAGS   := --dotfiles --no-folding -t "$(HOME)"

.PHONY: install uninstall

install:
	@mkdir -p $(XDG_CONFIG_HOME)
	stow -S $(FLAGS) $(TARGETS)

uninstall:
	stow -D $(FLAGS) $(TARGETS)
