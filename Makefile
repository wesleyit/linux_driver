obj-m := linux_driver.o
CURRENT_VERSION := $(shell uname -r)
KERNEL := /lib/modules/$(CURRENT_VERSION)

all:
	make -C $(KERNEL)/build M=$(PWD) modules

clean:
	make -C $(KERNEL)/build M=$(PWD) clean
