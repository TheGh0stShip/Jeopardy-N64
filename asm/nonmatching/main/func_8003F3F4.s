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
glabel func_8003F3F4
    /* 8003F3F4 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8003F3F8 AFA50024 */ sw $a1, 0x24($sp)
    /* 8003F3FC AFBF001C */ sw $ra, 0x1C($sp)
    /* 8003F400 3C058004 */ lui $a1, %hi(alResamplePull)
    /* 8003F404 3C068004 */ lui $a2, %hi(alResampleParam)
    /* 8003F408 24C62C18 */ addiu $a2, $a2, %lo(alResampleParam)
    /* 8003F40C 24A52D04 */ addiu $a1, $a1, %lo(alResamplePull)
    /* 8003F410 AFA40020 */ sw $a0, 0x20($sp)
    /* 8003F414 0C010AAA */ jal func_80042AA8
    /* 8003F418 24070001 */ addiu $a3, $zero, 0x1
    /* 8003F41C 240E0020 */ addiu $t6, $zero, 0x20
    /* 8003F420 AFAE0010 */ sw $t6, 0x10($sp)
    /* 8003F424 00002025 */ move $a0, $zero
    /* 8003F428 00002825 */ move $a1, $zero
    /* 8003F42C 8FA60024 */ lw $a2, 0x24($sp)
    /* 8003F430 0C00F56A */ jal alHeapDBAlloc
    /* 8003F434 24070001 */ addiu $a3, $zero, 0x1
    /* 8003F438 8FA80020 */ lw $t0, 0x20($sp)
    /* 8003F43C 3C013F80 */ lui $at, 0x3F80
    /* 8003F440 44802000 */ mtc1 $zero, $f4
    /* 8003F444 44813000 */ mtc1 $at, $f6
    /* 8003F448 240F0001 */ addiu $t7, $zero, 0x1
    /* 8003F44C AD020014 */ sw $v0, 0x14($t0)
    /* 8003F450 AD0F0024 */ sw $t7, 0x24($t0)
    /* 8003F454 AD000030 */ sw $zero, 0x30($t0)
    /* 8003F458 AD00001C */ sw $zero, 0x1C($t0)
    /* 8003F45C AD000028 */ sw $zero, 0x28($t0)
    /* 8003F460 AD00002C */ sw $zero, 0x2C($t0)
    /* 8003F464 E5040020 */ swc1 $f4, 0x20($t0)
    /* 8003F468 E5060018 */ swc1 $f6, 0x18($t0)
    /* 8003F46C 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003F470 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8003F474 03E00008 */ jr $ra
    /* 8003F478 00000000 */ nop
