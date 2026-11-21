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
glabel func_8004C348
    /* 8004C348 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004C34C AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004C350 0C00FF3A */ jal __osDisableInt
    /* 8004C354 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004C358 3C0E8007 */ lui $t6, %hi(D_8007246C)
    /* 8004C35C 8DCE246C */ lw $t6, %lo(D_8007246C)($t6)
    /* 8004C360 00408025 */ move $s0, $v0
    /* 8004C364 02002025 */ move $a0, $s0
    /* 8004C368 8DCF0004 */ lw $t7, 0x4($t6)
    /* 8004C36C 0C00FF42 */ jal func_8003FD08
    /* 8004C370 AFAF0020 */ sw $t7, 0x20($sp)
    /* 8004C374 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004C378 8FA20020 */ lw $v0, 0x20($sp)
    /* 8004C37C 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004C380 03E00008 */ jr $ra
    /* 8004C384 27BD0028 */ addiu $sp, $sp, 0x28
