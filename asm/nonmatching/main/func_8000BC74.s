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
glabel func_8000BC74
    /* 8000BC74 27BDFEC0 */ addiu $sp, $sp, -0x140
    /* 8000BC78 AFBF013C */ sw $ra, 0x13C($sp)
    /* 8000BC7C AFBE0138 */ sw $fp, 0x138($sp)
    /* 8000BC80 03A0F021 */ addu $fp, $sp, $zero
    /* 8000BC84 AFC40140 */ sw $a0, 0x140($fp)
    /* 8000BC88 AFC50144 */ sw $a1, 0x144($fp)
    /* 8000BC8C 27C2002C */ addiu $v0, $fp, 0x2C
    /* 8000BC90 3C018000 */ lui $at, %hi(D_80000674)
    /* 8000BC94 C4200674 */ lwc1 $f0, %lo(D_80000674)($at)
    /* 8000BC98 E7A00010 */ swc1 $f0, 0x10($sp)
    /* 8000BC9C 3C018000 */ lui $at, %hi(D_80000678)
    /* 8000BCA0 C4200678 */ lwc1 $f0, %lo(D_80000678)($at)
    /* 8000BCA4 E7A00014 */ swc1 $f0, 0x14($sp)
    /* 8000BCA8 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000BCAC C4600018 */ lwc1 $f0, 0x18($v1)
    /* 8000BCB0 E7A00018 */ swc1 $f0, 0x18($sp)
    /* 8000BCB4 8FC40144 */ lw $a0, 0x144($fp)
    /* 8000BCB8 00402821 */ addu $a1, $v0, $zero
    /* 8000BCBC 3C064204 */ lui $a2, 0x4204
    /* 8000BCC0 3C073FAA */ lui $a3, 0x3FAA
    /* 8000BCC4 34E7AAAB */ ori $a3, $a3, 0xAAAB
    /* 8000BCC8 0C01047A */ jal guPerspective
    /* 8000BCCC 00000000 */ nop
    /* 8000BCD0 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000BCD4 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000BCD8 24430008 */ addiu $v1, $v0, 0x8
    /* 8000BCDC 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000BCE0 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000BCE4 AFC20130 */ sw $v0, 0x130($fp)
    /* 8000BCE8 8FC20130 */ lw $v0, 0x130($fp)
    /* 8000BCEC 3C03BC00 */ lui $v1, 0xBC00
    /* 8000BCF0 3463000E */ ori $v1, $v1, 0xE
    /* 8000BCF4 AC430000 */ sw $v1, 0x0($v0)
    /* 8000BCF8 8FC20130 */ lw $v0, 0x130($fp)
    /* 8000BCFC 97C3002C */ lhu $v1, 0x2C($fp)
    /* 8000BD00 AC430004 */ sw $v1, 0x4($v0)
    /* 8000BD04 08002F7F */ j .L8000BDFC
    /* 8000BD08 00000000 */ nop
    /* 8000BD0C 3C02800D */ lui $v0, %hi(D_800D768C)
    /* 8000BD10 8C42768C */ lw $v0, %lo(D_800D768C)($v0)
    /* 8000BD14 AFC20028 */ sw $v0, 0x28($fp)
    /* 8000BD18 3C028005 */ lui $v0, %hi(D_800506F8)
    /* 8000BD1C 8C4206F8 */ lw $v0, %lo(D_800506F8)($v0)
    /* 8000BD20 240303E7 */ addiu $v1, $zero, 0x3E7
    /* 8000BD24 1043000C */ beq $v0, $v1, .L8000BD58
    /* 8000BD28 00000000 */ nop
    /* 8000BD2C 3C02800D */ lui $v0, %hi(D_800D768C)
    /* 8000BD30 8C42768C */ lw $v0, %lo(D_800D768C)($v0)
    /* 8000BD34 284301C3 */ slti $v1, $v0, 0x1C3
    /* 8000BD38 14600007 */ bnez $v1, .L8000BD58
    /* 8000BD3C 00000000 */ nop
    /* 8000BD40 240203E7 */ addiu $v0, $zero, 0x3E7
    /* 8000BD44 3C018005 */ lui $at, %hi(D_800506F8)
    /* 8000BD48 AC2206F8 */ sw $v0, %lo(D_800506F8)($at)
    /* 8000BD4C 24040023 */ addiu $a0, $zero, 0x23
    /* 8000BD50 0C00D67A */ jal func_800359E8
    /* 8000BD54 00000000 */ nop
