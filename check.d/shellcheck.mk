.PHONY: c-shellcheck

CHECK_SHELLCHECK_TARGETS := $(shell find dotfiles.d -type f -exec file {} \; | grep script | grep -v zsh | awk -F ': ' '{print $$1}')

c-shellcheck:
	shellcheck $(CHECK_SHELLCHECK_TARGETS)
