.PHONY: install update remove
export XDG_CONFIG_HOME = $(HOME)/.config

INCLUDES := $(wildcard make.d/*)
TARGETS  := $(notdir $(basename $(INCLUDES)))

install: $(addprefix i-, $(TARGETS))
update:  $(addprefix u-, $(TARGETS))
remove:  $(addprefix r-, $(TARGETS))

$(foreach mk, $(INCLUDES), $(eval include $(mk)))
