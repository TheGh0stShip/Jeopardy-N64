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
glabel func_8003BCE8
    /* 8003BCE8 3C0E8007 */ lui $t6, %hi(D_80072340)
    /* 8003BCEC 8DCE2340 */ lw $t6, %lo(D_80072340)($t6)
    /* 8003BCF0 44844000 */ mtc1 $a0, $f8
    /* 8003BCF4 27BDFFF0 */ addiu $sp, $sp, -0x10
    /* 8003BCF8 448E2000 */ mtc1 $t6, $f4
    /* 8003BCFC 468042A0 */ cvt.s.w $f10, $f8
    /* 8003BD00 04810005 */ bgez $a0, .L8003BD18
    /* 8003BD04 468021A0 */ cvt.s.w $f6, $f4
    /* 8003BD08 3C014F80 */ lui $at, 0x4F80
    /* 8003BD0C 44818000 */ mtc1 $at, $f16
    /* 8003BD10 00000000 */ nop
    /* 8003BD14 46105280 */ add.s $f10, $f10, $f16
.L8003BD18:
    /* 8003BD18 460A3483 */ div.s $f18, $f6, $f10
    /* 8003BD1C 3C013F00 */ lui $at, 0x3F00
    /* 8003BD20 44812000 */ mtc1 $at, $f4
    /* 8003BD24 24050001 */ addiu $a1, $zero, 0x1
    /* 8003BD28 46049300 */ add.s $f12, $f18, $f4
    /* 8003BD2C 444FF800 */ cfc1 $t7, $31 /* FpcCsr */
    /* 8003BD30 44C5F800 */ ctc1 $a1, $31 /* FpcCsr */
    /* 8003BD34 00000000 */ nop
    /* 8003BD38 46006224 */ cvt.w.s $f8, $f12
    /* 8003BD3C 4445F800 */ cfc1 $a1, $31 /* FpcCsr */
    /* 8003BD40 00000000 */ nop
    /* 8003BD44 30A10004 */ andi $at, $a1, 0x4
    /* 8003BD48 30A50078 */ andi $a1, $a1, 0x78
    /* 8003BD4C 10A00013 */ beqz $a1, .L8003BD9C
    /* 8003BD50 3C014F00 */ lui $at, 0x4F00
    /* 8003BD54 44814000 */ mtc1 $at, $f8
    /* 8003BD58 24050001 */ addiu $a1, $zero, 0x1
    /* 8003BD5C 46086201 */ sub.s $f8, $f12, $f8
    /* 8003BD60 44C5F800 */ ctc1 $a1, $31 /* FpcCsr */
    /* 8003BD64 00000000 */ nop
    /* 8003BD68 46004224 */ cvt.w.s $f8, $f8
    /* 8003BD6C 4445F800 */ cfc1 $a1, $31 /* FpcCsr */
    /* 8003BD70 00000000 */ nop
    /* 8003BD74 30A10004 */ andi $at, $a1, 0x4
    /* 8003BD78 30A50078 */ andi $a1, $a1, 0x78
    /* 8003BD7C 14A00005 */ bnez $a1, .L8003BD94
    /* 8003BD80 00000000 */ nop
    /* 8003BD84 44054000 */ mfc1 $a1, $f8
    /* 8003BD88 3C018000 */ lui $at, 0x8000
    /* 8003BD8C 10000007 */ b .L8003BDAC
    /* 8003BD90 00A12825 */ or $a1, $a1, $at
.L8003BD94:
    /* 8003BD94 10000005 */ b .L8003BDAC
    /* 8003BD98 2405FFFF */ addiu $a1, $zero, -0x1
.L8003BD9C:
    /* 8003BD9C 44054000 */ mfc1 $a1, $f8
    /* 8003BDA0 00000000 */ nop
    /* 8003BDA4 04A0FFFB */ bltz $a1, .L8003BD94
    /* 8003BDA8 00000000 */ nop
.L8003BDAC:
    /* 8003BDAC 44CFF800 */ ctc1 $t7, $31 /* FpcCsr */
    /* 8003BDB0 2CA10084 */ sltiu $at, $a1, 0x84
    /* 8003BDB4 10200003 */ beqz $at, .L8003BDC4
    /* 8003BDB8 00000000 */ nop
    /* 8003BDBC 10000020 */ b .L8003BE40
    /* 8003BDC0 2402FFFF */ addiu $v0, $zero, -0x1
.L8003BDC4:
    /* 8003BDC4 24010042 */ addiu $at, $zero, 0x42
    /* 8003BDC8 00A1001B */ divu $zero, $a1, $at
    /* 8003BDCC 00003012 */ mflo $a2
    /* 8003BDD0 30D800FF */ andi $t8, $a2, 0xFF
    /* 8003BDD4 03003025 */ move $a2, $t8
    /* 8003BDD8 28C10011 */ slti $at, $a2, 0x11
    /* 8003BDDC 14200002 */ bnez $at, .L8003BDE8
    /* 8003BDE0 00000000 */ nop
    /* 8003BDE4 24060010 */ addiu $a2, $zero, 0x10
.L8003BDE8:
    /* 8003BDE8 24B9FFFF */ addiu $t9, $a1, -0x1
    /* 8003BDEC 3C08A450 */ lui $t0, %hi(D_A4500010)
    /* 8003BDF0 AD190010 */ sw $t9, %lo(D_A4500010)($t0)
    /* 8003BDF4 24C9FFFF */ addiu $t1, $a2, -0x1
    /* 8003BDF8 3C0AA450 */ lui $t2, %hi(D_A4500014)
    /* 8003BDFC AD490014 */ sw $t1, %lo(D_A4500014)($t2)
    /* 8003BE00 240B0001 */ addiu $t3, $zero, 0x1
    /* 8003BE04 3C0CA450 */ lui $t4, %hi(D_A4500008)
    /* 8003BE08 AD8B0008 */ sw $t3, %lo(D_A4500008)($t4)
    /* 8003BE0C 3C0D8007 */ lui $t5, %hi(D_80072340)
    /* 8003BE10 8DAD2340 */ lw $t5, %lo(D_80072340)($t5)
    /* 8003BE14 01A5001A */ div $zero, $t5, $a1
    /* 8003BE18 00001012 */ mflo $v0
    /* 8003BE1C 14A00002 */ bnez $a1, .L8003BE28
    /* 8003BE20 00000000 */ nop
    /* 8003BE24 0007000D */ break 7
.L8003BE28:
    /* 8003BE28 2401FFFF */ addiu $at, $zero, -0x1
    /* 8003BE2C 14A10004 */ bne $a1, $at, .L8003BE40
    /* 8003BE30 3C018000 */ lui $at, 0x8000
    /* 8003BE34 15A10002 */ bne $t5, $at, .L8003BE40
    /* 8003BE38 00000000 */ nop
    /* 8003BE3C 0006000D */ break 6
.L8003BE40:
    /* 8003BE40 03E00008 */ jr $ra
    /* 8003BE44 27BD0010 */ addiu $sp, $sp, 0x10
