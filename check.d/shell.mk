.PHONY: c-shell

CHECK_SHELL_TARGETS := $(shell find dotfiles.d -type f -exec file {} \; | grep script | grep -v zsh | awk -F ': ' '{print $$1}')

c-shell:
	shellcheck $(CHECK_SHELL_TARGETS)
