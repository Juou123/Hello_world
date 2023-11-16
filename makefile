# All rights reserved.
#
# Makefile used for building application.
#
################################################################################
# include ../../../project/configs/current.configs

PWD=`pwd`
# SDK_LIBS=../../../project/release/nvr/i2m/common/glibc/8.2.1/mi_libs/dynamic
# SDK_LIBS_STATIC=$(patsubst %dynamic,%static,$(SDK_LIBS))
# SDK_INCS=../../../project/release/include
# UAPI_INCS=../../../project/kbuild/4.9.84/i2m/include/uapi/mstar
INCLUDES=./
# LDFLAGS+=-L$(SDK_LIBS)  -L$(SDK_LIBS_STATIC)
LDFLAGS+=-L$(PWD)/lib -L/usr/local/lib
STDLIBS:=  -lstdc++ -ldl  -lpthread -lm 
LIBS += -lpthread -ldl
CFLAGS:=-rdynamic -funwind-tables -I.  -I$(INCLUDES)
CC:=arm-linux-gnueabihf-gcc

# mouse move by mouse device
# EXTRA_CFLAGS:= -DINIT_HDMI -DMOUSE -DMOUSE_MOVE

HELLOWORLD_SRC:=main.c 
HELLOWORLD:=helloworld

.PHONY : all clean

all:
	$(CC) -D_GNU_SOURCE  -o  $(HELLOWORLD)  $(HELLOWORLD_SRC) $(CFLAGS) $(LDFLAGS) $(LIBS) 
clean:
	rm -f $(patsubst %.c,%.o,$(HELLOWORLD_SRC))
	rm -f $(HELLOWORLD)
install:
	@echo done!

