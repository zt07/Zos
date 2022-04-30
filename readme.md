# Installation and use

* Clone the repo
     `git clone https://github.com/zt07/OsDev `

* Install NASM and QEMU

* Run the following command (Assembles file to a binary and starts QEMU)   
     `nasm -f bin boot.asm -o boot.bin && qemu-system-x86_64 boot.bin`
