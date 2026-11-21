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
glabel func_800485C8
    /* 800485C8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 800485CC 3C0E8007 */ lui $t6, %hi(D_80071FB8)
    /* 800485D0 8DCE1FB8 */ lw $t6, %lo(D_80071FB8)($t6)
    /* 800485D4 AFBF001C */ sw $ra, 0x1C($sp)
    /* 800485D8 AFA40028 */ sw $a0, 0x28($sp)
    /* 800485DC AFA5002C */ sw $a1, 0x2C($sp)
    /* 800485E0 AFA60030 */ sw $a2, 0x30($sp)
    /* 800485E4 AFA70034 */ sw $a3, 0x34($sp)
    /* 800485E8 AFB10018 */ sw $s1, 0x18($sp)
    /* 800485EC 15C00003 */ bnez $t6, .L800485FC
    /* 800485F0 AFB00014 */ sw $s0, 0x14($sp)
    /* 800485F4 10000032 */ b .L800486C0
    /* 800485F8 2402FFFF */ addiu $v0, $zero, -0x1
.L800485FC:
    /* 800485FC 8FAF0030 */ lw $t7, 0x30($sp)
    /* 80048600 15E00005 */ bnez $t7, .L80048618
    /* 80048604 00000000 */ nop
    /* 80048608 8FB90028 */ lw $t9, 0x28($sp)
    /* 8004860C 2418000B */ addiu $t8, $zero, 0xB
    /* 80048610 10000004 */ b .L80048624
    /* 80048614 A7380000 */ sh $t8, 0x0($t9)
.L80048618:
    /* 80048618 8FA90028 */ lw $t1, 0x28($sp)
    /* 8004861C 2408000C */ addiu $t0, $zero, 0xC
    /* 80048620 A5280000 */ sh $t0, 0x0($t1)
.L80048624:
    /* 80048624 8FAA002C */ lw $t2, 0x2C($sp)
    /* 80048628 8FAB0028 */ lw $t3, 0x28($sp)
    /* 8004862C 24010001 */ addiu $at, $zero, 0x1
    /* 80048630 A16A0002 */ sb $t2, 0x2($t3)
    /* 80048634 8FAD0028 */ lw $t5, 0x28($sp)
    /* 80048638 8FAC0040 */ lw $t4, 0x40($sp)
    /* 8004863C ADAC0004 */ sw $t4, 0x4($t5)
    /* 80048640 8FAF0028 */ lw $t7, 0x28($sp)
    /* 80048644 8FAE0038 */ lw $t6, 0x38($sp)
    /* 80048648 ADEE0008 */ sw $t6, 0x8($t7)
    /* 8004864C 8FB90028 */ lw $t9, 0x28($sp)
    /* 80048650 8FB80034 */ lw $t8, 0x34($sp)
    /* 80048654 AF38000C */ sw $t8, 0xC($t9)
    /* 80048658 8FA90028 */ lw $t1, 0x28($sp)
    /* 8004865C 8FA8003C */ lw $t0, 0x3C($sp)
    /* 80048660 AD280010 */ sw $t0, 0x10($t1)
    /* 80048664 8FAA0028 */ lw $t2, 0x28($sp)
    /* 80048668 AD400014 */ sw $zero, 0x14($t2)
    /* 8004866C 8FAB002C */ lw $t3, 0x2C($sp)
    /* 80048670 1561000A */ bne $t3, $at, .L8004869C
    /* 80048674 00000000 */ nop
    /* 80048678 0C0121B6 */ jal osPiGetCmdQueue
    /* 8004867C 00000000 */ nop
    /* 80048680 00408825 */ move $s1, $v0
    /* 80048684 02202025 */ move $a0, $s1
    /* 80048688 8FA50028 */ lw $a1, 0x28($sp)
    /* 8004868C 0C0121C2 */ jal osJamMesg
    /* 80048690 00003025 */ move $a2, $zero
    /* 80048694 10000009 */ b .L800486BC
    /* 80048698 00408025 */ move $s0, $v0
.L8004869C:
    /* 8004869C 0C0121B6 */ jal osPiGetCmdQueue
    /* 800486A0 00000000 */ nop
    /* 800486A4 00408825 */ move $s1, $v0
    /* 800486A8 02202025 */ move $a0, $s1
    /* 800486AC 8FA50028 */ lw $a1, 0x28($sp)
    /* 800486B0 0C010516 */ jal osSendMesg
    /* 800486B4 00003025 */ move $a2, $zero
    /* 800486B8 00408025 */ move $s0, $v0
.L800486BC:
    /* 800486BC 02001025 */ move $v0, $s0
.L800486C0:
    /* 800486C0 8FBF001C */ lw $ra, 0x1C($sp)
    /* 800486C4 8FB00014 */ lw $s0, 0x14($sp)
    /* 800486C8 8FB10018 */ lw $s1, 0x18($sp)
    /* 800486CC 03E00008 */ jr $ra
    /* 800486D0 27BD0028 */ addiu $sp, $sp, 0x28
    /* 800486D4 00000000 */ nop
