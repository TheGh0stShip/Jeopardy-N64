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
glabel func_8004C1C8
    /* 8004C1C8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004C1CC AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004C1D0 0C00FF3A */ jal __osDisableInt
    /* 8004C1D4 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004C1D8 3C0E8007 */ lui $t6, %hi(D_80072468)
    /* 8004C1DC 8DCE2468 */ lw $t6, %lo(D_80072468)($t6)
    /* 8004C1E0 00408025 */ move $s0, $v0
    /* 8004C1E4 02002025 */ move $a0, $s0
    /* 8004C1E8 8DCF0004 */ lw $t7, 0x4($t6)
    /* 8004C1EC 0C00FF42 */ jal func_8003FD08
    /* 8004C1F0 AFAF0020 */ sw $t7, 0x20($sp)
    /* 8004C1F4 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004C1F8 8FA20020 */ lw $v0, 0x20($sp)
    /* 8004C1FC 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004C200 03E00008 */ jr $ra
    /* 8004C204 27BD0028 */ addiu $sp, $sp, 0x28
