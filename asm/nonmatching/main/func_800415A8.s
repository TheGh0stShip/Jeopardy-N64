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
glabel func_800415A8
    /* 800415A8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 800415AC AFBF001C */ sw $ra, 0x1C($sp)
    /* 800415B0 AFA40028 */ sw $a0, 0x28($sp)
    /* 800415B4 AFA5002C */ sw $a1, 0x2C($sp)
    /* 800415B8 AFA60030 */ sw $a2, 0x30($sp)
    /* 800415BC 0C00FF3A */ jal __osDisableInt
    /* 800415C0 AFB00018 */ sw $s0, 0x18($sp)
    /* 800415C4 8FAE0028 */ lw $t6, 0x28($sp)
    /* 800415C8 3C18800D */ lui $t8, %hi(D_800D2EC0)
    /* 800415CC 8FA8002C */ lw $t0, 0x2C($sp)
    /* 800415D0 27182EC0 */ addiu $t8, $t8, %lo(D_800D2EC0)
    /* 800415D4 000E78C0 */ sll $t7, $t6, 3
    /* 800415D8 01F8C821 */ addu $t9, $t7, $t8
    /* 800415DC AFB90020 */ sw $t9, 0x20($sp)
    /* 800415E0 AF280000 */ sw $t0, 0x0($t9)
    /* 800415E4 8FAA0020 */ lw $t2, 0x20($sp)
    /* 800415E8 8FA90030 */ lw $t1, 0x30($sp)
    /* 800415EC 00408025 */ move $s0, $v0
    /* 800415F0 02002025 */ move $a0, $s0
    /* 800415F4 0C00FF42 */ jal func_8003FD08
    /* 800415F8 AD490004 */ sw $t1, 0x4($t2)
    /* 800415FC 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80041600 8FB00018 */ lw $s0, 0x18($sp)
    /* 80041604 27BD0028 */ addiu $sp, $sp, 0x28
    /* 80041608 03E00008 */ jr $ra
    /* 8004160C 00000000 */ nop
    /* 80041610 00000000 */ nop
    /* 80041614 00000000 */ nop
