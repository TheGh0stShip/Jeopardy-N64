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
glabel func_8004C528
    /* 8004C528 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004C52C AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004C530 AFA40028 */ sw $a0, 0x28($sp)
    /* 8004C534 0C00FF3A */ jal __osDisableInt
    /* 8004C538 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004C53C 93AE002B */ lbu $t6, 0x2B($sp)
    /* 8004C540 00408025 */ move $s0, $v0
    /* 8004C544 11C00007 */ beqz $t6, .L8004C564
    /* 8004C548 00000000 */ nop
    /* 8004C54C 3C0F8007 */ lui $t7, %hi(D_8007246C)
    /* 8004C550 8DEF246C */ lw $t7, %lo(D_8007246C)($t7)
    /* 8004C554 95F80000 */ lhu $t8, 0x0($t7)
    /* 8004C558 37190020 */ ori $t9, $t8, 0x20
    /* 8004C55C 10000007 */ b .L8004C57C
    /* 8004C560 A5F90000 */ sh $t9, 0x0($t7)
.L8004C564:
    /* 8004C564 3C088007 */ lui $t0, %hi(D_8007246C)
    /* 8004C568 8D08246C */ lw $t0, %lo(D_8007246C)($t0)
    /* 8004C56C 2401FFDF */ addiu $at, $zero, -0x21
    /* 8004C570 95090000 */ lhu $t1, 0x0($t0)
    /* 8004C574 01215024 */ and $t2, $t1, $at
    /* 8004C578 A50A0000 */ sh $t2, 0x0($t0)
.L8004C57C:
    /* 8004C57C 0C00FF42 */ jal func_8003FD08
    /* 8004C580 02002025 */ move $a0, $s0
    /* 8004C584 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004C588 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004C58C 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8004C590 03E00008 */ jr $ra
    /* 8004C594 00000000 */ nop
