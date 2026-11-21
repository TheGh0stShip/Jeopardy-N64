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
glabel func_80048E78
    /* 80048E78 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 80048E7C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80048E80 AFA40018 */ sw $a0, 0x18($sp)
    /* 80048E84 0C0134DA */ jal __osSiDeviceBusy
    /* 80048E88 AFA5001C */ sw $a1, 0x1C($sp)
    /* 80048E8C 10400003 */ beqz $v0, .L80048E9C
    /* 80048E90 00000000 */ nop
    /* 80048E94 1000001F */ b .L80048F14
    /* 80048E98 2402FFFF */ addiu $v0, $zero, -0x1
.L80048E9C:
    /* 80048E9C 8FAE0018 */ lw $t6, 0x18($sp)
    /* 80048EA0 24010001 */ addiu $at, $zero, 0x1
    /* 80048EA4 15C10004 */ bne $t6, $at, .L80048EB8
    /* 80048EA8 00000000 */ nop
    /* 80048EAC 8FA4001C */ lw $a0, 0x1C($sp)
    /* 80048EB0 0C0120D6 */ jal osWritebackDCache
    /* 80048EB4 24050040 */ addiu $a1, $zero, 0x40
.L80048EB8:
    /* 80048EB8 0C010CCE */ jal osVirtualToPhysical
    /* 80048EBC 8FA4001C */ lw $a0, 0x1C($sp)
    /* 80048EC0 3C0FA480 */ lui $t7, %hi(D_A4800000)
    /* 80048EC4 ADE20000 */ sw $v0, %lo(D_A4800000)($t7)
    /* 80048EC8 8FB80018 */ lw $t8, 0x18($sp)
    /* 80048ECC 17000006 */ bnez $t8, .L80048EE8
    /* 80048ED0 00000000 */ nop
    /* 80048ED4 3C191FC0 */ lui $t9, 0x1FC0
    /* 80048ED8 373907C0 */ ori $t9, $t9, 0x7C0
    /* 80048EDC 3C08A480 */ lui $t0, %hi(D_A4800004)
    /* 80048EE0 10000005 */ b .L80048EF8
    /* 80048EE4 AD190004 */ sw $t9, %lo(D_A4800004)($t0)
.L80048EE8:
    /* 80048EE8 3C091FC0 */ lui $t1, 0x1FC0
    /* 80048EEC 352907C0 */ ori $t1, $t1, 0x7C0
    /* 80048EF0 3C0AA480 */ lui $t2, %hi(D_A4800010)
    /* 80048EF4 AD490010 */ sw $t1, %lo(D_A4800010)($t2)
.L80048EF8:
    /* 80048EF8 8FAB0018 */ lw $t3, 0x18($sp)
    /* 80048EFC 15600004 */ bnez $t3, .L80048F10
    /* 80048F00 00000000 */ nop
    /* 80048F04 8FA4001C */ lw $a0, 0x1C($sp)
    /* 80048F08 0C00FEEE */ jal osInvalDCache
    /* 80048F0C 24050040 */ addiu $a1, $zero, 0x40
.L80048F10:
    /* 80048F10 00001025 */ move $v0, $zero
.L80048F14:
    /* 80048F14 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80048F18 27BD0018 */ addiu $sp, $sp, 0x18
    /* 80048F1C 03E00008 */ jr $ra
    /* 80048F20 00000000 */ nop
    /* 80048F24 00000000 */ nop
