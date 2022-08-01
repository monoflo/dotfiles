.PHONY: i install u update r remove
export XDG_CONFIG_HOME = $(HOME)/.config

MAIN_INCLUDES := $(wildcard make.d/*/*)
MAIN_TARGETS  := $(notdir $(basename $(MAIN_INCLUDES)))

i install: $(addprefix i-, $(MAIN_TARGETS))
u update:  $(addprefix u-, $(MAIN_TARGETS))
r remove:  $(addprefix r-, $(MAIN_TARGETS))

$(foreach mk, $(MAIN_INCLUDES), $(eval include $(mk)))
