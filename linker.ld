SECTIONS {
        . = 0x1000;
        output : {
            libc_start.o(.text)
            *(*)
        }
}
