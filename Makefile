export XDG_CONFIG_HOME = $(HOME)/.config

DEPENDS :=
FLAGS   := --dotfiles --no-folding -t "$(HOME)"

# OS == MacOS
ifneq ($(shell uname), Darwin)
	DEPENDS += pkg-homebrew pkg-stow
endif

.PHONY: install pkg-homebrew pkg-stow

install: $(DEPENDS)
	@mkdir -p $(XDG_CONFIG_HOME)
	stow -S $(FLAGS) vim

uninstall: $(DEPENDS)
	stow -D $(FLAGS) vim

pkg-homebrew:
ifeq (, $(shell command -v brew 2> /dev/null))
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
endif

pkg-stow:
ifeq (, $(shell command -v stow 2> /dev/null))
	brew install stow
endif
