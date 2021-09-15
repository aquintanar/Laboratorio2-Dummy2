section .data

    cadena db "EstaCa",10
    len1 equ $-cadena

section .bss
    copia_cadena resb 30

section .text
global _start

_start:

    ;1.Copiamos las variables
    mov r9,cadena
    mov r10,len1
    mov r11,copia_cadena
    mov r15,0

    mov r12b,[r9]
    mov [r11],r12b

    dec r10

    cmp r10,r15
    jz imprimir


    ciclo:
        inc r9
        inc r11
        mov r12b,[r9]
        mov [r11],r12b
        dec r10

        cmp r10,r15
        jne ciclo


    imprimir:
    mov rax, 1		        
	mov rdi, 1		    
	mov rsi, copia_cadena	
	mov rdx, len1
    syscall

    
    ;CC
    mov rax, 60		
	mov rdi, 0
	syscall
