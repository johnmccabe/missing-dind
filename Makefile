IMAGE_NAME = johnmccabe/dind

MAKEFILES := $(wildcard */Makefile)
SUBDIRS := $(subst Makefile,.,$(MAKEFILES))

all: $(SUBDIRS)

$(SUBDIRS) :
	$(MAKE) -C $@ image

.PHONY : all $(SUBDIRS)
