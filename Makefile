.PHONY: i install u update r remove c check
export XDG_CONFIG_HOME = $(HOME)/.config

ifeq (0, $(shell id -u))
SUDO :=
else
SUDO := sudo
endif

MAIN_INCLUDES  := $(wildcard make.d/*/*)
MAIN_TARGETS   := $(notdir $(basename $(MAIN_INCLUDES)))

CHECK_INCLUDES := $(wildcard check.d/*)
CHECK_TARGETS  := $(notdir $(basename $(CHECK_INCLUDES)))

i install: $(addprefix i-, $(MAIN_TARGETS))
u update:  $(addprefix u-, $(MAIN_TARGETS))
r remove:  $(addprefix r-, $(MAIN_TARGETS))
c check:   $(addprefix c-, $(CHECK_TARGETS))

$(foreach mk, $(MAIN_INCLUDES),  $(eval include $(mk)))
$(foreach mk, $(CHECK_INCLUDES), $(eval include $(mk)))
