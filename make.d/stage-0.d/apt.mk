.PHONY: i-apt u-apt r-apt

ifneq (, $(shell command -v apt))  # command -v apt

APT_PACKAGES := packages.d/apt


i-apt:
	cat $(APT_PACKAGES) | xargs sudo apt install -y

u-apt: i-apt
	sudo apt update -y

r-apt:
	cat $(APT_PACKAGES) | xargs sudo apt remove -y

endif  # command -v apt
