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
glabel func_8003F260
    /* 8003F260 27BDFF98 */ addiu $sp, $sp, -0x68
    /* 8003F264 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003F268 AFA40068 */ sw $a0, 0x68($sp)
    /* 8003F26C AFA5006C */ sw $a1, 0x6C($sp)
    /* 8003F270 AFA60070 */ sw $a2, 0x70($sp)
    /* 8003F274 AFA70074 */ sw $a3, 0x74($sp)
    /* 8003F278 0C011072 */ jal guMtxIdentF
    /* 8003F27C 27A40028 */ addiu $a0, $sp, 0x28
    /* 8003F280 C7A4006C */ lwc1 $f4, 0x6C($sp)
    /* 8003F284 C7A60070 */ lwc1 $f6, 0x70($sp)
    /* 8003F288 C7A80074 */ lwc1 $f8, 0x74($sp)
    /* 8003F28C 27A40028 */ addiu $a0, $sp, 0x28
    /* 8003F290 8FA50068 */ lw $a1, 0x68($sp)
    /* 8003F294 E7A40058 */ swc1 $f4, 0x58($sp)
    /* 8003F298 E7A6005C */ swc1 $f6, 0x5C($sp)
    /* 8003F29C 0C011032 */ jal guMtxF2L
    /* 8003F2A0 E7A80060 */ swc1 $f8, 0x60($sp)
    /* 8003F2A4 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003F2A8 27BD0068 */ addiu $sp, $sp, 0x68
    /* 8003F2AC 03E00008 */ jr $ra
    /* 8003F2B0 00000000 */ nop
    /* 8003F2B4 00000000 */ nop
