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
glabel func_8004BD88
    /* 8004BD88 10C0001A */ beqz $a2, .L8004BDF4
    /* 8004BD8C 00A03825 */ move $a3, $a1
    /* 8004BD90 10850018 */ beq $a0, $a1, .L8004BDF4
    /* 8004BD94 00A4082A */ slt $at, $a1, $a0
    /* 8004BD98 54200008 */ bnel $at, $zero, .L8004BDBC
    /* 8004BD9C 28C10010 */ slti $at, $a2, 0x10
    /* 8004BDA0 00861020 */ add $v0, $a0, $a2
    /* 8004BDA4 00A2082A */ slt $at, $a1, $v0
    /* 8004BDA8 50200004 */ beql $at, $zero, .L8004BDBC
    /* 8004BDAC 28C10010 */ slti $at, $a2, 0x10
    /* 8004BDB0 1000005B */ b .L8004BF20
    /* 8004BDB4 28C10010 */ slti $at, $a2, 0x10
    /* 8004BDB8 28C10010 */ slti $at, $a2, 0x10
.L8004BDBC:
    /* 8004BDBC 14200005 */ bnez $at, .L8004BDD4
    /* 8004BDC0 00000000 */ nop
    /* 8004BDC4 30820003 */ andi $v0, $a0, 0x3
    /* 8004BDC8 30A30003 */ andi $v1, $a1, 0x3
    /* 8004BDCC 1043000B */ beq $v0, $v1, .L8004BDFC
    /* 8004BDD0 00000000 */ nop
.L8004BDD4:
    /* 8004BDD4 10C00007 */ beqz $a2, .L8004BDF4
    /* 8004BDD8 00000000 */ nop
    /* 8004BDDC 00861821 */ addu $v1, $a0, $a2
.L8004BDE0:
    /* 8004BDE0 80820000 */ lb $v0, 0x0($a0)
    /* 8004BDE4 24840001 */ addiu $a0, $a0, 0x1
    /* 8004BDE8 24A50001 */ addiu $a1, $a1, 0x1
    /* 8004BDEC 1483FFFC */ bne $a0, $v1, .L8004BDE0
    /* 8004BDF0 A0A2FFFF */ sb $v0, -0x1($a1)
.L8004BDF4:
    /* 8004BDF4 03E00008 */ jr $ra
    /* 8004BDF8 00E01025 */ move $v0, $a3
.L8004BDFC:
    /* 8004BDFC 10400018 */ beqz $v0, .L8004BE60
    /* 8004BE00 24010001 */ addiu $at, $zero, 0x1
    /* 8004BE04 1041000F */ beq $v0, $at, .L8004BE44
    /* 8004BE08 24010002 */ addiu $at, $zero, 0x2
    /* 8004BE0C 50410008 */ beql $v0, $at, .L8004BE30
    /* 8004BE10 84820000 */ lh $v0, 0x0($a0)
    /* 8004BE14 80820000 */ lb $v0, 0x0($a0)
    /* 8004BE18 24840001 */ addiu $a0, $a0, 0x1
    /* 8004BE1C 24A50001 */ addiu $a1, $a1, 0x1
    /* 8004BE20 24C6FFFF */ addiu $a2, $a2, -0x1
    /* 8004BE24 1000000E */ b .L8004BE60
    /* 8004BE28 A0A2FFFF */ sb $v0, -0x1($a1)
    /* 8004BE2C 84820000 */ lh $v0, 0x0($a0)
.L8004BE30:
    /* 8004BE30 24840002 */ addiu $a0, $a0, 0x2
    /* 8004BE34 24A50002 */ addiu $a1, $a1, 0x2
    /* 8004BE38 24C6FFFE */ addiu $a2, $a2, -0x2
    /* 8004BE3C 10000008 */ b .L8004BE60
    /* 8004BE40 A4A2FFFE */ sh $v0, -0x2($a1)
