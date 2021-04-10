#!/bin/sh
set -e
. ./build.sh
 
mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub
 
cp sysroot/boot/gbexplodeos.kernel isodir/boot/gbexplodeos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "gbexplodeos" {
	multiboot /boot/gbexplodeos.kernel
}
EOF
grub-mkrescue -o gbexplodeos.iso isodir
