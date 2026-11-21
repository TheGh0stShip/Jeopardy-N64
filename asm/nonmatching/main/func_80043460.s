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
glabel func_80043460
    /* 80043460 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 80043464 AFBF0014 */ sw $ra, 0x14($sp)
    /* 80043468 30A2FFFF */ andi $v0, $a1, 0xFFFF
    /* 8004346C 0006C040 */ sll $t8, $a2, 1
    /* 80043470 3319FFFF */ andi $t9, $t8, 0xFFFF
    /* 80043474 00027C00 */ sll $t7, $v0, 16
    /* 80043478 3C010800 */ lui $at, 0x800
    /* 8004347C 3C0A0B00 */ lui $t2, 0xB00
    /* 80043480 00417025 */ or $t6, $v0, $at
    /* 80043484 01F94825 */ or $t1, $t7, $t9
    /* 80043488 354A0020 */ ori $t2, $t2, 0x20
    /* 8004348C 00804025 */ move $t0, $a0
    /* 80043490 ACE90004 */ sw $t1, 0x4($a3)
    /* 80043494 ACEE0000 */ sw $t6, 0x0($a3)
    /* 80043498 ACEA0008 */ sw $t2, 0x8($a3)
    /* 8004349C AFA80028 */ sw $t0, 0x28($sp)
    /* 800434A0 AFA70034 */ sw $a3, 0x34($sp)
    /* 800434A4 0C010CCE */ jal osVirtualToPhysical
    /* 800434A8 24840008 */ addiu $a0, $a0, 0x8
    /* 800434AC 8FA70034 */ lw $a3, 0x34($sp)
    /* 800434B0 8FA80028 */ lw $t0, 0x28($sp)
    /* 800434B4 3C010E00 */ lui $at, 0xE00
    /* 800434B8 24E30010 */ addiu $v1, $a3, 0x10
    /* 800434BC 246B0008 */ addiu $t3, $v1, 0x8
    /* 800434C0 ACE2000C */ sw $v0, 0xC($a3)
    /* 800434C4 AFAB0024 */ sw $t3, 0x24($sp)
    /* 800434C8 8D0C002C */ lw $t4, 0x2C($t0)
    /* 800434CC 850F0002 */ lh $t7, 0x2($t0)
    /* 800434D0 318D00FF */ andi $t5, $t4, 0xFF
    /* 800434D4 000D7400 */ sll $t6, $t5, 16
    /* 800434D8 01C1C025 */ or $t8, $t6, $at
    /* 800434DC 31F9FFFF */ andi $t9, $t7, 0xFFFF
    /* 800434E0 03194825 */ or $t1, $t8, $t9
    /* 800434E4 AC690000 */ sw $t1, 0x0($v1)
    /* 800434E8 8D040028 */ lw $a0, 0x28($t0)
    /* 800434EC 0C010CCE */ jal osVirtualToPhysical
    /* 800434F0 AFA30018 */ sw $v1, 0x18($sp)
    /* 800434F4 8FA50018 */ lw $a1, 0x18($sp)
    /* 800434F8 8FA80028 */ lw $t0, 0x28($sp)
    /* 800434FC ACA20004 */ sw $v0, 0x4($a1)
    /* 80043500 AD00002C */ sw $zero, 0x2C($t0)
    /* 80043504 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80043508 8FA20024 */ lw $v0, 0x24($sp)
    /* 8004350C 27BD0028 */ addiu $sp, $sp, 0x28
    /* 80043510 03E00008 */ jr $ra
    /* 80043514 00000000 */ nop