.L8000BD58:
    /* 8000BD58 8FC20028 */ lw $v0, 0x28($fp)
    /* 8000BD5C 04410002 */ bgez $v0, .L8000BD68
    /* 8000BD60 00000000 */ nop
    /* 8000BD64 AFC00028 */ sw $zero, 0x28($fp)
.L8000BD68:
    /* 8000BD68 8FC20028 */ lw $v0, 0x28($fp)
    /* 8000BD6C 284302D1 */ slti $v1, $v0, 0x2D1
    /* 8000BD70 14600003 */ bnez $v1, .L8000BD80
    /* 8000BD74 00000000 */ nop
    /* 8000BD78 240202D0 */ addiu $v0, $zero, 0x2D0
    /* 8000BD7C AFC20028 */ sw $v0, 0x28($fp)
.L8000BD80:
    /* 8000BD80 8FC30144 */ lw $v1, 0x144($fp)
    /* 8000BD84 24620040 */ addiu $v0, $v1, 0x40
    /* 8000BD88 3C018005 */ lui $at, %hi(D_8004E214)
    /* 8000BD8C C420E214 */ lwc1 $f0, %lo(D_8004E214)($at)
    /* 8000BD90 E7A00010 */ swc1 $f0, 0x10($sp)
    /* 8000BD94 3C018005 */ lui $at, %hi(D_8004E218)
    /* 8000BD98 C420E218 */ lwc1 $f0, %lo(D_8004E218)($at)
    /* 8000BD9C E7A00014 */ swc1 $f0, 0x14($sp)
    /* 8000BDA0 3C018005 */ lui $at, %hi(D_8004E21C)
    /* 8000BDA4 C420E21C */ lwc1 $f0, %lo(D_8004E21C)($at)
    /* 8000BDA8 E7A00018 */ swc1 $f0, 0x18($sp)
    /* 8000BDAC 3C018005 */ lui $at, %hi(D_8004E220)
    /* 8000BDB0 C420E220 */ lwc1 $f0, %lo(D_8004E220)($at)
    /* 8000BDB4 E7A0001C */ swc1 $f0, 0x1C($sp)
    /* 8000BDB8 3C018005 */ lui $at, %hi(D_8004E224)
    /* 8000BDBC C420E224 */ lwc1 $f0, %lo(D_8004E224)($at)
    /* 8000BDC0 E7A00020 */ swc1 $f0, 0x20($sp)
    /* 8000BDC4 3C018005 */ lui $at, %hi(D_8004E228)
    /* 8000BDC8 C420E228 */ lwc1 $f0, %lo(D_8004E228)($at)
    /* 8000BDCC E7A00024 */ swc1 $f0, 0x24($sp)
    /* 8000BDD0 00402021 */ addu $a0, $v0, $zero
    /* 8000BDD4 3C058005 */ lui $a1, %hi(D_8004E208)
    /* 8000BDD8 8CA5E208 */ lw $a1, %lo(D_8004E208)($a1)
    /* 8000BDDC 3C068005 */ lui $a2, %hi(D_8004E20C)
    /* 8000BDE0 8CC6E20C */ lw $a2, %lo(D_8004E20C)($a2)
    /* 8000BDE4 3C078005 */ lui $a3, %hi(D_8004E210)
    /* 8000BDE8 8CE7E210 */ lw $a3, %lo(D_8004E210)($a3)
    /* 8000BDEC 0C0132D0 */ jal guLookAt
    /* 8000BDF0 00000000 */ nop
    /* 8000BDF4 08003057 */ j .L8000C15C
    /* 8000BDF8 00000000 */ nop
