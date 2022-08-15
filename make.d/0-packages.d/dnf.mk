.PHONY: i-dnf u-dnf r-dnf

ifneq (, $(shell command -v dnf))  # command -v dnf

DNF_PACKAGES := packages.d/dnf


i-dnf:
	cat $(DNF_PACKAGES) | xargs $(SUDO) dnf install -y

u-dnf: i-dnf
	$(SUDO) dnf update -y

r-dnf:
	cat $(DNF_PACKAGES) | xargs $(SUDO) dnf remove -y

endif  # command -v dnf
