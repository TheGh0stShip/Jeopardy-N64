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
glabel func_8003F47C
    /* 8003F47C 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003F480 AFA5002C */ sw $a1, 0x2C($sp)
    /* 8003F484 AFA60030 */ sw $a2, 0x30($sp)
    /* 8003F488 AFBF0024 */ sw $ra, 0x24($sp)
    /* 8003F48C AFB00020 */ sw $s0, 0x20($sp)
    /* 8003F490 3C068004 */ lui $a2, %hi(alLoadParam)
    /* 8003F494 3C058004 */ lui $a1, %hi(alAdpcmPull)
    /* 8003F498 00808025 */ move $s0, $a0
    /* 8003F49C 24A5DCB4 */ addiu $a1, $a1, %lo(alAdpcmPull)
    /* 8003F4A0 24C6D608 */ addiu $a2, $a2, %lo(alLoadParam)
    /* 8003F4A4 0C010AAA */ jal func_80042AA8
    /* 8003F4A8 00003825 */ move $a3, $zero
    /* 8003F4AC 240E0020 */ addiu $t6, $zero, 0x20
    /* 8003F4B0 AFAE0010 */ sw $t6, 0x10($sp)
    /* 8003F4B4 00002025 */ move $a0, $zero
    /* 8003F4B8 00002825 */ move $a1, $zero
    /* 8003F4BC 8FA60030 */ lw $a2, 0x30($sp)
    /* 8003F4C0 0C00F56A */ jal alHeapDBAlloc
    /* 8003F4C4 24070001 */ addiu $a3, $zero, 0x1
    /* 8003F4C8 AE020014 */ sw $v0, 0x14($s0)
    /* 8003F4CC 240F0020 */ addiu $t7, $zero, 0x20
    /* 8003F4D0 AFAF0010 */ sw $t7, 0x10($sp)
    /* 8003F4D4 8FA60030 */ lw $a2, 0x30($sp)
    /* 8003F4D8 00002025 */ move $a0, $zero
    /* 8003F4DC 00002825 */ move $a1, $zero
    /* 8003F4E0 0C00F56A */ jal alHeapDBAlloc
    /* 8003F4E4 24070001 */ addiu $a3, $zero, 0x1
    /* 8003F4E8 AE020018 */ sw $v0, 0x18($s0)
    /* 8003F4EC 8FB9002C */ lw $t9, 0x2C($sp)
    /* 8003F4F0 26040034 */ addiu $a0, $s0, 0x34
    /* 8003F4F4 0320F809 */ jalr $t9
    /* 8003F4F8 00000000 */ nop
    /* 8003F4FC 24180001 */ addiu $t8, $zero, 0x1
    /* 8003F500 AE020030 */ sw $v0, 0x30($s0)
    /* 8003F504 AE00003C */ sw $zero, 0x3C($s0)
    /* 8003F508 AE180040 */ sw $t8, 0x40($s0)
    /* 8003F50C AE000044 */ sw $zero, 0x44($s0)
    /* 8003F510 8FBF0024 */ lw $ra, 0x24($sp)
    /* 8003F514 8FB00020 */ lw $s0, 0x20($sp)
    /* 8003F518 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003F51C 03E00008 */ jr $ra
    /* 8003F520 00000000 */ nop
