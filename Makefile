export XDG_CONFIG_HOME = $(HOME)/.config

TARGETS := git shell tmux vim
FLAGS   := --dotfiles --no-folding -t "$(HOME)"

FZF_DIR := $(HOME)/.fzf

.PHONY: install uninstall

install:
	@mkdir -p $(XDG_CONFIG_HOME)
	stow -S $(FLAGS) $(TARGETS)
ifeq ($(wildcard $(FZF_DIR)/.),)
	git clone --depth 1 https://github.com/junegunn/fzf.git $(FZF_DIR)
else
	git -C $(FZF_DIR) pull
endif
	$(FZF_DIR)/install --xdg --key-bindings --completion --no-update-rc

uninstall:
	stow -D $(FLAGS) $(TARGETS)
	~/.fzf/uninstall
	$(FZF_DIR)/uninstall
	rm -rf $(FZF_DIR)
