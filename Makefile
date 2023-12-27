# Makefile

# Compiler
CC = gcc

# Executable name
BINDIR = /usr/local/bin
HEADERDIR = /usr/local/include/
EXECUTABLE = simple_program
OBJ = main.o func.o
DEPS = header.h

simple_program: $(OBJ)
	$(CC) -o $@ $^

main.o: main.c $(DEPS)
	$(CC) -c -o $@ $<

func.o: func.c $(DEPS)
	$(CC) -c -o $@ $<

install:
	cp $(EXECUTABLE) $(BINDIR)
	cp $(DEPS) $(HEADERDIR)

clean:
	rm -f $(EXECUTABLE) $(OBJ)

clean-all:
	rm -f $(EXECUTABLE) $(OBJ)
	rm -f $(HEADERDIR)/$(DEPS)
	rm -f $(BINDIR)/$(EXECUTABLE)
