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
glabel func_8003EFB8
    /* 8003EFB8 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8003EFBC AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003EFC0 AFA5001C */ sw $a1, 0x1C($sp)
    /* 8003EFC4 AFA60020 */ sw $a2, 0x20($sp)
    /* 8003EFC8 AFA70024 */ sw $a3, 0x24($sp)
    /* 8003EFCC 0C011072 */ jal guMtxIdentF
    /* 8003EFD0 AFA40018 */ sw $a0, 0x18($sp)
    /* 8003EFD4 8FA40018 */ lw $a0, 0x18($sp)
    /* 8003EFD8 C7A4001C */ lwc1 $f4, 0x1C($sp)
    /* 8003EFDC 3C013F80 */ lui $at, 0x3F80
    /* 8003EFE0 44815000 */ mtc1 $at, $f10
    /* 8003EFE4 E4840000 */ swc1 $f4, 0x0($a0)
    /* 8003EFE8 C7A60020 */ lwc1 $f6, 0x20($sp)
    /* 8003EFEC E4860014 */ swc1 $f6, 0x14($a0)
    /* 8003EFF0 C7A80024 */ lwc1 $f8, 0x24($sp)
    /* 8003EFF4 E48A003C */ swc1 $f10, 0x3C($a0)
    /* 8003EFF8 E4880028 */ swc1 $f8, 0x28($a0)
    /* 8003EFFC 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003F000 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8003F004 03E00008 */ jr $ra
    /* 8003F008 00000000 */ nop