.L8000BDFC:
    /* 8000BDFC 3C02800E */ lui $v0, %hi(D_800E3B30)
    /* 8000BE00 8C423B30 */ lw $v0, %lo(D_800E3B30)($v0)
    /* 8000BE04 10400054 */ beqz $v0, .L8000BF58
    /* 8000BE08 00000000 */ nop
    /* 8000BE0C 3C01800E */ lui $at, %hi(D_800DFE18)
    /* 8000BE10 C420FE18 */ lwc1 $f0, %lo(D_800DFE18)($at)
    /* 8000BE14 3C01800E */ lui $at, %hi(D_800DFE1C)
    /* 8000BE18 C422FE1C */ lwc1 $f2, %lo(D_800DFE1C)($at)
    /* 8000BE1C 46020000 */ add.s $f0, $f0, $f2
    /* 8000BE20 3C01800E */ lui $at, %hi(D_800DFE20)
    /* 8000BE24 C422FE20 */ lwc1 $f2, %lo(D_800DFE20)($at)
    /* 8000BE28 46020000 */ add.s $f0, $f0, $f2
    /* 8000BE2C 44801000 */ mtc1 $zero, $f2
    /* 8000BE30 46020032 */ c.eq.s $f0, $f2
    /* 8000BE34 00000000 */ nop
    /* 8000BE38 45000022 */ bc1f .L8000BEC4
    /* 8000BE3C 00000000 */ nop
    /* 8000BE40 8FC30144 */ lw $v1, 0x144($fp)
    /* 8000BE44 24620040 */ addiu $v0, $v1, 0x40
    /* 8000BE48 3C03800E */ lui $v1, %hi(D_800E3B30)
    /* 8000BE4C 8C633B30 */ lw $v1, %lo(D_800E3B30)($v1)
    /* 8000BE50 3C06800E */ lui $a2, %hi(D_800E3B30)
    /* 8000BE54 8CC63B30 */ lw $a2, %lo(D_800E3B30)($a2)
    /* 8000BE58 3C07800E */ lui $a3, %hi(D_800E3B30)
    /* 8000BE5C 8CE73B30 */ lw $a3, %lo(D_800E3B30)($a3)
    /* 8000BE60 3C04800E */ lui $a0, %hi(D_800E3B30)
    /* 8000BE64 8C843B30 */ lw $a0, %lo(D_800E3B30)($a0)
    /* 8000BE68 C480000C */ lwc1 $f0, 0xC($a0)
    /* 8000BE6C E7A00010 */ swc1 $f0, 0x10($sp)
    /* 8000BE70 3C04800E */ lui $a0, %hi(D_800E3B30)
    /* 8000BE74 8C843B30 */ lw $a0, %lo(D_800E3B30)($a0)
    /* 8000BE78 C4800010 */ lwc1 $f0, 0x10($a0)
    /* 8000BE7C E7A00014 */ swc1 $f0, 0x14($sp)
    /* 8000BE80 3C04800E */ lui $a0, %hi(D_800E3B30)
    /* 8000BE84 8C843B30 */ lw $a0, %lo(D_800E3B30)($a0)
    /* 8000BE88 C4800014 */ lwc1 $f0, 0x14($a0)
    /* 8000BE8C E7A00018 */ swc1 $f0, 0x18($sp)
    /* 8000BE90 AFA0001C */ sw $zero, 0x1C($sp)
    /* 8000BE94 3C018000 */ lui $at, %hi(D_8000067C)
    /* 8000BE98 C420067C */ lwc1 $f0, %lo(D_8000067C)($at)
    /* 8000BE9C E7A00020 */ swc1 $f0, 0x20($sp)
    /* 8000BEA0 AFA00024 */ sw $zero, 0x24($sp)
    /* 8000BEA4 00402021 */ addu $a0, $v0, $zero
    /* 8000BEA8 8C650000 */ lw $a1, 0x0($v1)
    /* 8000BEAC 8CC60004 */ lw $a2, 0x4($a2)
    /* 8000BEB0 8CE70008 */ lw $a3, 0x8($a3)
    /* 8000BEB4 0C0132D0 */ jal guLookAt
    /* 8000BEB8 00000000 */ nop
    /* 8000BEBC 08002FD4 */ j .L8000BF50
    /* 8000BEC0 00000000 */ nop
