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
glabel func_80048C18
    /* 80048C18 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 80048C1C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80048C20 AFA40020 */ sw $a0, 0x20($sp)
    /* 80048C24 0C0123DE */ jal __osSiGetAccess
    /* 80048C28 AFA0001C */ sw $zero, 0x1C($sp)
    /* 80048C2C 3C0E800D */ lui $t6, %hi(D_800D31A0)
    /* 80048C30 91CE31A0 */ lbu $t6, %lo(D_800D31A0)($t6)
    /* 80048C34 24010001 */ addiu $at, $zero, 0x1
    /* 80048C38 11C1000C */ beq $t6, $at, .L80048C6C
    /* 80048C3C 00000000 */ nop
    /* 80048C40 0C012361 */ jal func_80048D84
    /* 80048C44 00000000 */ nop
    /* 80048C48 3C05800D */ lui $a1, %hi(D_800D3160)
    /* 80048C4C 24A53160 */ addiu $a1, $a1, %lo(D_800D3160)
    /* 80048C50 0C01239E */ jal __osSiRawStartDma
    /* 80048C54 24040001 */ addiu $a0, $zero, 0x1
    /* 80048C58 AFA2001C */ sw $v0, 0x1C($sp)
    /* 80048C5C 8FA40020 */ lw $a0, 0x20($sp)
    /* 80048C60 00002825 */ move $a1, $zero
    /* 80048C64 0C0104AE */ jal osRecvMesg
    /* 80048C68 24060001 */ addiu $a2, $zero, 0x1
.L80048C6C:
    /* 80048C6C AFA00018 */ sw $zero, 0x18($sp)
.L80048C70:
    /* 80048C70 8FB80018 */ lw $t8, 0x18($sp)
    /* 80048C74 8FA80018 */ lw $t0, 0x18($sp)
    /* 80048C78 3C01800D */ lui $at, %hi(D_800D3160)
    /* 80048C7C 0018C880 */ sll $t9, $t8, 2
    /* 80048C80 00390821 */ addu $at, $at, $t9
    /* 80048C84 240F00FF */ addiu $t7, $zero, 0xFF
    /* 80048C88 AC2F3160 */ sw $t7, %lo(D_800D3160)($at)
    /* 80048C8C 25090001 */ addiu $t1, $t0, 0x1
    /* 80048C90 29210010 */ slti $at, $t1, 0x10
    /* 80048C94 1420FFF6 */ bnez $at, .L80048C70
    /* 80048C98 AFA90018 */ sw $t1, 0x18($sp)
    /* 80048C9C 3C01800D */ lui $at, %hi(D_800D319C)
    /* 80048CA0 3C05800D */ lui $a1, %hi(D_800D3160)
    /* 80048CA4 AC20319C */ sw $zero, %lo(D_800D319C)($at)
    /* 80048CA8 24A53160 */ addiu $a1, $a1, %lo(D_800D3160)
    /* 80048CAC 0C01239E */ jal __osSiRawStartDma
    /* 80048CB0 00002025 */ move $a0, $zero
    /* 80048CB4 240A0001 */ addiu $t2, $zero, 0x1
    /* 80048CB8 3C01800D */ lui $at, %hi(D_800D31A0)
    /* 80048CBC AFA2001C */ sw $v0, 0x1C($sp)
    /* 80048CC0 0C0123EF */ jal func_80048FBC
    /* 80048CC4 A02A31A0 */ sb $t2, %lo(D_800D31A0)($at)
    /* 80048CC8 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80048CCC 8FA2001C */ lw $v0, 0x1C($sp)
    /* 80048CD0 27BD0020 */ addiu $sp, $sp, 0x20
    /* 80048CD4 03E00008 */ jr $ra
    /* 80048CD8 00000000 */ nop
