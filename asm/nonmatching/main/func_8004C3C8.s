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
glabel func_8004C3C8
    /* 8004C3C8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004C3CC AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004C3D0 AFA40028 */ sw $a0, 0x28($sp)
    /* 8004C3D4 AFA60030 */ sw $a2, 0x30($sp)
    /* 8004C3D8 AFA70034 */ sw $a3, 0x34($sp)
    /* 8004C3DC 0C01311E */ jal __osDpDeviceBusy
    /* 8004C3E0 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004C3E4 10400003 */ beqz $v0, .L8004C3F4
    /* 8004C3E8 00000000 */ nop
    /* 8004C3EC 1000001B */ b .L8004C45C
    /* 8004C3F0 2402FFFF */ addiu $v0, $zero, -0x1
.L8004C3F4:
    /* 8004C3F4 240E0001 */ addiu $t6, $zero, 0x1
    /* 8004C3F8 3C0FA410 */ lui $t7, %hi(D_A410000C)
    /* 8004C3FC ADEE000C */ sw $t6, %lo(D_A410000C)($t7)
.L8004C400:
    /* 8004C400 3C18A410 */ lui $t8, %hi(D_A410000C)
    /* 8004C404 8F10000C */ lw $s0, %lo(D_A410000C)($t8)
    /* 8004C408 32190001 */ andi $t9, $s0, 0x1
    /* 8004C40C 1720FFFC */ bnez $t9, .L8004C400
    /* 8004C410 00000000 */ nop
    /* 8004C414 0C010CCE */ jal osVirtualToPhysical
    /* 8004C418 8FA40028 */ lw $a0, 0x28($sp)
    /* 8004C41C 3C08A410 */ lui $t0, %hi(D_A4100000)
    /* 8004C420 AD020000 */ sw $v0, %lo(D_A4100000)($t0)
    /* 8004C424 0C010CCE */ jal osVirtualToPhysical
    /* 8004C428 8FA40028 */ lw $a0, 0x28($sp)
    /* 8004C42C 8FAD0034 */ lw $t5, 0x34($sp)
    /* 8004C430 00405825 */ move $t3, $v0
    /* 8004C434 8FAC0030 */ lw $t4, 0x30($sp)
    /* 8004C438 016D7821 */ addu $t7, $t3, $t5
    /* 8004C43C 240A0000 */ addiu $t2, $zero, 0x0
    /* 8004C440 01ED082B */ sltu $at, $t7, $t5
    /* 8004C444 002A7021 */ addu $t6, $at, $t2
    /* 8004C448 01E04825 */ move $t1, $t7
    /* 8004C44C 3C18A410 */ lui $t8, %hi(D_A4100004)
    /* 8004C450 AF090004 */ sw $t1, %lo(D_A4100004)($t8)
    /* 8004C454 00001025 */ move $v0, $zero
    /* 8004C458 01CC7021 */ addu $t6, $t6, $t4
.L8004C45C:
    /* 8004C45C 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004C460 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004C464 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8004C468 03E00008 */ jr $ra
    /* 8004C46C 00000000 */ nop
    /* 8004C470 00000000 */ nop
    /* 8004C474 00000000 */ nop
