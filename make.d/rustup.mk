.PHONY: i-rustup u-rustup r-rustup

i-rustup:
ifeq (, $(shell which rustup))
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
endif

u-rustup:
	rustup update

r-rustup:
	rustup self uninstall
