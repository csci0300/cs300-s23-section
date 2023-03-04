.PHONY: clean all

PROCESSOR_ARCHITECTURE := $(shell arch)
ifeq ($(PROCESSOR_ARCHITECTURE),arm64)
	CC := x86_64-linux-gnu-gcc-9
else ifeq ($(PROCESSOR_ARCHITECTURE),aarch64)
	CC := x86_64-linux-gnu-gcc-9
else
	CC := gcc
endif

all: msg

msg:
ifeq ($(PROCESSOR_ARCHITECTURE),arm64)
	@echo "Apple Silicon machine detected."
	@echo "Please run inside the course container and look at README.apple!"
else ifeq ($(PROCESSOR_ARCHITECTURE),aarch64)
	@echo "Apple Silicon machine detected."
	@echo "Please look at README.apple!"
else
	@echo "Good to go!"
endif