.L8000BEC4:
    /* 8000BEC4 8FC30144 */ lw $v1, 0x144($fp)
    /* 8000BEC8 24620040 */ addiu $v0, $v1, 0x40
    /* 8000BECC 3C03800E */ lui $v1, %hi(D_800E3B30)
    /* 8000BED0 8C633B30 */ lw $v1, %lo(D_800E3B30)($v1)
    /* 8000BED4 3C06800E */ lui $a2, %hi(D_800E3B30)
    /* 8000BED8 8CC63B30 */ lw $a2, %lo(D_800E3B30)($a2)
    /* 8000BEDC 3C07800E */ lui $a3, %hi(D_800E3B30)
    /* 8000BEE0 8CE73B30 */ lw $a3, %lo(D_800E3B30)($a3)
    /* 8000BEE4 3C04800E */ lui $a0, %hi(D_800E3B30)
    /* 8000BEE8 8C843B30 */ lw $a0, %lo(D_800E3B30)($a0)
    /* 8000BEEC C480000C */ lwc1 $f0, 0xC($a0)
    /* 8000BEF0 E7A00010 */ swc1 $f0, 0x10($sp)
    /* 8000BEF4 3C04800E */ lui $a0, %hi(D_800E3B30)
    /* 8000BEF8 8C843B30 */ lw $a0, %lo(D_800E3B30)($a0)
    /* 8000BEFC C4800010 */ lwc1 $f0, 0x10($a0)
    /* 8000BF00 E7A00014 */ swc1 $f0, 0x14($sp)
    /* 8000BF04 3C04800E */ lui $a0, %hi(D_800E3B30)
    /* 8000BF08 8C843B30 */ lw $a0, %lo(D_800E3B30)($a0)
    /* 8000BF0C C4800014 */ lwc1 $f0, 0x14($a0)
    /* 8000BF10 E7A00018 */ swc1 $f0, 0x18($sp)
    /* 8000BF14 3C01800E */ lui $at, %hi(D_800DFE18)
    /* 8000BF18 C420FE18 */ lwc1 $f0, %lo(D_800DFE18)($at)
    /* 8000BF1C E7A0001C */ swc1 $f0, 0x1C($sp)
    /* 8000BF20 3C01800E */ lui $at, %hi(D_800DFE1C)
    /* 8000BF24 C420FE1C */ lwc1 $f0, %lo(D_800DFE1C)($at)
    /* 8000BF28 E7A00020 */ swc1 $f0, 0x20($sp)
    /* 8000BF2C 3C01800E */ lui $at, %hi(D_800DFE20)
    /* 8000BF30 C420FE20 */ lwc1 $f0, %lo(D_800DFE20)($at)
    /* 8000BF34 E7A00024 */ swc1 $f0, 0x24($sp)
    /* 8000BF38 00402021 */ addu $a0, $v0, $zero
    /* 8000BF3C 8C650000 */ lw $a1, 0x0($v1)
    /* 8000BF40 8CC60004 */ lw $a2, 0x4($a2)
    /* 8000BF44 8CE70008 */ lw $a3, 0x8($a3)
    /* 8000BF48 0C0132D0 */ jal guLookAt
    /* 8000BF4C 00000000 */ nop
