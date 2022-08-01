.PHONY: i-vimplug u-vimplug r-vimplug


i-vimplug:
	nvim -es -c "PlugInstall" -c "qa"

u-vimplug:
	nvim -es -c "PlugUpgrade" -c "qa"
	nvim -es -c "PlugClean" -c "qa"
	nvim -es -c "PlugUpdate" -c "qa"

r-vimplug:
