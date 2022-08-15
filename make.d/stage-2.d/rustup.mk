.PHONY: i-rustup u-rustup r-rustup

RUSTUP_INSTALL_ARGS := -y --no-modify-path


i-rustup:
ifeq (, $(shell which rustup))
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- $(RUSTUP_INSTALL_ARGS)
endif

u-rustup:
	rustup update

r-rustup:
ifneq (, $(shell which rustup))
	rustup self uninstall
endif
