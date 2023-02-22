CC = gcc
PROGRAMS = buggy-concat signed-int1 signed-int2
ALLPROGRAMS = $(PROGRAMS)

all: $(ALLPROGRAMS)

O = 0

include ../common/rules.mk

CFLAGS += -Wno-unused-parameter

%.o: %.c $(BUILDSTAMP)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(DEPCFLAGS) $(O) -o $@ -c $<

buggy-concat: buggy-concat.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

signed-int1: signed-int1.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

signed-int2: signed-int2.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

clean:
	rm -rf $(ALLPROGRAMS) *.o $(DEPSDIR)

.PHONY: all clean
