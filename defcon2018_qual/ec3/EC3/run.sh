#!/bin/sh
./qemu-system-x86_64 -initrd ./newinitrd.cpio.gz -nographic -kernel ./vmlinuz-4.4.0-119-generic -append "priority=low console=ttyS0" -device ooo
