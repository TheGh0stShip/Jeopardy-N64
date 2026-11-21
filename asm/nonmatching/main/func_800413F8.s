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
glabel func_800413F8
    /* 800413F8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 800413FC AFBF001C */ sw $ra, 0x1C($sp)
    /* 80041400 AFA40028 */ sw $a0, 0x28($sp)
    /* 80041404 0C00FF3A */ jal __osDisableInt
    /* 80041408 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004140C 8FAF0028 */ lw $t7, 0x28($sp)
    /* 80041410 3C0E8007 */ lui $t6, %hi(D_80072348)
    /* 80041414 8DCE2348 */ lw $t6, %lo(D_80072348)($t6)
    /* 80041418 2401FBFE */ addiu $at, $zero, -0x402
    /* 8004141C 01E1C024 */ and $t8, $t7, $at
    /* 80041420 0300C827 */ not $t9, $t8
    /* 80041424 00408025 */ move $s0, $v0
    /* 80041428 3C018007 */ lui $at, %hi(D_80072348)
    /* 8004142C 01D94024 */ and $t0, $t6, $t9
    /* 80041430 AC282348 */ sw $t0, %lo(D_80072348)($at)
    /* 80041434 0C00FF42 */ jal func_8003FD08
    /* 80041438 02002025 */ move $a0, $s0
    /* 8004143C 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80041440 8FB00018 */ lw $s0, 0x18($sp)
    /* 80041444 27BD0028 */ addiu $sp, $sp, 0x28
    /* 80041448 03E00008 */ jr $ra
    /* 8004144C 00000000 */ nop
    /* 80041450 00000000 */ nop
    /* 80041454 00000000 */ nop
