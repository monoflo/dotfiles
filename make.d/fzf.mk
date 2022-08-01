.PHONY: fzf-clone fzf-install fzf-update fzf-uninstall

FZF_DIR      := $(HOME)/.fzf
FZF_REPO     := https://github.com/junegunn/fzf.git

ARGS_INSTALL := --xdg --key-bindings --completion --no-update-rc

fzf-clone:
ifeq (,$(wildcard $(FZF_DIR)))
	git clone --depth 1 $(FZF_REPO) $(FZF_DIR)
endif

fzf-install: fzf-clone
	$(FZF_DIR)/install $(ARGS_INSTALL)

fzf-update: fzf-clone
	git -C $(FZF_DIR) pull
	$(FZF_DIR)/install $(ARGS_INSTALL)

fzf-uninstall:
ifneq (,$(wildcard $(FZF_DIR)))
	$(FZF_DIR)/uninstall
	rm -rf $(FZF_DIR)
endif
