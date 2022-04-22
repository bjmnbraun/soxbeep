TOP = $(shell pwd)

# Make sure that 'all' is the first target
.PHONY: all
all:

# Delete target files if there is an error (or make is interrupted)
.DELETE_ON_ERROR:

# Set to nothing (i.e., V = ) to enable verbose outputs.
V = @
#V =

.PHONY: install
install:
	$(V)install soxbeep /usr/local/bin/soxbeep

.PHONY: uninstall
uninstall:
	$(V)rm -f /usr/local/bin/soxbeep

all:
	@echo "Specify a make target."
	@true
