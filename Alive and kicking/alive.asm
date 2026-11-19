section .data
    msg1 db "Nestor build 1.0 ", 10, 0
    msg1Len  equ $-msg1-1
    msg2 db "NetWare build 1.0 ", 10, 0
    msg2Len equ $-msg2-1
    msg3 db "Lunix build 1.0 ", 10, 0
    msg3Len equ $-msg3-1

    
    
    radius dq 357

    pi dq 3.14
section .bss
section .text
    global main
main:
    push rbp                                    ; maak de resiver box post o/s klaar voor gegevens
    mov rbp, rsp                                ; voeg aan de post box het sinjatuur toe.
    mov rax, 1                                  l resiver antwoord box klaar voor gegevens
    mov rdi ,1                                  ; reesive box data schrijf waarde input 
    mov rsi , msg1                              ; sinjatuur van de latter box memo
    mov rdx, msg1Len
    syscall
    mov rax , 1
    mov rdi, 1
    mov rsi, msg2
    mov rdx, msg2Len
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, msg3
    mov rdx , msg3Len
    syscall
    mov rsp , rbp
    pop rbp
    mov rax , 60
    mov rdi , 0
    syscall



