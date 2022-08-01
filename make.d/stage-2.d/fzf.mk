.PHONY: i-fzf r-fzf u-fzf \
				c_fzf

FZF_DIR      := $(HOME)/.fzf
FZF_REPO     := https://github.com/junegunn/fzf.git

ARGS_INSTALL := --xdg --key-bindings --completion --no-update-rc

i-fzf: c_fzf
ifeq (,$(wildcard $(XDG_CONFIG_HOME)/fzf))
	$(FZF_DIR)/install $(ARGS_INSTALL)
endif

u-fzf: c_fzf
	git -C $(FZF_DIR) pull
	$(FZF_DIR)/install $(ARGS_INSTALL)

r-fzf:
ifneq (,$(wildcard $(FZF_DIR)))
	$(FZF_DIR)/uninstall
	rm -rf $(FZF_DIR)
endif


c_fzf:
ifeq (,$(wildcard $(FZF_DIR)))
	git clone --depth 1 $(FZF_REPO) $(FZF_DIR)
endif
