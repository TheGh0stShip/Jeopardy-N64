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
glabel func_8003EE18
    /* 8003EE18 3C018000 */ lui $at, %hi(D_80001D48)
    /* 8003EE1C C4201D48 */ lwc1 $f0, %lo(D_80001D48)($at)
    /* 8003EE20 44856000 */ mtc1 $a1, $f12
    /* 8003EE24 44867000 */ mtc1 $a2, $f14
    /* 8003EE28 44878000 */ mtc1 $a3, $f16
    /* 8003EE2C 46006302 */ mul.s $f12, $f12, $f0
    /* 8003EE30 27BDFFB8 */ addiu $sp, $sp, -0x48
    /* 8003EE34 AFBF002C */ sw $ra, 0x2C($sp)
    /* 8003EE38 46007382 */ mul.s $f14, $f14, $f0
    /* 8003EE3C AFB00028 */ sw $s0, 0x28($sp)
    /* 8003EE40 3C01800D */ lui $at, %hi(D_800D1EB0)
    /* 8003EE44 46008402 */ mul.s $f16, $f16, $f0
    /* 8003EE48 00808025 */ move $s0, $a0
    /* 8003EE4C F7B60020 */ sdc1 $f22, 0x20($sp)
    /* 8003EE50 F7B40018 */ sdc1 $f20, 0x18($sp)
    /* 8003EE54 E7AE0050 */ swc1 $f14, 0x50($sp)
    /* 8003EE58 E7AC004C */ swc1 $f12, 0x4C($sp)
    /* 8003EE5C E4201EB0 */ swc1 $f0, %lo(D_800D1EB0)($at)
    /* 8003EE60 0C00FC16 */ jal __sinf
    /* 8003EE64 E7B00054 */ swc1 $f16, 0x54($sp)
    /* 8003EE68 C7AC004C */ lwc1 $f12, 0x4C($sp)
    /* 8003EE6C 0C0131C6 */ jal __cosf
    /* 8003EE70 46000506 */ mov.s $f20, $f0
    /* 8003EE74 46000586 */ mov.s $f22, $f0
    /* 8003EE78 0C00FC16 */ jal __sinf
    /* 8003EE7C C7AC0050 */ lwc1 $f12, 0x50($sp)
    /* 8003EE80 E7A00040 */ swc1 $f0, 0x40($sp)
    /* 8003EE84 0C0131C6 */ jal __cosf
    /* 8003EE88 C7AC0050 */ lwc1 $f12, 0x50($sp)
    /* 8003EE8C C7AC0054 */ lwc1 $f12, 0x54($sp)
    /* 8003EE90 0C00FC16 */ jal __sinf
    /* 8003EE94 E7A00034 */ swc1 $f0, 0x34($sp)
    /* 8003EE98 C7AC0054 */ lwc1 $f12, 0x54($sp)
    /* 8003EE9C 0C0131C6 */ jal __cosf
    /* 8003EEA0 E7A0003C */ swc1 $f0, 0x3C($sp)
    /* 8003EEA4 02002025 */ move $a0, $s0
    /* 8003EEA8 0C011072 */ jal guMtxIdentF
    /* 8003EEAC E7A00030 */ swc1 $f0, 0x30($sp)
    /* 8003EEB0 C7AC0030 */ lwc1 $f12, 0x30($sp)
    /* 8003EEB4 C7AE0034 */ lwc1 $f14, 0x34($sp)
    /* 8003EEB8 C7A2003C */ lwc1 $f2, 0x3C($sp)
    /* 8003EEBC C7B00040 */ lwc1 $f16, 0x40($sp)
    /* 8003EEC0 460C7102 */ mul.s $f4, $f14, $f12
    /* 8003EEC4 46008207 */ neg.s $f8, $f16
    /* 8003EEC8 46027182 */ mul.s $f6, $f14, $f2
    /* 8003EECC E6080008 */ swc1 $f8, 0x8($s0)
    /* 8003EED0 4610A002 */ mul.s $f0, $f20, $f16
    /* 8003EED4 E6040000 */ swc1 $f4, 0x0($s0)
    /* 8003EED8 E6060004 */ swc1 $f6, 0x4($s0)
    /* 8003EEDC 460C0282 */ mul.s $f10, $f0, $f12
    /* 8003EEE0 00000000 */ nop
    /* 8003EEE4 4602B482 */ mul.s $f18, $f22, $f2
    /* 8003EEE8 00000000 */ nop
    /* 8003EEEC 46020182 */ mul.s $f6, $f0, $f2
    /* 8003EEF0 00000000 */ nop
    /* 8003EEF4 460CB202 */ mul.s $f8, $f22, $f12
    /* 8003EEF8 46125101 */ sub.s $f4, $f10, $f18
    /* 8003EEFC 460EA482 */ mul.s $f18, $f20, $f14
    /* 8003EF00 00000000 */ nop
    /* 8003EF04 4610B002 */ mul.s $f0, $f22, $f16
    /* 8003EF08 E6040010 */ swc1 $f4, 0x10($s0)
    /* 8003EF0C 46083280 */ add.s $f10, $f6, $f8
    /* 8003EF10 E6120018 */ swc1 $f18, 0x18($s0)
    /* 8003EF14 E60A0014 */ swc1 $f10, 0x14($s0)
    /* 8003EF18 460C0102 */ mul.s $f4, $f0, $f12
    /* 8003EF1C 00000000 */ nop
    /* 8003EF20 4602A182 */ mul.s $f6, $f20, $f2
    /* 8003EF24 00000000 */ nop
    /* 8003EF28 46020282 */ mul.s $f10, $f0, $f2
    /* 8003EF2C 00000000 */ nop
    /* 8003EF30 460CA482 */ mul.s $f18, $f20, $f12
    /* 8003EF34 46062200 */ add.s $f8, $f4, $f6
    /* 8003EF38 460EB182 */ mul.s $f6, $f22, $f14
    /* 8003EF3C E6080020 */ swc1 $f8, 0x20($s0)
    /* 8003EF40 46125101 */ sub.s $f4, $f10, $f18
    /* 8003EF44 E6060028 */ swc1 $f6, 0x28($s0)
    /* 8003EF48 E6040024 */ swc1 $f4, 0x24($s0)
    /* 8003EF4C 8FBF002C */ lw $ra, 0x2C($sp)
    /* 8003EF50 8FB00028 */ lw $s0, 0x28($sp)
    /* 8003EF54 D7B60020 */ ldc1 $f22, 0x20($sp)
    /* 8003EF58 D7B40018 */ ldc1 $f20, 0x18($sp)
    /* 8003EF5C 03E00008 */ jr $ra
    /* 8003EF60 27BD0048 */ addiu $sp, $sp, 0x48
