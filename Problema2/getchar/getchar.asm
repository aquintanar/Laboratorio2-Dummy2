section .data

    cadena db "AngelQ",10
    len1 equ $-cadena

    posicion  dd  3



section .bss
    caracter resb 1




section .text
global _start

_start:
    ;1.Inicializacion
    mov r9,cadena
    mov r10,len1
    mov rcx,[posicion]
    mov r11,0
    xor r12,r12

    ;2.Vemos si es la primera letra
    mov r12b,[r9]

    dec rcx

    cmp rcx,r11
    jz impresion


    ciclo:
        inc r9

        mov r12b,[r9]

        dec rcx

        cmp rcx,r11
        jnz ciclo







    impresion:

        mov [caracter],r12b
        ;SYSCALL
        mov rax, 1		        
	    mov rdi, 1		    
	    mov rsi, caracter	
	    mov rdx, 1
        syscall


        ;CC
        mov rax, 60		
	    mov rdi, 0
	    syscall



