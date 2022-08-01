.PHONY: i-dotfiles u-dotfiles r-dotfiles

PACKAGE := dotfiles.d
ARGS    := --dotfiles --no-folding -t "$(HOME)"

i-dotfiles:
	@mkdir -p $(XDG_CONFIG_HOME)
	stow -S $(ARGS) $(PACKAGE)

u-dotfiles:
	stow -R $(ARGS) $(PACKAGE)

r-dotfiles:
	stow -D $(ARGS) $(PACKAGE)