.L8000BF50:
    /* 8000BF50 08003057 */ j .L8000C15C
    /* 8000BF54 00000000 */ nop
.L8000BF58:
    /* 8000BF58 27C20030 */ addiu $v0, $fp, 0x30
    /* 8000BF5C 00402021 */ addu $a0, $v0, $zero
    /* 8000BF60 00002821 */ addu $a1, $zero, $zero
    /* 8000BF64 00003021 */ addu $a2, $zero, $zero
    /* 8000BF68 3C07C47A */ lui $a3, 0xC47A
    /* 8000BF6C 0C00FC86 */ jal guTranslateF
    /* 8000BF70 00000000 */ nop
    /* 8000BF74 27C20070 */ addiu $v0, $fp, 0x70
    /* 8000BF78 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000BF7C 8FC60140 */ lw $a2, 0x140($fp)
    /* 8000BF80 8FC70140 */ lw $a3, 0x140($fp)
    /* 8000BF84 00402021 */ addu $a0, $v0, $zero
    /* 8000BF88 8C650018 */ lw $a1, 0x18($v1)
    /* 8000BF8C 8CC60018 */ lw $a2, 0x18($a2)
    /* 8000BF90 8CE70018 */ lw $a3, 0x18($a3)
    /* 8000BF94 0C00FBEE */ jal guScaleF
    /* 8000BF98 00000000 */ nop
    /* 8000BF9C 27C200B0 */ addiu $v0, $fp, 0xB0
    /* 8000BFA0 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000BFA4 8FC60140 */ lw $a2, 0x140($fp)
    /* 8000BFA8 8FC70140 */ lw $a3, 0x140($fp)
    /* 8000BFAC 00402021 */ addu $a0, $v0, $zero
    /* 8000BFB0 8C650028 */ lw $a1, 0x28($v1)
    /* 8000BFB4 8CC6002C */ lw $a2, 0x2C($a2)
    /* 8000BFB8 8CE70030 */ lw $a3, 0x30($a3)
    /* 8000BFBC 0C00FB86 */ jal guRotateRPYF
    /* 8000BFC0 00000000 */ nop
    /* 8000BFC4 27C20030 */ addiu $v0, $fp, 0x30
    /* 8000BFC8 27C30070 */ addiu $v1, $fp, 0x70
    /* 8000BFCC 27C60030 */ addiu $a2, $fp, 0x30
    /* 8000BFD0 00402021 */ addu $a0, $v0, $zero
    /* 8000BFD4 00602821 */ addu $a1, $v1, $zero
    /* 8000BFD8 0C0110F6 */ jal guMtxCatF
    /* 8000BFDC 00000000 */ nop
    /* 8000BFE0 27C20030 */ addiu $v0, $fp, 0x30
    /* 8000BFE4 27C300B0 */ addiu $v1, $fp, 0xB0
    /* 8000BFE8 27C60030 */ addiu $a2, $fp, 0x30
    /* 8000BFEC 00402021 */ addu $a0, $v0, $zero
    /* 8000BFF0 00602821 */ addu $a1, $v1, $zero
    /* 8000BFF4 0C0110F6 */ jal guMtxCatF
    /* 8000BFF8 00000000 */ nop
    /* 8000BFFC 27C200F0 */ addiu $v0, $fp, 0xF0
    /* 8000C000 00402021 */ addu $a0, $v0, $zero
    /* 8000C004 00002821 */ addu $a1, $zero, $zero
    /* 8000C008 3C063F80 */ lui $a2, 0x3F80
    /* 8000C00C 00003821 */ addu $a3, $zero, $zero
    /* 8000C010 0C00FC86 */ jal guTranslateF
    /* 8000C014 00000000 */ nop
    /* 8000C018 27C20070 */ addiu $v0, $fp, 0x70
    /* 8000C01C 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000C020 8FC60140 */ lw $a2, 0x140($fp)
    /* 8000C024 8FC70140 */ lw $a3, 0x140($fp)
    /* 8000C028 00402021 */ addu $a0, $v0, $zero
    /* 8000C02C 8C650018 */ lw $a1, 0x18($v1)
    /* 8000C030 8CC60018 */ lw $a2, 0x18($a2)
    /* 8000C034 8CE70018 */ lw $a3, 0x18($a3)
    /* 8000C038 0C00FBEE */ jal guScaleF
    /* 8000C03C 00000000 */ nop
    /* 8000C040 27C200B0 */ addiu $v0, $fp, 0xB0
    /* 8000C044 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000C048 8FC60140 */ lw $a2, 0x140($fp)
    /* 8000C04C 8FC70140 */ lw $a3, 0x140($fp)
    /* 8000C050 00402021 */ addu $a0, $v0, $zero
    /* 8000C054 8C650028 */ lw $a1, 0x28($v1)
    /* 8000C058 8CC6002C */ lw $a2, 0x2C($a2)
    /* 8000C05C 8CE70030 */ lw $a3, 0x30($a3)
    /* 8000C060 0C00FB86 */ jal guRotateRPYF
    /* 8000C064 00000000 */ nop
    /* 8000C068 27C200F0 */ addiu $v0, $fp, 0xF0
    /* 8000C06C 27C30070 */ addiu $v1, $fp, 0x70
    /* 8000C070 27C600F0 */ addiu $a2, $fp, 0xF0
    /* 8000C074 00402021 */ addu $a0, $v0, $zero
    /* 8000C078 00602821 */ addu $a1, $v1, $zero
    /* 8000C07C 0C0110F6 */ jal guMtxCatF
    /* 8000C080 00000000 */ nop
    /* 8000C084 27C200F0 */ addiu $v0, $fp, 0xF0
    /* 8000C088 27C300B0 */ addiu $v1, $fp, 0xB0
    /* 8000C08C 27C600F0 */ addiu $a2, $fp, 0xF0
    /* 8000C090 00402021 */ addu $a0, $v0, $zero
    /* 8000C094 00602821 */ addu $a1, $v1, $zero
    /* 8000C098 0C0110F6 */ jal guMtxCatF
    /* 8000C09C 00000000 */ nop
    /* 8000C0A0 8FC30144 */ lw $v1, 0x144($fp)
    /* 8000C0A4 24620040 */ addiu $v0, $v1, 0x40
    /* 8000C0A8 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000C0AC 84640010 */ lh $a0, 0x10($v1)
    /* 8000C0B0 44840000 */ mtc1 $a0, $f0
    /* 8000C0B4 46800020 */ cvt.s.w $f0, $f0
    /* 8000C0B8 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000C0BC 84640012 */ lh $a0, 0x12($v1)
    /* 8000C0C0 44841000 */ mtc1 $a0, $f2
    /* 8000C0C4 468010A0 */ cvt.s.w $f2, $f2
    /* 8000C0C8 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000C0CC 84640014 */ lh $a0, 0x14($v1)
    /* 8000C0D0 44842000 */ mtc1 $a0, $f4
    /* 8000C0D4 46802120 */ cvt.s.w $f4, $f4
    /* 8000C0D8 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000C0DC 84640010 */ lh $a0, 0x10($v1)
    /* 8000C0E0 44843000 */ mtc1 $a0, $f6
    /* 8000C0E4 468031A0 */ cvt.s.w $f6, $f6
    /* 8000C0E8 C7C80060 */ lwc1 $f8, 0x60($fp)
    /* 8000C0EC 46064180 */ add.s $f6, $f8, $f6
    /* 8000C0F0 E7A60010 */ swc1 $f6, 0x10($sp)
    /* 8000C0F4 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000C0F8 84640012 */ lh $a0, 0x12($v1)
    /* 8000C0FC 44843000 */ mtc1 $a0, $f6
    /* 8000C100 468031A0 */ cvt.s.w $f6, $f6
    /* 8000C104 C7C80064 */ lwc1 $f8, 0x64($fp)
    /* 8000C108 46064180 */ add.s $f6, $f8, $f6
    /* 8000C10C E7A60014 */ swc1 $f6, 0x14($sp)
    /* 8000C110 8FC30140 */ lw $v1, 0x140($fp)
    /* 8000C114 84640014 */ lh $a0, 0x14($v1)
    /* 8000C118 44843000 */ mtc1 $a0, $f6
    /* 8000C11C 468031A0 */ cvt.s.w $f6, $f6
    /* 8000C120 C7C80068 */ lwc1 $f8, 0x68($fp)
    /* 8000C124 46064180 */ add.s $f6, $f8, $f6
    /* 8000C128 E7A60018 */ swc1 $f6, 0x18($sp)
    /* 8000C12C C7C60120 */ lwc1 $f6, 0x120($fp)
    /* 8000C130 E7A6001C */ swc1 $f6, 0x1C($sp)
    /* 8000C134 C7C60124 */ lwc1 $f6, 0x124($fp)
    /* 8000C138 E7A60020 */ swc1 $f6, 0x20($sp)
    /* 8000C13C C7C60128 */ lwc1 $f6, 0x128($fp)
    /* 8000C140 E7A60024 */ swc1 $f6, 0x24($sp)
    /* 8000C144 00402021 */ addu $a0, $v0, $zero
    /* 8000C148 44050000 */ mfc1 $a1, $f0
    /* 8000C14C 44061000 */ mfc1 $a2, $f2
    /* 8000C150 44072000 */ mfc1 $a3, $f4
    /* 8000C154 0C0132D0 */ jal guLookAt
    /* 8000C158 00000000 */ nop
