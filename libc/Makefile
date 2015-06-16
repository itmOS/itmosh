OUTPUT = libc.a
OBJ = syscalls.o

export AS = yasm
export ASFLAGS = -f elf32

all: $(OUTPUT)

$(OUTPUT): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

clean:
	rm -f $(OBJ) $(OUTPUT)

.PHONY: all clean
