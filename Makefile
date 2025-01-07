# SPDX-License-Identifier: (GPL-2.0-only or LGPL-2.1-only)
# SPDX-FileCopyrightText: 2010-2024 EfficiOS Inc.

# This part of the Makefile is used when the 'make' command is runned in the
# base directory of the lttng-modules sources. It sets some environment and
# calls the kernel build system to build the actual modules.
obj-m += hello-1.o

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default: modules

modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

modules_install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean

