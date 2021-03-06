export CXXFLAGS = -Wall -Wextra -std=c++11 -fno-rtti -fno-exceptions \
	-ffreestanding -nostartfiles -nostdinc \
	-I include -m32 -I libc
export CFLAGS = -Wall -Wextra -std=c11 -ffreestanding \
	-nostdinc -I include -m32 -I libc

AS = yasm
ASFLAGS = -f elf32

LDFLAGS = -e _start -T linker.ld --oformat=binary -melf_i386

all: clean echo.bin itmosh.bin

libc/libc.a:
	make -C libc --no-print-directory

echo.bin: echo.o libc/libc.a libc_start.o
	$(LD) $(LDFLAGS) $^ -o $@

itmosh.bin: itmosh.o libc/libc.a libc_start.o
	$(LD) $(LDFLAGS) $^ -o $@

linux: clean
	make --no-print-directory -f linux.mk

clean:
	rm -f *.bin *.o *.linux
	make -C libc --no-print-directory clean

.PHONY: all clean linux
