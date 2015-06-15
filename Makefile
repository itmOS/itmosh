CXXFLAGS = -Wall -Wextra -std=c++11 -fno-rtti -fno-exceptions \
	-ffreestanding -nostartfiles
CFLAGS = -Wall -Wextra -std=c11 -ffreestanding
LDFLAGS = -e main -T linker.ld --oformat=binary

all: itmosh.bin

%.o: %.cc
	$(CXX) $(CXXFLAGS) $^ -c

itmosh.bin: itmosh.o
	$(LD) $(LDFLAGS) $^ -o $@

clean:
	rm -f *.bin *.o

.PHONY: all clean

