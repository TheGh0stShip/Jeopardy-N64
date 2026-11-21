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
glabel func_800411E8
    /* 800411E8 27BDFF98 */ addiu $sp, $sp, -0x68
    /* 800411EC 44866000 */ mtc1 $a2, $f12
    /* 800411F0 44877000 */ mtc1 $a3, $f14
    /* 800411F4 C7A40078 */ lwc1 $f4, 0x78($sp)
    /* 800411F8 C7A6007C */ lwc1 $f6, 0x7C($sp)
    /* 800411FC C7A80080 */ lwc1 $f8, 0x80($sp)
    /* 80041200 AFBF0024 */ sw $ra, 0x24($sp)
    /* 80041204 AFA40068 */ sw $a0, 0x68($sp)
    /* 80041208 44066000 */ mfc1 $a2, $f12
    /* 8004120C 44077000 */ mfc1 $a3, $f14
    /* 80041210 27A40028 */ addiu $a0, $sp, 0x28
    /* 80041214 E7A40010 */ swc1 $f4, 0x10($sp)
    /* 80041218 E7A60014 */ swc1 $f6, 0x14($sp)
    /* 8004121C 0C0103EE */ jal guPerspectiveF
    /* 80041220 E7A80018 */ swc1 $f8, 0x18($sp)
    /* 80041224 27A40028 */ addiu $a0, $sp, 0x28
    /* 80041228 0C011032 */ jal guMtxF2L
    /* 8004122C 8FA50068 */ lw $a1, 0x68($sp)
    /* 80041230 8FBF0024 */ lw $ra, 0x24($sp)
    /* 80041234 27BD0068 */ addiu $sp, $sp, 0x68
    /* 80041238 03E00008 */ jr $ra
    /* 8004123C 00000000 */ nop
    /* 80041240 00000000 */ nop
    /* 80041244 00000000 */ nop
