OUTPUT = libc.a
OBJ = syscalls.o string.o stdio.o bufio.o helpers.o allocation.o \
	unistd.o signal.o stdlib.o

AS = yasm
ASFLAGS = -f elf32

CFLAGS += -I ../include -m32

all: $(OUTPUT)

$(OUTPUT): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

clean:
	rm -f $(OBJ) $(OUTPUT)

.PHONY: all clean