.L8004BE44:
    /* 8004BE44 80820000 */ lb $v0, 0x0($a0)
    /* 8004BE48 84830001 */ lh $v1, 0x1($a0)
    /* 8004BE4C 24840003 */ addiu $a0, $a0, 0x3
    /* 8004BE50 24A50003 */ addiu $a1, $a1, 0x3
    /* 8004BE54 24C6FFFD */ addiu $a2, $a2, -0x3
    /* 8004BE58 A0A2FFFD */ sb $v0, -0x3($a1)
    /* 8004BE5C A4A3FFFE */ sh $v1, -0x2($a1)
.L8004BE60:
    /* 8004BE60 28C10020 */ slti $at, $a2, 0x20
    /* 8004BE64 54200016 */ bnel $at, $zero, .L8004BEC0
    /* 8004BE68 28C10010 */ slti $at, $a2, 0x10
    /* 8004BE6C 8C820000 */ lw $v0, 0x0($a0)
    /* 8004BE70 8C830004 */ lw $v1, 0x4($a0)
    /* 8004BE74 8C880008 */ lw $t0, 0x8($a0)
    /* 8004BE78 8C89000C */ lw $t1, 0xC($a0)
    /* 8004BE7C 8C8A0010 */ lw $t2, 0x10($a0)
    /* 8004BE80 8C8B0014 */ lw $t3, 0x14($a0)
    /* 8004BE84 8C8C0018 */ lw $t4, 0x18($a0)
    /* 8004BE88 8C8D001C */ lw $t5, 0x1C($a0)
    /* 8004BE8C 24840020 */ addiu $a0, $a0, 0x20
    /* 8004BE90 24A50020 */ addiu $a1, $a1, 0x20
    /* 8004BE94 24C6FFE0 */ addiu $a2, $a2, -0x20
    /* 8004BE98 ACA2FFE0 */ sw $v0, -0x20($a1)
    /* 8004BE9C ACA3FFE4 */ sw $v1, -0x1C($a1)
    /* 8004BEA0 ACA8FFE8 */ sw $t0, -0x18($a1)
    /* 8004BEA4 ACA9FFEC */ sw $t1, -0x14($a1)
    /* 8004BEA8 ACAAFFF0 */ sw $t2, -0x10($a1)
    /* 8004BEAC ACABFFF4 */ sw $t3, -0xC($a1)
    /* 8004BEB0 ACACFFF8 */ sw $t4, -0x8($a1)
    /* 8004BEB4 1000FFEA */ b .L8004BE60
    /* 8004BEB8 ACADFFFC */ sw $t5, -0x4($a1)
.L8004BEBC:
    /* 8004BEBC 28C10010 */ slti $at, $a2, 0x10
.L8004BEC0:
    /* 8004BEC0 5420000E */ bnel $at, $zero, .L8004BEFC
    /* 8004BEC4 28C10004 */ slti $at, $a2, 0x4
    /* 8004BEC8 8C820000 */ lw $v0, 0x0($a0)
    /* 8004BECC 8C830004 */ lw $v1, 0x4($a0)
    /* 8004BED0 8C880008 */ lw $t0, 0x8($a0)
    /* 8004BED4 8C89000C */ lw $t1, 0xC($a0)
    /* 8004BED8 24840010 */ addiu $a0, $a0, 0x10
    /* 8004BEDC 24A50010 */ addiu $a1, $a1, 0x10
    /* 8004BEE0 24C6FFF0 */ addiu $a2, $a2, -0x10
    /* 8004BEE4 ACA2FFF0 */ sw $v0, -0x10($a1)
    /* 8004BEE8 ACA3FFF4 */ sw $v1, -0xC($a1)
    /* 8004BEEC ACA8FFF8 */ sw $t0, -0x8($a1)
    /* 8004BEF0 1000FFF2 */ b .L8004BEBC
    /* 8004BEF4 ACA9FFFC */ sw $t1, -0x4($a1)
.L8004BEF8:
    /* 8004BEF8 28C10004 */ slti $at, $a2, 0x4
