CC = gcc
PROGRAMS = problem_one problem_two problem_three problem_four ptrs_and_strings
ALLPROGRAMS = $(PROGRAMS)

all: $(ALLPROGRAMS)

include ../common/rules.mk

CFLAGS += -Wno-unused-parameter

%.o: %.c $(BUILDSTAMP)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(DEPCFLAGS) $(O) -o $@ -c $<

problem_one: problem_one.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

problem_two: problem_two.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

problem_three: problem_two.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

problem_four: problem_four.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

ptrs_and_strings: ptrs_and_strings.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

clean:
	rm -rf $(ALLPROGRAMS) *.o $(DEPSDIR)

.PHONY: all clean
