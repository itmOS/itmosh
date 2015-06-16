CXXFLAGS = -Wall -Wextra -std=c++11 -fno-rtti -fno-exceptions \
	-ffreestanding -nostartfiles \
	-I include
CFLAGS = -Wall -Wextra -std=c11 -ffreestanding
LDFLAGS = -e main -T linker.ld --oformat=binary

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