.L8004BEFC:
    /* 8004BEFC 1420FFB5 */ bnez $at, .L8004BDD4
    /* 8004BF00 00000000 */ nop
    /* 8004BF04 8C820000 */ lw $v0, 0x0($a0)
    /* 8004BF08 24840004 */ addiu $a0, $a0, 0x4
    /* 8004BF0C 24A50004 */ addiu $a1, $a1, 0x4
    /* 8004BF10 24C6FFFC */ addiu $a2, $a2, -0x4
    /* 8004BF14 1000FFF8 */ b .L8004BEF8
    /* 8004BF18 ACA2FFFC */ sw $v0, -0x4($a1)
    /* 8004BF1C 28C10010 */ slti $at, $a2, 0x10
.L8004BF20:
    /* 8004BF20 00862020 */ add $a0, $a0, $a2
    /* 8004BF24 14200005 */ bnez $at, .L8004BF3C
    /* 8004BF28 00A62820 */ add $a1, $a1, $a2
    /* 8004BF2C 30820003 */ andi $v0, $a0, 0x3
    /* 8004BF30 30A30003 */ andi $v1, $a1, 0x3
    /* 8004BF34 1043000D */ beq $v0, $v1, .L8004BF6C
    /* 8004BF38 00000000 */ nop
.L8004BF3C:
    /* 8004BF3C 10C0FFAD */ beqz $a2, .L8004BDF4
    /* 8004BF40 00000000 */ nop
    /* 8004BF44 2484FFFF */ addiu $a0, $a0, -0x1
    /* 8004BF48 24A5FFFF */ addiu $a1, $a1, -0x1
    /* 8004BF4C 00861823 */ subu $v1, $a0, $a2
.L8004BF50:
    /* 8004BF50 80820000 */ lb $v0, 0x0($a0)
    /* 8004BF54 2484FFFF */ addiu $a0, $a0, -0x1
    /* 8004BF58 24A5FFFF */ addiu $a1, $a1, -0x1
    /* 8004BF5C 1483FFFC */ bne $a0, $v1, .L8004BF50
    /* 8004BF60 A0A20001 */ sb $v0, 0x1($a1)
    /* 8004BF64 03E00008 */ jr $ra
    /* 8004BF68 00E01025 */ move $v0, $a3
.L8004BF6C:
    /* 8004BF6C 10400018 */ beqz $v0, .L8004BFD0
    /* 8004BF70 24010003 */ addiu $at, $zero, 0x3
    /* 8004BF74 1041000F */ beq $v0, $at, .L8004BFB4
    /* 8004BF78 24010002 */ addiu $at, $zero, 0x2
    /* 8004BF7C 50410008 */ beql $v0, $at, .L8004BFA0
    /* 8004BF80 8482FFFE */ lh $v0, -0x2($a0)
    /* 8004BF84 8082FFFF */ lb $v0, -0x1($a0)
    /* 8004BF88 2484FFFF */ addiu $a0, $a0, -0x1
    /* 8004BF8C 24A5FFFF */ addiu $a1, $a1, -0x1
    /* 8004BF90 24C6FFFF */ addiu $a2, $a2, -0x1
    /* 8004BF94 1000000E */ b .L8004BFD0
    /* 8004BF98 A0A20000 */ sb $v0, 0x0($a1)
    /* 8004BF9C 8482FFFE */ lh $v0, -0x2($a0)
.L8004BFA0:
    /* 8004BFA0 2484FFFE */ addiu $a0, $a0, -0x2
    /* 8004BFA4 24A5FFFE */ addiu $a1, $a1, -0x2
    /* 8004BFA8 24C6FFFE */ addiu $a2, $a2, -0x2
    /* 8004BFAC 10000008 */ b .L8004BFD0
    /* 8004BFB0 A4A20000 */ sh $v0, 0x0($a1)
.L8004BFB4:
    /* 8004BFB4 8082FFFF */ lb $v0, -0x1($a0)
    /* 8004BFB8 8483FFFD */ lh $v1, -0x3($a0)
    /* 8004BFBC 2484FFFD */ addiu $a0, $a0, -0x3
    /* 8004BFC0 24A5FFFD */ addiu $a1, $a1, -0x3
    /* 8004BFC4 24C6FFFD */ addiu $a2, $a2, -0x3
    /* 8004BFC8 A0A20002 */ sb $v0, 0x2($a1)
    /* 8004BFCC A4A30000 */ sh $v1, 0x0($a1)
