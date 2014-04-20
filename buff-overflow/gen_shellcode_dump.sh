#!/bin/bash

gcc -m32 -c shellcode.S -o shellcode.out
objdump -D shellcode.out > dump_shellcode.txt
