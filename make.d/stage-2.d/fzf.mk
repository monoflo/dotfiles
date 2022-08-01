.PHONY: i-fzf u-fzf r-fzf c_fzf

FZF_DIR  := $(HOME)/.fzf
FZF_REPO := https://github.com/junegunn/fzf.git
FZF_ARGS := --xdg --key-bindings --completion --no-update-rc


i-fzf: c_fzf
ifeq (,$(wildcard $(XDG_CONFIG_HOME)/fzf))
	$(FZF_DIR)/install $(FZF_ARGS)
endif

u-fzf: c_fzf
	git -C $(FZF_DIR) pull
	$(FZF_DIR)/install $(FZF_ARGS)

r-fzf:
ifneq (,$(wildcard $(FZF_DIR)))
	$(FZF_DIR)/uninstall
	rm -rf $(FZF_DIR)
endif

# helpers

c_fzf:
ifeq (,$(wildcard $(FZF_DIR)))
	git clone --depth 1 $(FZF_REPO) $(FZF_DIR)
endif