.L8004BFD0:
    /* 8004BFD0 28C10020 */ slti $at, $a2, 0x20
    /* 8004BFD4 54200016 */ bnel $at, $zero, .L8004C030
    /* 8004BFD8 28C10010 */ slti $at, $a2, 0x10
    /* 8004BFDC 8C82FFFC */ lw $v0, -0x4($a0)
    /* 8004BFE0 8C83FFF8 */ lw $v1, -0x8($a0)
    /* 8004BFE4 8C88FFF4 */ lw $t0, -0xC($a0)
    /* 8004BFE8 8C89FFF0 */ lw $t1, -0x10($a0)
    /* 8004BFEC 8C8AFFEC */ lw $t2, -0x14($a0)
    /* 8004BFF0 8C8BFFE8 */ lw $t3, -0x18($a0)
    /* 8004BFF4 8C8CFFE4 */ lw $t4, -0x1C($a0)
    /* 8004BFF8 8C8DFFE0 */ lw $t5, -0x20($a0)
    /* 8004BFFC 2484FFE0 */ addiu $a0, $a0, -0x20
    /* 8004C000 24A5FFE0 */ addiu $a1, $a1, -0x20
    /* 8004C004 24C6FFE0 */ addiu $a2, $a2, -0x20
    /* 8004C008 ACA2001C */ sw $v0, 0x1C($a1)
    /* 8004C00C ACA30018 */ sw $v1, 0x18($a1)
    /* 8004C010 ACA80014 */ sw $t0, 0x14($a1)
    /* 8004C014 ACA90010 */ sw $t1, 0x10($a1)
    /* 8004C018 ACAA000C */ sw $t2, 0xC($a1)
    /* 8004C01C ACAB0008 */ sw $t3, 0x8($a1)
    /* 8004C020 ACAC0004 */ sw $t4, 0x4($a1)
    /* 8004C024 1000FFEA */ b .L8004BFD0
    /* 8004C028 ACAD0000 */ sw $t5, 0x0($a1)
.L8004C02C:
    /* 8004C02C 28C10010 */ slti $at, $a2, 0x10
.L8004C030:
    /* 8004C030 5420000E */ bnel $at, $zero, .L8004C06C
    /* 8004C034 28C10004 */ slti $at, $a2, 0x4
    /* 8004C038 8C82FFFC */ lw $v0, -0x4($a0)
    /* 8004C03C 8C83FFF8 */ lw $v1, -0x8($a0)
    /* 8004C040 8C88FFF4 */ lw $t0, -0xC($a0)
    /* 8004C044 8C89FFF0 */ lw $t1, -0x10($a0)
    /* 8004C048 2484FFF0 */ addiu $a0, $a0, -0x10
    /* 8004C04C 24A5FFF0 */ addiu $a1, $a1, -0x10
    /* 8004C050 24C6FFF0 */ addiu $a2, $a2, -0x10
    /* 8004C054 ACA2000C */ sw $v0, 0xC($a1)
    /* 8004C058 ACA30008 */ sw $v1, 0x8($a1)
    /* 8004C05C ACA80004 */ sw $t0, 0x4($a1)
    /* 8004C060 1000FFF2 */ b .L8004C02C
    /* 8004C064 ACA90000 */ sw $t1, 0x0($a1)
.L8004C068:
    /* 8004C068 28C10004 */ slti $at, $a2, 0x4
.L8004C06C:
    /* 8004C06C 1420FFB3 */ bnez $at, .L8004BF3C
    /* 8004C070 00000000 */ nop
    /* 8004C074 8C82FFFC */ lw $v0, -0x4($a0)
    /* 8004C078 2484FFFC */ addiu $a0, $a0, -0x4
    /* 8004C07C 24A5FFFC */ addiu $a1, $a1, -0x4
    /* 8004C080 24C6FFFC */ addiu $a2, $a2, -0x4
    /* 8004C084 1000FFF8 */ b .L8004C068
    /* 8004C088 ACA20000 */ sw $v0, 0x0($a1)
