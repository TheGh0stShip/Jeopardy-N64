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
glabel func_80041C1C
    /* 80041C1C 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 80041C20 24020001 */ addiu $v0, $zero, 0x1
    /* 80041C24 AFBF0014 */ sw $ra, 0x14($sp)
    /* 80041C28 10A20027 */ beq $a1, $v0, .L80041CC8
    /* 80041C2C 00803825 */ move $a3, $a0
    /* 80041C30 24010003 */ addiu $at, $zero, 0x3
    /* 80041C34 10A10007 */ beq $a1, $at, .L80041C54
    /* 80041C38 24010004 */ addiu $at, $zero, 0x4
    /* 80041C3C 10A1000D */ beq $a1, $at, .L80041C74
    /* 80041C40 24010009 */ addiu $at, $zero, 0x9
    /* 80041C44 50A10017 */ beql $a1, $at, .L80041CA4
    /* 80041C48 8CE40000 */ lw $a0, 0x0($a3)
    /* 80041C4C 10000021 */ b .L80041CD4
    /* 80041C50 8CE40000 */ lw $a0, 0x0($a3)
.L80041C54:
    /* 80041C54 8CE20040 */ lw $v0, 0x40($a3)
    /* 80041C58 50400004 */ beql $v0, $zero, .L80041C6C
    /* 80041C5C ACE6003C */ sw $a2, 0x3C($a3)
    /* 80041C60 10000002 */ b .L80041C6C
    /* 80041C64 AC460000 */ sw $a2, 0x0($v0)
    /* 80041C68 ACE6003C */ sw $a2, 0x3C($a3)
.L80041C6C:
    /* 80041C6C 1000001E */ b .L80041CE8
    /* 80041C70 ACE60040 */ sw $a2, 0x40($a3)
.L80041C74:
    /* 80041C74 8CE40000 */ lw $a0, 0x0($a3)
    /* 80041C78 ACE20038 */ sw $v0, 0x38($a3)
    /* 80041C7C ACE00048 */ sw $zero, 0x48($a3)
    /* 80041C80 10800019 */ beqz $a0, .L80041CE8
    /* 80041C84 A4E2001A */ sh $v0, 0x1A($a3)
    /* 80041C88 8C990008 */ lw $t9, 0x8($a0)
    /* 80041C8C 24050004 */ addiu $a1, $zero, 0x4
    /* 80041C90 0320F809 */ jalr $t9
    /* 80041C94 00000000 */ nop
    /* 80041C98 10000014 */ b .L80041CEC
    /* 80041C9C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80041CA0 8CE40000 */ lw $a0, 0x0($a3)
.L80041CA4:
    /* 80041CA4 ACE20048 */ sw $v0, 0x48($a3)
    /* 80041CA8 50800010 */ beql $a0, $zero, .L80041CEC
    /* 80041CAC 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80041CB0 8C990008 */ lw $t9, 0x8($a0)
    /* 80041CB4 24050009 */ addiu $a1, $zero, 0x9
    /* 80041CB8 0320F809 */ jalr $t9
    /* 80041CBC 00000000 */ nop
    /* 80041CC0 1000000A */ b .L80041CEC
    /* 80041CC4 8FBF0014 */ lw $ra, 0x14($sp)
.L80041CC8:
    /* 80041CC8 10000007 */ b .L80041CE8
    /* 80041CCC ACE60000 */ sw $a2, 0x0($a3)
    /* 80041CD0 8CE40000 */ lw $a0, 0x0($a3)
.L80041CD4:
    /* 80041CD4 50800005 */ beql $a0, $zero, .L80041CEC
    /* 80041CD8 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80041CDC 8C990008 */ lw $t9, 0x8($a0)
    /* 80041CE0 0320F809 */ jalr $t9
    /* 80041CE4 00000000 */ nop
.L80041CE8:
    /* 80041CE8 8FBF0014 */ lw $ra, 0x14($sp)
.L80041CEC:
    /* 80041CEC 27BD0018 */ addiu $sp, $sp, 0x18
    /* 80041CF0 00001025 */ move $v0, $zero
    /* 80041CF4 03E00008 */ jr $ra
    /* 80041CF8 00000000 */ nop
