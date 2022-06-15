# Zos (Z Operating System)
A hobby Operating System I am wokring on for fun

# Installation and use:
* Open a terminal where you want to store the operating system.
* `git clone https://github.com/zt07/Zos` 
* `cd Zos/`
* Have a cross compiler for i686 cpu architecture.
* If not run install base-devel or build-essentials, gmp, libmpc, and mpfr adn then run `./crossi686.sh` which installs and builds version 2.35 Bin utils and version 10.2 GCC. 
* Additional info about Cross-Compilers can be found here `https://wiki.osdev.org/GCC_Cross-Compiler`
* Install mtools, grub, and xorriso, QEMU using your package managers.
* Run `./build.sh` to create object files and link them.
* Finally run boot.sh with `./boot.sh`
