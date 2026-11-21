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
glabel func_80041258
    /* 80041258 3C0EA460 */ lui $t6, %hi(D_A4600010)
    /* 8004125C 8DC60010 */ lw $a2, %lo(D_A4600010)($t6)
    /* 80041260 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 80041264 30CF0003 */ andi $t7, $a2, 0x3
    /* 80041268 11E00006 */ beqz $t7, .L80041284
    /* 8004126C 00000000 */ nop
.L80041270:
    /* 80041270 3C18A460 */ lui $t8, %hi(D_A4600010)
    /* 80041274 8F060010 */ lw $a2, %lo(D_A4600010)($t8)
    /* 80041278 30D90003 */ andi $t9, $a2, 0x3
    /* 8004127C 1720FFFC */ bnez $t9, .L80041270
    /* 80041280 00000000 */ nop
.L80041284:
    /* 80041284 3C088000 */ lui $t0, %hi(D_80000308)
    /* 80041288 8D080308 */ lw $t0, %lo(D_80000308)($t0)
    /* 8004128C 3C01A000 */ lui $at, 0xA000
    /* 80041290 00001025 */ move $v0, $zero
    /* 80041294 01044825 */ or $t1, $t0, $a0
    /* 80041298 01215025 */ or $t2, $t1, $at
    /* 8004129C 8D4B0000 */ lw $t3, 0x0($t2)
    /* 800412A0 27BD0008 */ addiu $sp, $sp, 0x8
    /* 800412A4 03E00008 */ jr $ra
    /* 800412A8 ACAB0000 */ sw $t3, 0x0($a1)
    /* 800412AC 00000000 */ nop
    /* 800412B0 00000000 */ nop
    /* 800412B4 00000000 */ nop
