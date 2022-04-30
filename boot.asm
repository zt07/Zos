;Zaheeb T 2/2/22
;to make binary file
;nasm -f bin boot.asm -o boot.bin
;to run qemu
;qemu-system-x86_64 boot.bin
;nasm -f bin boot.asm -o boot.bin && qemu-system-x86_64 boot.bin
; Crappy way of printing Hello World on boot.   
[org 0x7c00] 
mov ah, 0x0e
mov bx, string  ; Moves the string into the bx register

printstr: ; Prints the string in the bx register
    mov al, [bx] ; Moves the first character of the string into the al register
    cmp al, 0    ; Checks if the character is 0 aka null character so it knows when to stop the print loop
    je end       ; If it is 0 then jump to end
    int 0x10     ; Prints the character
    inc bx       ; Increments the bx register by 1
    jmp printstr ; Jumps back to the printstr label to continue the loop

end:
    jmp$                ; Jumps to the end of the program


string:
    db 'Hello World',0  ; The string to print stores in "string" terminated by null character 0.


times 510-($-$$) db 0 
db 0x55,0xaa            ;512 byte size so it is recognized as a boot sector
