.data

var1 : .asciz " La suma de los numeros 128, 32, 100, -30, 124 es: %d \n"
var2 : .word 128, 32, 100, - 30, 124

.text
.global main

main:   PUSH { r4, lr }
        MOV r0, # 5
        MOV r1, # 0
        LDR r2, = var2

bucle:  LDR r3, [ r2 ] , # 4
        ADD r1, r1, r3
        SUBS r0, r0, #1
        BNE bucle

        LDR r0, = var1
        BL printf

        POP { r4, lr }
        BX lr
