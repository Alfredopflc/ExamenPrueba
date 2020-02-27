.data
var1: .asciz " %d\ n"
.text
.global main

main: push { r4, lr }

      MOV r0, # 1
      MOV r1, # 2
      MOV r2, # 3
      MOV r3, # 4

      MOV r4, # 5
      PUSH { r4 }

      BL poly3

      ADD sp, # 4

      MOV r1, r0
      LDR r0, = var1
      BL printf

      MOV r0, # 1
      MOV r1, # -1
      MOV r2, # 1
      MOV r3, # -1
      MOV r4, # 8
      PUSH { r4 }
      BL poly3
      ADD sp, # 4

      MOV r1, r0
      LDR r0, = var1
      BL printf

      MOV r0, # 2
      MOV r1, # 0
      MOV r2, # 0
      MOV r3, # 0
      MOV r4, # 8
      PUSH { r4 }
      BL poly3
      ADD sp, # 4
      MOV r1, r0
      LDR r0, = var1
      BL printf

      POP { r4, lr }
      BX lr
      .equ param5, 4 *1 
poly3:PUSH { r4 } 
      LDR r4, [ sp, # param5 ] 
      SMLABB r3, r2, r4, r3 
      SMULBB r2, r4, r4 
      SMLABB r3, r1, r2, r3 
      SMULBB r2, r2, r4 
      SMLABB r0, r0, r2, r3 
      POP { r4 } 
      BX lr 