.L8000C15C:
    /* 8000C15C 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000C160 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000C164 24430008 */ addiu $v1, $v0, 0x8
    /* 8000C168 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000C16C AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000C170 AFC20130 */ sw $v0, 0x130($fp)
    /* 8000C174 8FC20130 */ lw $v0, 0x130($fp)
    /* 8000C178 3C030103 */ lui $v1, 0x103
    /* 8000C17C 34630040 */ ori $v1, $v1, 0x40
    /* 8000C180 AC430000 */ sw $v1, 0x0($v0)
    /* 8000C184 8FC20130 */ lw $v0, 0x130($fp)
    /* 8000C188 8FC30144 */ lw $v1, 0x144($fp)
    /* 8000C18C AC430004 */ sw $v1, 0x4($v0)
    /* 8000C190 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000C194 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000C198 24430008 */ addiu $v1, $v0, 0x8
    /* 8000C19C 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000C1A0 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000C1A4 AFC20130 */ sw $v0, 0x130($fp)
    /* 8000C1A8 8FC20130 */ lw $v0, 0x130($fp)
    /* 8000C1AC 3C030101 */ lui $v1, 0x101
    /* 8000C1B0 34630040 */ ori $v1, $v1, 0x40
    /* 8000C1B4 AC430000 */ sw $v1, 0x0($v0)
    /* 8000C1B8 8FC20130 */ lw $v0, 0x130($fp)
    /* 8000C1BC 8FC30144 */ lw $v1, 0x144($fp)
    /* 8000C1C0 24640040 */ addiu $a0, $v1, 0x40
    /* 8000C1C4 AC440004 */ sw $a0, 0x4($v0)
    /* 8000C1C8 03C0E821 */ addu $sp, $fp, $zero
    /* 8000C1CC 8FBF013C */ lw $ra, 0x13C($sp)
    /* 8000C1D0 8FBE0138 */ lw $fp, 0x138($sp)
    /* 8000C1D4 27BD0140 */ addiu $sp, $sp, 0x140
    /* 8000C1D8 03E00008 */ jr $ra
    /* 8000C1DC 00000000 */ nop
