#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
	echo "Usage ./disasm.sh FILE_TO_DISASM"
	exit 1
fi

objdump -b binary --adjust-vma=0x1000 -D $@ -m i386
