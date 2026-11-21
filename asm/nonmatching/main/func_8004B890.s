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
glabel func_8004B890
    /* 8004B890 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8004B894 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004B898 AFA40020 */ sw $a0, 0x20($sp)
    /* 8004B89C 8C830260 */ lw $v1, 0x260($a0)
    /* 8004B8A0 AFA00018 */ sw $zero, 0x18($sp)
    /* 8004B8A4 AFA50024 */ sw $a1, 0x24($sp)
    /* 8004B8A8 24040001 */ addiu $a0, $zero, 0x1
    /* 8004B8AC 0C01214A */ jal osSetIntMask
    /* 8004B8B0 AFA3001C */ sw $v1, 0x1C($sp)
    /* 8004B8B4 8FA3001C */ lw $v1, 0x1C($sp)
    /* 8004B8B8 8FA50024 */ lw $a1, 0x24($sp)
    /* 8004B8BC 8FA60018 */ lw $a2, 0x18($sp)
    /* 8004B8C0 1060000F */ beqz $v1, .L8004B900
    /* 8004B8C4 00402025 */ move $a0, $v0
.L8004B8C8:
    /* 8004B8C8 5465000A */ bnel $v1, $a1, .L8004B8F4
    /* 8004B8CC 00603025 */ move $a2, $v1
    /* 8004B8D0 10C00004 */ beqz $a2, .L8004B8E4
    /* 8004B8D4 8FB90020 */ lw $t9, 0x20($sp)
    /* 8004B8D8 8CAF0000 */ lw $t7, 0x0($a1)
    /* 8004B8DC 10000008 */ b .L8004B900
    /* 8004B8E0 ACCF0000 */ sw $t7, 0x0($a2)
.L8004B8E4:
    /* 8004B8E4 8CB80000 */ lw $t8, 0x0($a1)
    /* 8004B8E8 10000005 */ b .L8004B900
    /* 8004B8EC AF380260 */ sw $t8, 0x260($t9)
    /* 8004B8F0 00603025 */ move $a2, $v1
.L8004B8F4:
    /* 8004B8F4 8C630000 */ lw $v1, 0x0($v1)
    /* 8004B8F8 1460FFF3 */ bnez $v1, .L8004B8C8
    /* 8004B8FC 00000000 */ nop
.L8004B900:
    /* 8004B900 0C01214A */ jal osSetIntMask
    /* 8004B904 00000000 */ nop
    /* 8004B908 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004B90C 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8004B910 03E00008 */ jr $ra
    /* 8004B914 00000000 */ nop
