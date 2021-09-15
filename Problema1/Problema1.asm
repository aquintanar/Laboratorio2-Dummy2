
section .data
    
    mensaje1 db "El numero es capicua",10
    len1 equ $-mensaje1

    mensaje2 db "El numero no es capicua",10
    len2 equ $-mensaje2

    codigo db "20199102"



section .bss




section .text
global _start

_start:
    mov r9,[codigo]
    mov r10,r9
    bswap r10

    xor r10,r9
    jz capicua


nocapicua:
    mov rax, 1		    
	mov rdi, 1		    
	mov rsi, mensaje2	
	mov rdx, len2
    syscall
    jmp exit


capicua:
    mov rax, 1		        
	mov rdi, 1		    
	mov rsi, mensaje1	
	mov rdx, len1
    syscall

exit:

    mov rax, 60		
	mov rdi, 0
	syscall