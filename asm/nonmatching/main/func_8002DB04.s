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
glabel func_8002DB04
    /* 8002DB04 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8002DB08 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8002DB0C AFBE0010 */ sw $fp, 0x10($sp)
    /* 8002DB10 03A0F021 */ addu $fp, $sp, $zero
    /* 8002DB14 3C028006 */ lui $v0, %hi(D_80058F00)
    /* 8002DB18 8C428F00 */ lw $v0, %lo(D_80058F00)($v0)
    /* 8002DB1C 24030001 */ addiu $v1, $zero, 0x1
    /* 8002DB20 14430007 */ bne $v0, $v1, .L8002DB40
    /* 8002DB24 00000000 */ nop
    /* 8002DB28 0C00A2EA */ jal func_80028BA8
    /* 8002DB2C 00000000 */ nop
    /* 8002DB30 00401821 */ addu $v1, $v0, $zero
    /* 8002DB34 00601021 */ addu $v0, $v1, $zero
    /* 8002DB38 0800B6E5 */ j .L8002DB94
    /* 8002DB3C 00000000 */ nop
.L8002DB40:
    /* 8002DB40 3C028006 */ lui $v0, %hi(D_80058F00)
    /* 8002DB44 8C428F00 */ lw $v0, %lo(D_80058F00)($v0)
    /* 8002DB48 14400007 */ bnez $v0, .L8002DB68
    /* 8002DB4C 00000000 */ nop
    /* 8002DB50 0C00A3CA */ jal func_80028F28
    /* 8002DB54 00000000 */ nop
    /* 8002DB58 00401821 */ addu $v1, $v0, $zero
    /* 8002DB5C 00601021 */ addu $v0, $v1, $zero
    /* 8002DB60 0800B6E5 */ j .L8002DB94
    /* 8002DB64 00000000 */ nop
.L8002DB68:
    /* 8002DB68 3C028006 */ lui $v0, %hi(D_80058F00)
    /* 8002DB6C 8C428F00 */ lw $v0, %lo(D_80058F00)($v0)
    /* 8002DB70 24030002 */ addiu $v1, $zero, 0x2
    /* 8002DB74 14430007 */ bne $v0, $v1, .L8002DB94
    /* 8002DB78 00000000 */ nop
    /* 8002DB7C 0C00A353 */ jal func_80028D4C
    /* 8002DB80 00000000 */ nop
    /* 8002DB84 00401821 */ addu $v1, $v0, $zero
    /* 8002DB88 00601021 */ addu $v0, $v1, $zero
    /* 8002DB8C 0800B6E5 */ j .L8002DB94
    /* 8002DB90 00000000 */ nop
.L8002DB94:
    /* 8002DB94 03C0E821 */ addu $sp, $fp, $zero
    /* 8002DB98 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8002DB9C 8FBE0010 */ lw $fp, 0x10($sp)
    /* 8002DBA0 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8002DBA4 03E00008 */ jr $ra
    /* 8002DBA8 00000000 */ nop
