.PHONY: i-brew u-brew r-brew

ifeq (Darwin, $(shell uname))  # shell uname

BREW_PACKAGES := packages.d/brew
BREW_INSTALL := https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
BREW_UNINSTALL := https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh
BREW_WHICH := $(shell which brew)


i-brew:
ifeq (, $(BREW_WHICH))
	/bin/bash -c "$$(curl -fsSL $(BREW_INSTALL))"
endif
	cat $(BREW_PACKAGES) | xargs brew install

u-brew: i-brew
	brew update

r-brew:
ifneq (, $(BREW_WHICH))
	/bin/bash -c "$$(curl -fsSL $(BREW_UNINSTALL))"
endif

endif  # shell uname
