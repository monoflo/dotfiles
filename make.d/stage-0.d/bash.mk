.PHONY: i-bash u-bash r-bash

BASH_TARGETS := ~/.bashrc ~/.bash_login ~/.bash_profile
BASH_BACKUP  := bak

i-bash:

	$(foreach rc, $(BASH_TARGETS), $(call [ -f $(rc) -a ! -h $(rc) ] && mv $(rc) $(rc).$(BASH_BACKUP); ))

u-bash: i-bash

r-bash:
	$(foreach rc, $(BASH_TARGETS), $(call [ -f $(rc).$(BASH_BACKUP) ] && mv $(rc).$(BASH_BACKUP) $(rc)))
