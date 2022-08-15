.PHONY: i-dnf u-dnf r-dnf

ifneq (, $(shell command -v dnf))  # command -v dnf

DNF_PACKAGES := packages.d/dnf


i-dnf:
	cat $(DNF_PACKAGES) | xargs sudo dnf install -y

u-dnf: i-dnf
	sudo dnf update -y

r-dnf:
	cat $(DNF_PACKAGES) | xargs sudo dnf remove -y

endif  # command -v dnf
