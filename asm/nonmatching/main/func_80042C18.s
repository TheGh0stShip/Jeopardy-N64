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
glabel func_80042C18
    /* 80042C18 24AEFFFF */ addiu $t6, $a1, -0x1
    /* 80042C1C 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 80042C20 2DC10009 */ sltiu $at, $t6, 0x9
    /* 80042C24 AFBF0014 */ sw $ra, 0x14($sp)
    /* 80042C28 1020002B */ beqz $at, .L80042CD8
    /* 80042C2C 00803825 */ move $a3, $a0
    /* 80042C30 000E7080 */ sll $t6, $t6, 2
    /* 80042C34 3C018000 */ lui $at, %hi(jtbl_80001E88)
    /* 80042C38 002E0821 */ addu $at, $at, $t6
    /* 80042C3C 8C2E1E88 */ lw $t6, %lo(jtbl_80001E88)($at)
    /* 80042C40 01C00008 */ jr $t6
    /* 80042C44 00000000 */ nop
.L80042C48:
    /* 80042C48 10000029 */ b .L80042CF0
    /* 80042C4C ACE60000 */ sw $a2, 0x0($a3)
.L80042C50:
    /* 80042C50 8CE40000 */ lw $a0, 0x0($a3)
    /* 80042C54 44802000 */ mtc1 $zero, $f4
    /* 80042C58 240F0001 */ addiu $t7, $zero, 0x1
    /* 80042C5C ACEF0024 */ sw $t7, 0x24($a3)
    /* 80042C60 ACE00030 */ sw $zero, 0x30($a3)
    /* 80042C64 ACE0001C */ sw $zero, 0x1C($a3)
    /* 80042C68 10800021 */ beqz $a0, .L80042CF0
    /* 80042C6C E4E40020 */ swc1 $f4, 0x20($a3)
    /* 80042C70 8C990008 */ lw $t9, 0x8($a0)
    /* 80042C74 24050004 */ addiu $a1, $zero, 0x4
    /* 80042C78 00003025 */ move $a2, $zero
    /* 80042C7C 0320F809 */ jalr $t9
    /* 80042C80 00000000 */ nop
    /* 80042C84 1000001B */ b .L80042CF4
    /* 80042C88 8FBF0014 */ lw $ra, 0x14($sp)
.L80042C8C:
    /* 80042C8C 8CE40000 */ lw $a0, 0x0($a3)
    /* 80042C90 24180001 */ addiu $t8, $zero, 0x1
    /* 80042C94 ACF80030 */ sw $t8, 0x30($a3)
    /* 80042C98 50800016 */ beql $a0, $zero, .L80042CF4
    /* 80042C9C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80042CA0 8C990008 */ lw $t9, 0x8($a0)
    /* 80042CA4 24050009 */ addiu $a1, $zero, 0x9
    /* 80042CA8 00003025 */ move $a2, $zero
    /* 80042CAC 0320F809 */ jalr $t9
    /* 80042CB0 00000000 */ nop
    /* 80042CB4 1000000F */ b .L80042CF4
    /* 80042CB8 8FBF0014 */ lw $ra, 0x14($sp)
.L80042CBC:
    /* 80042CBC AFA6001C */ sw $a2, 0x1C($sp)
    /* 80042CC0 C7A6001C */ lwc1 $f6, 0x1C($sp)
    /* 80042CC4 1000000A */ b .L80042CF0
    /* 80042CC8 E4E60018 */ swc1 $f6, 0x18($a3)
.L80042CCC:
    /* 80042CCC 24080001 */ addiu $t0, $zero, 0x1
    /* 80042CD0 10000007 */ b .L80042CF0
    /* 80042CD4 ACE8001C */ sw $t0, 0x1C($a3)
.L80042CD8:
    /* 80042CD8 8CE40000 */ lw $a0, 0x0($a3)
    /* 80042CDC 50800005 */ beql $a0, $zero, .L80042CF4
    /* 80042CE0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80042CE4 8C990008 */ lw $t9, 0x8($a0)
    /* 80042CE8 0320F809 */ jalr $t9
    /* 80042CEC 00000000 */ nop
.L80042CF0:
    /* 80042CF0 8FBF0014 */ lw $ra, 0x14($sp)
.L80042CF4:
    /* 80042CF4 27BD0028 */ addiu $sp, $sp, 0x28
    /* 80042CF8 00001025 */ move $v0, $zero
    /* 80042CFC 03E00008 */ jr $ra
    /* 80042D00 00000000 */ nop
.section .rodata
.section .rodata.jtbl_80001E88, "a"
glabel jtbl_80001E88
    .word .L80042C48
    .word .L80042CD8
    .word .L80042CD8
    .word .L80042C50
    .word .L80042CD8
    .word .L80042CD8
    .word .L80042CBC
    .word .L80042CCC
    .word .L80042C8C
