.PHONY: c-shell

c-shell:
	shellcheck $(shell find dotfiles.d -type f -exec file {} \; | grep script | grep -v zsh | awk -F ': ' '{print $$1}')
