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
glabel func_8003C3A8
    /* 8003C3A8 3C0E800D */ lui $t6, %hi(D_800D1DBC)
    /* 8003C3AC 8DCE1DBC */ lw $t6, %lo(D_800D1DBC)($t6)
    /* 8003C3B0 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8003C3B4 3C01B000 */ lui $at, 0xB000
    /* 8003C3B8 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003C3BC 15C10004 */ bne $t6, $at, .L8003C3D0
    /* 8003C3C0 AFA0001C */ sw $zero, 0x1C($sp)
    /* 8003C3C4 3C02800D */ lui $v0, %hi(D_800D1DB0)
    /* 8003C3C8 1000002E */ b .L8003C484
    /* 8003C3CC 24421DB0 */ addiu $v0, $v0, %lo(D_800D1DB0)
.L8003C3D0:
    /* 8003C3D0 3C01800D */ lui $at, %hi(D_800D1DB4)
    /* 8003C3D4 A0201DB4 */ sb $zero, %lo(D_800D1DB4)($at)
    /* 8003C3D8 3C01800D */ lui $at, %hi(D_800D1DBC)
    /* 8003C3DC 3C0FB000 */ lui $t7, 0xB000
    /* 8003C3E0 AC2F1DBC */ sw $t7, %lo(D_800D1DBC)($at)
    /* 8003C3E4 00002025 */ move $a0, $zero
    /* 8003C3E8 0C010496 */ jal osPiRawReadIo
    /* 8003C3EC 27A5001C */ addiu $a1, $sp, 0x1C
    /* 8003C3F0 8FB8001C */ lw $t8, 0x1C($sp)
    /* 8003C3F4 3C01800D */ lui $at, %hi(D_800D1DB5)
    /* 8003C3F8 3C04800D */ lui $a0, %hi(D_800D1DB0)
    /* 8003C3FC 331900FF */ andi $t9, $t8, 0xFF
    /* 8003C400 A0391DB5 */ sb $t9, %lo(D_800D1DB5)($at)
    /* 8003C404 00184202 */ srl $t0, $t8, 8
    /* 8003C408 310900FF */ andi $t1, $t0, 0xFF
    /* 8003C40C 3C01800D */ lui $at, %hi(D_800D1DB8)
    /* 8003C410 A0291DB8 */ sb $t1, %lo(D_800D1DB8)($at)
    /* 8003C414 3C01800D */ lui $at, %hi(D_800D1DB6)
    /* 8003C418 00185402 */ srl $t2, $t8, 16
    /* 8003C41C 00186502 */ srl $t4, $t8, 20
    /* 8003C420 314B000F */ andi $t3, $t2, 0xF
    /* 8003C424 318D000F */ andi $t5, $t4, 0xF
    /* 8003C428 A02B1DB6 */ sb $t3, %lo(D_800D1DB6)($at)
    /* 8003C42C A02D1DB7 */ sb $t5, %lo(D_800D1DB7)($at)
    /* 8003C430 3C01800D */ lui $at, %hi(D_800D1DB9)
    /* 8003C434 24841DB0 */ addiu $a0, $a0, %lo(D_800D1DB0)
    /* 8003C438 A0201DB9 */ sb $zero, %lo(D_800D1DB9)($at)
    /* 8003C43C 24840014 */ addiu $a0, $a0, 0x14
    /* 8003C440 0C00F126 */ jal bzero
    /* 8003C444 24050060 */ addiu $a1, $zero, 0x60
    /* 8003C448 0C00FF3A */ jal __osDisableInt
    /* 8003C44C 00000000 */ nop
    /* 8003C450 3C0E8007 */ lui $t6, %hi(D_80071FD4)
    /* 8003C454 8DCE1FD4 */ lw $t6, %lo(D_80071FD4)($t6)
    /* 8003C458 3C01800D */ lui $at, %hi(D_800D1DB0)
    /* 8003C45C 3C0F800D */ lui $t7, %hi(D_800D1DB0)
    /* 8003C460 AC2E1DB0 */ sw $t6, %lo(D_800D1DB0)($at)
    /* 8003C464 AFA20018 */ sw $v0, 0x18($sp)
    /* 8003C468 3C018007 */ lui $at, %hi(D_80071FD4)
    /* 8003C46C 25EF1DB0 */ addiu $t7, $t7, %lo(D_800D1DB0)
    /* 8003C470 AC2F1FD4 */ sw $t7, %lo(D_80071FD4)($at)
    /* 8003C474 0C00FF42 */ jal func_8003FD08
    /* 8003C478 8FA40018 */ lw $a0, 0x18($sp)
    /* 8003C47C 3C02800D */ lui $v0, %hi(D_800D1DB0)
    /* 8003C480 24421DB0 */ addiu $v0, $v0, %lo(D_800D1DB0)
.L8003C484:
    /* 8003C484 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003C488 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8003C48C 03E00008 */ jr $ra
    /* 8003C490 00000000 */ nop
    /* 8003C494 00000000 */ nop
