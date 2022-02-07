;Zaheeb T 2/2/22
;to make binary file
;nasm -f bin boot.asm -o boot.bin
;to run qemu
;qemu-system-x86_64 boot.bin
;nasm -f bin boot.asm -o boot.bin && qemu-system-x86_64 boot.bin
; Crappy way of printing Hello World on boot.   
mov ah, 0x0e
mov al, 'H'
int 0x10;interuppt
mov al, 'e'
int 0x10;interuppt
mov al, 'l'
int 0x10;interuppt
mov al, 'l'
int 0x10;interuppt
mov al, 'o'
int 0x10;interuppt
mov al, ' '
int 0x10;interuppt
mov al, 'W'
int 0x10;interuppt
mov al, 'o'
int 0x10;interuppt
mov al, 'r'
int 0x10;interuppt
mov al, 'l'
int 0x10;interuppt
mov al, 'd'
int 0x10;interuppt


jmp $
times 510-($-$$) db 0 
db 0x55,0xaa ;512 byte size so it is recognized as a boot sector
