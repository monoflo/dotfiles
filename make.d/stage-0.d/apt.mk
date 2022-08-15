.PHONY: i-apt u-apt r-apt

ifneq (, $(shell command -v apt-get))  # command -v apt-get

APT_PACKAGES := packages.d/apt


i-apt:
	cat $(APT_PACKAGES) | xargs sudo apt-get install -y

u-apt: i-apt
	sudo apt-get update -y

r-apt:
	cat $(APT_PACKAGES) | xargs sudo apt-get remove -y

endif  # command -v apt-get
