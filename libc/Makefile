OUTPUT = libc.a
OBJ = syscalls.o string.o

AS = yasm
ASFLAGS = -f elf32

CFLAGS += -I ../include

all: $(OUTPUT)

$(OUTPUT): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

clean:
	rm -f $(OBJ) $(OUTPUT)

.PHONY: all clean
