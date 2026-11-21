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
glabel func_8004CB40
    /* 8004CB40 27BDFF90 */ addiu $sp, $sp, -0x70
    /* 8004CB44 C7A40080 */ lwc1 $f4, 0x80($sp)
    /* 8004CB48 44856000 */ mtc1 $a1, $f12
    /* 8004CB4C 44867000 */ mtc1 $a2, $f14
    /* 8004CB50 44878000 */ mtc1 $a3, $f16
    /* 8004CB54 E7A40010 */ swc1 $f4, 0x10($sp)
    /* 8004CB58 C7A40094 */ lwc1 $f4, 0x94($sp)
    /* 8004CB5C C7A60084 */ lwc1 $f6, 0x84($sp)
    /* 8004CB60 C7A80088 */ lwc1 $f8, 0x88($sp)
    /* 8004CB64 C7AA008C */ lwc1 $f10, 0x8C($sp)
    /* 8004CB68 C7B20090 */ lwc1 $f18, 0x90($sp)
    /* 8004CB6C AFBF002C */ sw $ra, 0x2C($sp)
    /* 8004CB70 AFA40070 */ sw $a0, 0x70($sp)
    /* 8004CB74 44056000 */ mfc1 $a1, $f12
    /* 8004CB78 44067000 */ mfc1 $a2, $f14
    /* 8004CB7C 44078000 */ mfc1 $a3, $f16
    /* 8004CB80 27A40030 */ addiu $a0, $sp, 0x30
    /* 8004CB84 E7A40024 */ swc1 $f4, 0x24($sp)
    /* 8004CB88 E7A60014 */ swc1 $f6, 0x14($sp)
    /* 8004CB8C E7A80018 */ swc1 $f8, 0x18($sp)
    /* 8004CB90 E7AA001C */ swc1 $f10, 0x1C($sp)
    /* 8004CB94 0C013222 */ jal guLookAtF
    /* 8004CB98 E7B20020 */ swc1 $f18, 0x20($sp)
    /* 8004CB9C 27A40030 */ addiu $a0, $sp, 0x30
    /* 8004CBA0 0C011032 */ jal guMtxF2L
    /* 8004CBA4 8FA50070 */ lw $a1, 0x70($sp)
    /* 8004CBA8 8FBF002C */ lw $ra, 0x2C($sp)
    /* 8004CBAC 27BD0070 */ addiu $sp, $sp, 0x70
    /* 8004CBB0 03E00008 */ jr $ra
    /* 8004CBB4 00000000 */ nop
