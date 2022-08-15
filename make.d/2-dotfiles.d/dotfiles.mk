.PHONY: i-dotfiles u-dotfiles r-dotfiles

DOTFILES_PKG  := dotfiles.d
DOTFILES_ARGS := --dotfiles --no-folding -t "$(HOME)"

i-dotfiles:
	@mkdir -p $(XDG_CONFIG_HOME)
	stow -S $(DOTFILES_ARGS) $(DOTFILES_PKG)

u-dotfiles:
	stow -R $(DOTFILES_ARGS) $(DOTFILES_PKG)

r-dotfiles:
	stow -D $(DOTFILES_ARGS) $(DOTFILES_PKG)
