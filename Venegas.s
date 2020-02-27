.data

cadena: .asciz "Venegas Medina\n"
cadenafin:

.text
.global main

main:   PUSH {r7, lr}
        MOV r0, #1 
        LDR r1, =cadena  
        MOV r2, #cadenafin -cadena 
        MOV r7, #4  
        SWI #0  
        MOV r0, #0 
        POP {r7, lr}  
        BX lr         