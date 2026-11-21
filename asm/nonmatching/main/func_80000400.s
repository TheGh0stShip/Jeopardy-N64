.macro glabel label
    .global \label
    \label:
.endm
.macro jlabel label
    \label:
.endm

.set noat
.set noreorder
.section .text
glabel func_80000400
    /* 80000400 3C1D803F */ lui $sp, 0x803F
    /* 80000404 37BDFFF0 */ ori $sp, $sp, 0xFFF0
    /* 80000408 3C088009 */ lui $t0, %hi(D_80092A08)
    /* 8000040C 25082A08 */ addiu $t0, $t0, %lo(D_80092A08)
    /* 80000410 3C098015 */ lui $t1, %hi(D_80156F68)
    /* 80000414 25296F68 */ addiu $t1, $t1, %lo(D_80156F68)
    /* 80000418 11090005 */ beq $t0, $t1, .L80000430
    /* 8000041C 00000000 */ nop
.L80000420:
    /* 80000420 25080004 */ addiu $t0, $t0, 0x4
    /* 80000424 0109082B */ sltu $at, $t0, $t1
    /* 80000428 1420FFFD */ bnez $at, .L80000420
    /* 8000042C AD00FFFC */ sw $zero, -0x4($t0)
.L80000430:
    /* 80000430 0C00D7D4 */ jal func_80035F50
    /* 80000434 00000000 */ nop
    /* 80000438 0001008D */ break 1, 2
