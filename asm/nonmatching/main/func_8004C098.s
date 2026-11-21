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
glabel func_8004C098
    /* 8004C098 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8004C09C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004C0A0 AFA40018 */ sw $a0, 0x18($sp)
    /* 8004C0A4 AFA5001C */ sw $a1, 0x1C($sp)
    /* 8004C0A8 AFA60020 */ sw $a2, 0x20($sp)
    /* 8004C0AC 0C01312A */ jal __osSpDeviceBusy
    /* 8004C0B0 AFA70024 */ sw $a3, 0x24($sp)
    /* 8004C0B4 10400003 */ beqz $v0, .L8004C0C4
    /* 8004C0B8 00000000 */ nop
    /* 8004C0BC 10000015 */ b .L8004C114
    /* 8004C0C0 2402FFFF */ addiu $v0, $zero, -0x1
.L8004C0C4:
    /* 8004C0C4 8FAE001C */ lw $t6, 0x1C($sp)
    /* 8004C0C8 3C0FA404 */ lui $t7, %hi(D_A4040000)
    /* 8004C0CC ADEE0000 */ sw $t6, %lo(D_A4040000)($t7)
    /* 8004C0D0 0C010CCE */ jal osVirtualToPhysical
    /* 8004C0D4 8FA40020 */ lw $a0, 0x20($sp)
    /* 8004C0D8 3C18A404 */ lui $t8, %hi(D_A4040004)
    /* 8004C0DC AF020004 */ sw $v0, %lo(D_A4040004)($t8)
    /* 8004C0E0 8FB90018 */ lw $t9, 0x18($sp)
    /* 8004C0E4 17200006 */ bnez $t9, .L8004C100
    /* 8004C0E8 00000000 */ nop
    /* 8004C0EC 8FA80024 */ lw $t0, 0x24($sp)
    /* 8004C0F0 3C0AA404 */ lui $t2, %hi(D_A404000C)
    /* 8004C0F4 2509FFFF */ addiu $t1, $t0, -0x1
    /* 8004C0F8 10000005 */ b .L8004C110
    /* 8004C0FC AD49000C */ sw $t1, %lo(D_A404000C)($t2)
.L8004C100:
    /* 8004C100 8FAB0024 */ lw $t3, 0x24($sp)
    /* 8004C104 3C0DA404 */ lui $t5, %hi(D_A4040008)
    /* 8004C108 256CFFFF */ addiu $t4, $t3, -0x1
    /* 8004C10C ADAC0008 */ sw $t4, %lo(D_A4040008)($t5)
.L8004C110:
    /* 8004C110 00001025 */ move $v0, $zero
.L8004C114:
    /* 8004C114 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004C118 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8004C11C 03E00008 */ jr $ra
    /* 8004C120 00000000 */ nop
    /* 8004C124 00000000 */ nop
