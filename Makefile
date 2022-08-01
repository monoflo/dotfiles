.PHONY: i install u update r remove
export XDG_CONFIG_HOME = $(HOME)/.config

INCLUDES := $(wildcard make.d/*)
TARGETS  := $(notdir $(basename $(INCLUDES)))

i install: $(addprefix i-, $(TARGETS))
u update:  $(addprefix u-, $(TARGETS))
r remove:  $(addprefix r-, $(TARGETS))

$(foreach mk, $(INCLUDES), $(eval include $(mk)))
