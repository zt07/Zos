;shat
;to make bin
;nasm -f bin boot.asm -o boot.bin
;to run qemu
;qemu-system-x86_64 boot.bin
;nasm -f bin boot.asm -o boot.bin && qemu-system-x86_64 boot.bin     
mov ah, 0x0e
mov al, 'a'
int 0x10;interuppt

jmp $
times 510-($-$$) db 0 
db 0x55,0xaa 
