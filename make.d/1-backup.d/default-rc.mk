.PHONY: i-default-rc u-default-rc r-default-rc

DEFAULT_RC_TARGETS := ~/.bashrc ~/.bash_login ~/.bash_profile ~/.profile
DEFAULT_RC_EXT     := bak

i-default-rc:
	$(foreach rc, $(DEFAULT_RC_TARGETS), $(call [ -f $(rc) -a ! -h $(rc) ] && mv $(rc) $(rc).$(DEFAULT_RC_BACKUP); ))

u-default-rc:

r-default-rc:
	$(foreach rc, $(DEFAULT_RC_TARGETS), $(call [ -f $(rc).$(DEFAULT_RC_BACKUP) ] && mv $(rc).$(DEFAULT_RC_BACKUP) $(rc)))
