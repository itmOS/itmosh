export CXXFLAGS = -Wall -Wextra -std=c++11 -fno-rtti -fno-exceptions
export CFLAGS = -Wall -Wextra -std=c11 -I $(shell pwd)/libc
LD = gcc

all: echo.linux itmosh.linux

%.o: %.cc
	$(CXX) $(CXXFLAGS) $^ -c

echo.linux: echo.o
	$(LD) $(LDFLAGS) $^ -o $@

itmosh.linux: itmosh.o libc/helpers.o libc/bufio.o
	$(LD) $(LDFLAGS) $^ -o $@

clean:
	make -f Makefile clean

.PHONY: all clean
