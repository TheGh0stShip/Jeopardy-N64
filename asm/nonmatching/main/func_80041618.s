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
glabel func_80041618
    /* 80041618 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004161C AFBF001C */ sw $ra, 0x1C($sp)
    /* 80041620 AFA40028 */ sw $a0, 0x28($sp)
    /* 80041624 0C00FF3A */ jal __osDisableInt
    /* 80041628 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004162C 3C0E8007 */ lui $t6, %hi(D_80072348)
    /* 80041630 8DCE2348 */ lw $t6, %lo(D_80072348)($t6)
    /* 80041634 8FAF0028 */ lw $t7, 0x28($sp)
    /* 80041638 00408025 */ move $s0, $v0
    /* 8004163C 3C018007 */ lui $at, %hi(D_80072348)
    /* 80041640 01CFC025 */ or $t8, $t6, $t7
    /* 80041644 AC382348 */ sw $t8, %lo(D_80072348)($at)
    /* 80041648 0C00FF42 */ jal func_8003FD08
    /* 8004164C 02002025 */ move $a0, $s0
    /* 80041650 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80041654 8FB00018 */ lw $s0, 0x18($sp)
    /* 80041658 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8004165C 03E00008 */ jr $ra
    /* 80041660 00000000 */ nop
    /* 80041664 00000000 */ nop
