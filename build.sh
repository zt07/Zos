export PATH=$PATH:/usr/local/1686-elf-gcc/bin/
mkdir -p isodir/boot/grub
i686-elf-as boot.s -o boot.o
i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-gcc -T linker.ld -o Zos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
rm boot.o kernel.o
cp myos.bin isodir/boot/myos.bin
cp grub.cfg isodir/boot/grub/grub.cfg

grub-mkrescue -o Zos.iso isodir
if grub-file --is-x86-multiboot myos.bin; then
  echo multiboot confirmed
else
  echo the file is not multiboot
fi