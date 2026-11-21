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
glabel func_8003E158
    /* 8003E158 00801025 */ move $v0, $a0
    /* 8003E15C 00A01825 */ move $v1, $a1
    /* 8003E160 18C00018 */ blez $a2, .L8003E1C4
    /* 8003E164 00003825 */ move $a3, $zero
    /* 8003E168 30C50003 */ andi $a1, $a2, 0x3
    /* 8003E16C 10A00009 */ beqz $a1, .L8003E194
    /* 8003E170 00A02025 */ move $a0, $a1
.L8003E174:
    /* 8003E174 904E0000 */ lbu $t6, 0x0($v0)
    /* 8003E178 24E70001 */ addiu $a3, $a3, 0x1
    /* 8003E17C 24630001 */ addiu $v1, $v1, 0x1
    /* 8003E180 24420001 */ addiu $v0, $v0, 0x1
    /* 8003E184 1487FFFB */ bne $a0, $a3, .L8003E174
    /* 8003E188 A06EFFFF */ sb $t6, -0x1($v1)
    /* 8003E18C 10E6000D */ beq $a3, $a2, .L8003E1C4
    /* 8003E190 00000000 */ nop
.L8003E194:
    /* 8003E194 904F0000 */ lbu $t7, 0x0($v0)
    /* 8003E198 24E70004 */ addiu $a3, $a3, 0x4
    /* 8003E19C 24630004 */ addiu $v1, $v1, 0x4
    /* 8003E1A0 A06FFFFC */ sb $t7, -0x4($v1)
    /* 8003E1A4 90580001 */ lbu $t8, 0x1($v0)
    /* 8003E1A8 24420004 */ addiu $v0, $v0, 0x4
    /* 8003E1AC A078FFFD */ sb $t8, -0x3($v1)
    /* 8003E1B0 9059FFFE */ lbu $t9, -0x2($v0)
    /* 8003E1B4 A079FFFE */ sb $t9, -0x2($v1)
    /* 8003E1B8 9048FFFF */ lbu $t0, -0x1($v0)
    /* 8003E1BC 14E6FFF5 */ bne $a3, $a2, .L8003E194
    /* 8003E1C0 A068FFFF */ sb $t0, -0x1($v1)
.L8003E1C4:
    /* 8003E1C4 03E00008 */ jr $ra
    /* 8003E1C8 00000000 */ nop
    /* 8003E1CC 00000000 */ nop
    /* 8003E1D0 00000000 */ nop
    /* 8003E1D4 00000000 */ nop
