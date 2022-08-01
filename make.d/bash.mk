.PHONY: i-bash u-bash r-bash

TARGETS := ~/.bash_login ~/.bash_profile
BACKUP  := bak

i-bash:

	$(foreach rc, $(TARGETS), $(call [ -f $(rc) -a ! -h $(rc) ] && mv $(rc) $(rc).$(BACKUP); ))

u-bash: i-bash

r-bash:
	$(foreach rc, $(TARGETS), $(call [ -f $(rc).$(BACKUP) ] && mv $(rc).$(BACKUP) $(rc)))
