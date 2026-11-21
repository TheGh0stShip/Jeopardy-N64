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
glabel func_8004403C
    /* 8004403C 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 80044040 AFBF001C */ sw $ra, 0x1C($sp)
    /* 80044044 AFA40020 */ sw $a0, 0x20($sp)
    /* 80044048 8C840000 */ lw $a0, 0x0($a0)
    /* 8004404C 8FAF0030 */ lw $t7, 0x30($sp)
    /* 80044050 AFA60028 */ sw $a2, 0x28($sp)
    /* 80044054 AFAF0010 */ sw $t7, 0x10($sp)
    /* 80044058 8C990004 */ lw $t9, 0x4($a0)
    /* 8004405C 0320F809 */ jalr $t9
    /* 80044060 00000000 */ nop
    /* 80044064 8FA60028 */ lw $a2, 0x28($sp)
    /* 80044068 3C030800 */ lui $v1, 0x800
    /* 8004406C 3C0A0440 */ lui $t2, 0x440
    /* 80044070 0006C040 */ sll $t8, $a2, 1
    /* 80044074 00065880 */ sll $t3, $a2, 2
    /* 80044078 3308FFFF */ andi $t0, $t8, 0xFFFF
    /* 8004407C 354A0580 */ ori $t2, $t2, 0x580
    /* 80044080 3C090D00 */ lui $t1, 0xD00
    /* 80044084 316CFFFF */ andi $t4, $t3, 0xFFFF
    /* 80044088 3C0D0600 */ lui $t5, 0x600
    /* 8004408C AC480004 */ sw $t0, 0x4($v0)
    /* 80044090 AC430000 */ sw $v1, 0x0($v0)
    /* 80044094 AC490008 */ sw $t1, 0x8($v0)
    /* 80044098 AC4A000C */ sw $t2, 0xC($v0)
    /* 8004409C AC4C0014 */ sw $t4, 0x14($v0)
    /* 800440A0 AC430010 */ sw $v1, 0x10($v0)
    /* 800440A4 AC4D0018 */ sw $t5, 0x18($v0)
    /* 800440A8 8FAE0020 */ lw $t6, 0x20($sp)
    /* 800440AC 24420020 */ addiu $v0, $v0, 0x20
    /* 800440B0 8DCF0014 */ lw $t7, 0x14($t6)
    /* 800440B4 AC4FFFFC */ sw $t7, -0x4($v0)
    /* 800440B8 8FBF001C */ lw $ra, 0x1C($sp)
    /* 800440BC 27BD0020 */ addiu $sp, $sp, 0x20
    /* 800440C0 03E00008 */ jr $ra
    /* 800440C4 00000000 */ nop
