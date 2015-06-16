export CXXFLAGS = -Wall -Wextra -std=c++11 -fno-rtti -fno-exceptions \
	-ffreestanding -nostartfiles -nostdinc \
	-I include -m32
export CFLAGS = -Wall -Wextra -std=c11 -ffreestanding \
	-nostdinc -I include -m32

LDFLAGS = -e main -T linker.ld --oformat=binary -melf_i386

all: itmosh.bin

%.o: %.cc
	$(CXX) $(CXXFLAGS) $^ -c

libc/libc.a:
	make -C libc --no-print-directory

itmosh.bin: itmosh.o libc/libc.a
	$(LD) $(LDFLAGS) $^ -o $@

clean:
	rm -f *.bin *.o
	make -C libc --no-print-directory clean

.PHONY: all clean
