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
glabel func_8003DCB4
    /* 8003DCB4 27BDFF50 */ addiu $sp, $sp, -0xB0
    /* 8003DCB8 AFB70044 */ sw $s7, 0x44($sp)
    /* 8003DCBC AFA700BC */ sw $a3, 0xBC($sp)
    /* 8003DCC0 00A03825 */ move $a3, $a1
    /* 8003DCC4 0080B825 */ move $s7, $a0
    /* 8003DCC8 AFBF004C */ sw $ra, 0x4C($sp)
    /* 8003DCCC AFBE0048 */ sw $fp, 0x48($sp)
    /* 8003DCD0 AFB60040 */ sw $s6, 0x40($sp)
    /* 8003DCD4 AFB5003C */ sw $s5, 0x3C($sp)
    /* 8003DCD8 AFB40038 */ sw $s4, 0x38($sp)
    /* 8003DCDC AFB30034 */ sw $s3, 0x34($sp)
    /* 8003DCE0 AFB20030 */ sw $s2, 0x30($sp)
    /* 8003DCE4 AFB1002C */ sw $s1, 0x2C($sp)
    /* 8003DCE8 AFB00028 */ sw $s0, 0x28($sp)
    /* 8003DCEC AFA500B4 */ sw $a1, 0xB4($sp)
    /* 8003DCF0 00C04025 */ move $t0, $a2
    /* 8003DCF4 14C00003 */ bnez $a2, .L8003DD04
    /* 8003DCF8 00006825 */ move $t5, $zero
    /* 8003DCFC 10000109 */ b .L8003E124
    /* 8003DD00 8FA200C0 */ lw $v0, 0xC0($sp)
.L8003DD04:
    /* 8003DD04 8EEE002C */ lw $t6, 0x2C($s7)
    /* 8003DD08 3C0100FF */ lui $at, 0xFF
    /* 8003DD0C 3421FFFF */ ori $at, $at, 0xFFFF
    /* 8003DD10 8FA500C0 */ lw $a1, 0xC0($sp)
    /* 8003DD14 01C17824 */ and $t7, $t6, $at
    /* 8003DD18 3C010B00 */ lui $at, 0xB00
    /* 8003DD1C 01E1C025 */ or $t8, $t7, $at
    /* 8003DD20 ACB80000 */ sw $t8, 0x0($a1)
    /* 8003DD24 8EF90028 */ lw $t9, 0x28($s7)
    /* 8003DD28 3C011FFF */ lui $at, 0x1FFF
    /* 8003DD2C 3421FFFF */ ori $at, $at, 0xFFFF
    /* 8003DD30 8F2E0010 */ lw $t6, 0x10($t9)
    /* 8003DD34 24AA0008 */ addiu $t2, $a1, 0x8
    /* 8003DD38 00003025 */ move $a2, $zero
    /* 8003DD3C 25CF0008 */ addiu $t7, $t6, 0x8
    /* 8003DD40 01E1C024 */ and $t8, $t7, $at
    /* 8003DD44 ACB80004 */ sw $t8, 0x4($a1)
    /* 8003DD48 8EE30038 */ lw $v1, 0x38($s7)
    /* 8003DD4C 8EE40020 */ lw $a0, 0x20($s7)
    /* 8003DD50 01002825 */ move $a1, $t0
    /* 8003DD54 0068C821 */ addu $t9, $v1, $t0
    /* 8003DD58 0099482B */ sltu $t1, $a0, $t9
    /* 8003DD5C 11200004 */ beqz $t1, .L8003DD70
    /* 8003DD60 240F0010 */ addiu $t7, $zero, 0x10
    /* 8003DD64 8EE90024 */ lw $t1, 0x24($s7)
    /* 8003DD68 0009702B */ sltu $t6, $zero, $t1
    /* 8003DD6C 01C04825 */ move $t1, $t6
.L8003DD70:
    /* 8003DD70 11200003 */ beqz $t1, .L8003DD80
    /* 8003DD74 24010009 */ addiu $at, $zero, 0x9
    /* 8003DD78 10000001 */ b .L8003DD80
    /* 8003DD7C 00832823 */ subu $a1, $a0, $v1
.L8003DD80:
    /* 8003DD80 8EE3003C */ lw $v1, 0x3C($s7)
    /* 8003DD84 01408025 */ move $s0, $t2
    /* 8003DD88 02E09025 */ move $s2, $s7
    /* 8003DD8C 10600003 */ beqz $v1, .L8003DD9C
    /* 8003DD90 00009825 */ move $s3, $zero
    /* 8003DD94 10000001 */ b .L8003DD9C
    /* 8003DD98 01E33023 */ subu $a2, $t7, $v1
.L8003DD9C:
    /* 8003DD9C 00A62023 */ subu $a0, $a1, $a2
    /* 8003DDA0 04810002 */ bgez $a0, .L8003DDAC
    /* 8003DDA4 00000000 */ nop
    /* 8003DDA8 00002025 */ move $a0, $zero
.L8003DDAC:
    /* 8003DDAC 11200081 */ beqz $t1, .L8003DFB4
    /* 8003DDB0 249E000F */ addiu $fp, $a0, 0xF
    /* 8003DDB4 249E000F */ addiu $fp, $a0, 0xF
    /* 8003DDB8 001EC103 */ sra $t8, $fp, 4
    /* 8003DDBC 84F50000 */ lh $s5, 0x0($a3)
    /* 8003DDC0 8EF40040 */ lw $s4, 0x40($s7)
    /* 8003DDC4 001848C0 */ sll $t1, $t8, 3
    /* 8003DDC8 01384821 */ addu $t1, $t1, $t8
    /* 8003DDCC 01208825 */ move $s1, $t1
    /* 8003DDD0 AFA9005C */ sw $t1, 0x5C($sp)
    /* 8003DDD4 AFA800B8 */ sw $t0, 0xB8($sp)
    /* 8003DDD8 AFA700B4 */ sw $a3, 0xB4($sp)
    /* 8003DDDC AFA5008C */ sw $a1, 0x8C($sp)
    /* 8003DDE0 0300F025 */ move $fp, $t8
    /* 8003DDE4 0C00F6E2 */ jal func_8003DB88
    /* 8003DDE8 0080B025 */ move $s6, $a0
    /* 8003DDEC 8EE3003C */ lw $v1, 0x3C($s7)
    /* 8003DDF0 8FA5008C */ lw $a1, 0x8C($sp)
    /* 8003DDF4 8FA700B4 */ lw $a3, 0xB4($sp)
    /* 8003DDF8 8FA800B8 */ lw $t0, 0xB8($sp)
    /* 8003DDFC 8FA9005C */ lw $t1, 0x5C($sp)
    /* 8003DE00 10600006 */ beqz $v1, .L8003DE1C
    /* 8003DE04 00405025 */ move $t2, $v0
    /* 8003DE08 84F90000 */ lh $t9, 0x0($a3)
    /* 8003DE0C 00037040 */ sll $t6, $v1, 1
    /* 8003DE10 032E7821 */ addu $t7, $t9, $t6
    /* 8003DE14 10000004 */ b .L8003DE28
    /* 8003DE18 A4EF0000 */ sh $t7, 0x0($a3)
.L8003DE1C:
    /* 8003DE1C 84F80000 */ lh $t8, 0x0($a3)
    /* 8003DE20 27190020 */ addiu $t9, $t8, 0x20
    /* 8003DE24 A4F90000 */ sh $t9, 0x0($a3)
.L8003DE28:
    /* 8003DE28 8EE2001C */ lw $v0, 0x1C($s7)
    /* 8003DE2C 8EEF0028 */ lw $t7, 0x28($s7)
    /* 8003DE30 00A8082A */ slt $at, $a1, $t0
    /* 8003DE34 304E000F */ andi $t6, $v0, 0xF
    /* 8003DE38 AEEE003C */ sw $t6, 0x3C($s7)
    /* 8003DE3C 8DF80000 */ lw $t8, 0x0($t7)
    /* 8003DE40 0002C902 */ srl $t9, $v0, 4
    /* 8003DE44 001970C0 */ sll $t6, $t9, 3
    /* 8003DE48 01D97021 */ addu $t6, $t6, $t9
    /* 8003DE4C 030E7821 */ addu $t7, $t8, $t6
    /* 8003DE50 25F90009 */ addiu $t9, $t7, 0x9
    /* 8003DE54 AEF90044 */ sw $t9, 0x44($s7)
    /* 8003DE58 AEE20038 */ sw $v0, 0x38($s7)
    /* 8003DE5C 10200049 */ beqz $at, .L8003DF84
    /* 8003DE60 84E60000 */ lh $a2, 0x0($a3)
    /* 8003DE64 00051840 */ sll $v1, $a1, 1
.L8003DE68:
    /* 8003DE68 27D80001 */ addiu $t8, $fp, 0x1
    /* 8003DE6C 00187140 */ sll $t6, $t8, 5
    /* 8003DE70 8EE20024 */ lw $v0, 0x24($s7)
    /* 8003DE74 01C63821 */ addu $a3, $t6, $a2
    /* 8003DE78 2401FFE0 */ addiu $at, $zero, -0x20
    /* 8003DE7C 00E17824 */ and $t7, $a3, $at
    /* 8003DE80 2401FFFF */ addiu $at, $zero, -0x1
    /* 8003DE84 01054023 */ subu $t0, $t0, $a1
    /* 8003DE88 01E03825 */ move $a3, $t7
    /* 8003DE8C 10410004 */ beq $v0, $at, .L8003DEA0
    /* 8003DE90 00C33021 */ addu $a2, $a2, $v1
    /* 8003DE94 10400002 */ beqz $v0, .L8003DEA0
    /* 8003DE98 2459FFFF */ addiu $t9, $v0, -0x1
    /* 8003DE9C AEF90024 */ sw $t9, 0x24($s7)
.L8003DEA0:
    /* 8003DEA0 8EF80020 */ lw $t8, 0x20($s7)
    /* 8003DEA4 8EEE001C */ lw $t6, 0x1C($s7)
    /* 8003DEA8 01408025 */ move $s0, $t2
    /* 8003DEAC 02E09025 */ move $s2, $s7
    /* 8003DEB0 030E1023 */ subu $v0, $t8, $t6
    /* 8003DEB4 0102082B */ sltu $at, $t0, $v0
    /* 8003DEB8 10200003 */ beqz $at, .L8003DEC8
    /* 8003DEBC 0007AC00 */ sll $s5, $a3, 16
    /* 8003DEC0 10000002 */ b .L8003DECC
    /* 8003DEC4 01002825 */ move $a1, $t0
.L8003DEC8:
    /* 8003DEC8 00402825 */ move $a1, $v0
.L8003DECC:
    /* 8003DECC 8EEF003C */ lw $t7, 0x3C($s7)
    /* 8003DED0 0015C403 */ sra $t8, $s5, 16
    /* 8003DED4 0300A825 */ move $s5, $t8
    /* 8003DED8 00AF2021 */ addu $a0, $a1, $t7
    /* 8003DEDC 2484FFF0 */ addiu $a0, $a0, -0x10
    /* 8003DEE0 04810002 */ bgez $a0, .L8003DEEC
    /* 8003DEE4 00009825 */ move $s3, $zero
    /* 8003DEE8 00002025 */ move $a0, $zero
.L8003DEEC:
    /* 8003DEEC 8EF40040 */ lw $s4, 0x40($s7)
    /* 8003DEF0 249E000F */ addiu $fp, $a0, 0xF
    /* 8003DEF4 001EC903 */ sra $t9, $fp, 4
    /* 8003DEF8 001948C0 */ sll $t1, $t9, 3
    /* 8003DEFC 01394821 */ addu $t1, $t1, $t9
    /* 8003DF00 368E0002 */ ori $t6, $s4, 0x2
    /* 8003DF04 01C0A025 */ move $s4, $t6
    /* 8003DF08 01208825 */ move $s1, $t1
    /* 8003DF0C AFA9005C */ sw $t1, 0x5C($sp)
    /* 8003DF10 0320F025 */ move $fp, $t9
    /* 8003DF14 AFA800B8 */ sw $t0, 0xB8($sp)
    /* 8003DF18 AFA70088 */ sw $a3, 0x88($sp)
    /* 8003DF1C AFA60080 */ sw $a2, 0x80($sp)
    /* 8003DF20 AFA5008C */ sw $a1, 0x8C($sp)
    /* 8003DF24 0C00F6E2 */ jal func_8003DB88
    /* 8003DF28 0080B025 */ move $s6, $a0
    /* 8003DF2C 8EEF003C */ lw $t7, 0x3C($s7)
    /* 8003DF30 8FA70088 */ lw $a3, 0x88($sp)
    /* 8003DF34 3C0100FF */ lui $at, 0xFF
    /* 8003DF38 000FC840 */ sll $t9, $t7, 1
    /* 8003DF3C 3421FFFF */ ori $at, $at, 0xFFFF
    /* 8003DF40 0327C021 */ addu $t8, $t9, $a3
    /* 8003DF44 03017024 */ and $t6, $t8, $at
    /* 8003DF48 8FA5008C */ lw $a1, 0x8C($sp)
    /* 8003DF4C 3C010A00 */ lui $at, 0xA00
    /* 8003DF50 8FA60080 */ lw $a2, 0x80($sp)
    /* 8003DF54 01C17825 */ or $t7, $t6, $at
    /* 8003DF58 8FA800B8 */ lw $t0, 0xB8($sp)
    /* 8003DF5C 8FA9005C */ lw $t1, 0x5C($sp)
    /* 8003DF60 00051840 */ sll $v1, $a1, 1
    /* 8003DF64 306EFFFF */ andi $t6, $v1, 0xFFFF
    /* 8003DF68 AC4F0000 */ sw $t7, 0x0($v0)
    /* 8003DF6C 0006C400 */ sll $t8, $a2, 16
    /* 8003DF70 030E7825 */ or $t7, $t8, $t6
    /* 8003DF74 00A8082A */ slt $at, $a1, $t0
    /* 8003DF78 AC4F0004 */ sw $t7, 0x4($v0)
    /* 8003DF7C 1420FFBA */ bnez $at, .L8003DE68
    /* 8003DF80 244A0008 */ addiu $t2, $v0, 0x8
.L8003DF84:
    /* 8003DF84 8EF9003C */ lw $t9, 0x3C($s7)
    /* 8003DF88 8EEF0038 */ lw $t7, 0x38($s7)
    /* 8003DF8C 01401025 */ move $v0, $t2
    /* 8003DF90 0328C021 */ addu $t8, $t9, $t0
    /* 8003DF94 330E000F */ andi $t6, $t8, 0xF
    /* 8003DF98 8EF80044 */ lw $t8, 0x44($s7)
    /* 8003DF9C AEEE003C */ sw $t6, 0x3C($s7)
    /* 8003DFA0 01E8C821 */ addu $t9, $t7, $t0
    /* 8003DFA4 03097021 */ addu $t6, $t8, $t1
    /* 8003DFA8 AEF90038 */ sw $t9, 0x38($s7)
    /* 8003DFAC 1000005D */ b .L8003E124
    /* 8003DFB0 AEEE0044 */ sw $t6, 0x44($s7)
.L8003DFB4:
    /* 8003DFB4 8EE20028 */ lw $v0, 0x28($s7)
    /* 8003DFB8 001E7903 */ sra $t7, $fp, 4
    /* 8003DFBC 8EF90044 */ lw $t9, 0x44($s7)
    /* 8003DFC0 000F48C0 */ sll $t1, $t7, 3
    /* 8003DFC4 8C580000 */ lw $t8, 0x0($v0)
    /* 8003DFC8 012F4821 */ addu $t1, $t1, $t7
    /* 8003DFCC 01E0F025 */ move $fp, $t7
    /* 8003DFD0 8C4F0004 */ lw $t7, 0x4($v0)
    /* 8003DFD4 03295821 */ addu $t3, $t9, $t1
    /* 8003DFD8 01787023 */ subu $t6, $t3, $t8
    /* 8003DFDC 01CF1823 */ subu $v1, $t6, $t7
    /* 8003DFE0 04610002 */ bgez $v1, .L8003DFEC
    /* 8003DFE4 001E2900 */ sll $a1, $fp, 4
    /* 8003DFE8 00001825 */ move $v1, $zero
.L8003DFEC:
    /* 8003DFEC 0061001A */ div $zero, $v1, $at
    /* 8003DFF0 00001012 */ mflo $v0
    /* 8003DFF4 00022100 */ sll $a0, $v0, 4
    /* 8003DFF8 00A66021 */ addu $t4, $a1, $a2
    /* 8003DFFC 0184082A */ slt $at, $t4, $a0
    /* 8003E000 10200002 */ beqz $at, .L8003E00C
    /* 8003E004 01408025 */ move $s0, $t2
    /* 8003E008 01802025 */ move $a0, $t4
.L8003E00C:
    /* 8003E00C 3098000F */ andi $t8, $a0, 0xF
    /* 8003E010 00987023 */ subu $t6, $a0, $t8
    /* 8003E014 01C8082A */ slt $at, $t6, $t0
    /* 8003E018 1020002B */ beqz $at, .L8003E0C8
    /* 8003E01C 01233023 */ subu $a2, $t1, $v1
    /* 8003E020 84F50000 */ lh $s5, 0x0($a3)
    /* 8003E024 8EF40040 */ lw $s4, 0x40($s7)
    /* 8003E028 240D0001 */ addiu $t5, $zero, 0x1
    /* 8003E02C AFAD007C */ sw $t5, 0x7C($sp)
    /* 8003E030 AFAC0050 */ sw $t4, 0x50($sp)
    /* 8003E034 AFA9005C */ sw $t1, 0x5C($sp)
    /* 8003E038 AFA800B8 */ sw $t0, 0xB8($sp)
    /* 8003E03C AFA700B4 */ sw $a3, 0xB4($sp)
    /* 8003E040 AFA40090 */ sw $a0, 0x90($sp)
    /* 8003E044 02E09025 */ move $s2, $s7
    /* 8003E048 00A4B023 */ subu $s6, $a1, $a0
    /* 8003E04C 00C08825 */ move $s1, $a2
    /* 8003E050 0C00F6E2 */ jal func_8003DB88
    /* 8003E054 00009825 */ move $s3, $zero
    /* 8003E058 8EE3003C */ lw $v1, 0x3C($s7)
    /* 8003E05C 8FA40090 */ lw $a0, 0x90($sp)
    /* 8003E060 8FA700B4 */ lw $a3, 0xB4($sp)
    /* 8003E064 8FA800B8 */ lw $t0, 0xB8($sp)
    /* 8003E068 8FA9005C */ lw $t1, 0x5C($sp)
    /* 8003E06C 8FAC0050 */ lw $t4, 0x50($sp)
    /* 8003E070 8FAD007C */ lw $t5, 0x7C($sp)
    /* 8003E074 10600006 */ beqz $v1, .L8003E090
    /* 8003E078 00405025 */ move $t2, $v0
    /* 8003E07C 84EF0000 */ lh $t7, 0x0($a3)
    /* 8003E080 0003C840 */ sll $t9, $v1, 1
    /* 8003E084 01F9C021 */ addu $t8, $t7, $t9
    /* 8003E088 10000004 */ b .L8003E09C
    /* 8003E08C A4F80000 */ sh $t8, 0x0($a3)
.L8003E090:
    /* 8003E090 84EE0000 */ lh $t6, 0x0($a3)
    /* 8003E094 25CF0020 */ addiu $t7, $t6, 0x20
    /* 8003E098 A4EF0000 */ sh $t7, 0x0($a3)
.L8003E09C:
    /* 8003E09C 8EF9003C */ lw $t9, 0x3C($s7)
    /* 8003E0A0 8EEF0038 */ lw $t7, 0x38($s7)
    /* 8003E0A4 0328C021 */ addu $t8, $t9, $t0
    /* 8003E0A8 330E000F */ andi $t6, $t8, 0xF
    /* 8003E0AC 8EF80044 */ lw $t8, 0x44($s7)
    /* 8003E0B0 AEEE003C */ sw $t6, 0x3C($s7)
    /* 8003E0B4 01E8C821 */ addu $t9, $t7, $t0
    /* 8003E0B8 03097021 */ addu $t6, $t8, $t1
    /* 8003E0BC AEF90038 */ sw $t9, 0x38($s7)
    /* 8003E0C0 10000003 */ b .L8003E0D0
    /* 8003E0C4 AEEE0044 */ sw $t6, 0x44($s7)
.L8003E0C8:
    /* 8003E0C8 AEE0003C */ sw $zero, 0x3C($s7)
    /* 8003E0CC AEEB0044 */ sw $t3, 0x44($s7)
.L8003E0D0:
    /* 8003E0D0 10800013 */ beqz $a0, .L8003E120
    /* 8003E0D4 01401025 */ move $v0, $t2
    /* 8003E0D8 11A00005 */ beqz $t5, .L8003E0F0
    /* 8003E0DC AEE0003C */ sw $zero, 0x3C($s7)
    /* 8003E0E0 01841823 */ subu $v1, $t4, $a0
    /* 8003E0E4 00037840 */ sll $t7, $v1, 1
    /* 8003E0E8 10000002 */ b .L8003E0F4
    /* 8003E0EC 01E01825 */ move $v1, $t7
.L8003E0F0:
    /* 8003E0F0 00001825 */ move $v1, $zero
.L8003E0F4:
    /* 8003E0F4 84F90000 */ lh $t9, 0x0($a3)
    /* 8003E0F8 3C0100FF */ lui $at, 0xFF
    /* 8003E0FC 3421FFFF */ ori $at, $at, 0xFFFF
    /* 8003E100 0323C021 */ addu $t8, $t9, $v1
    /* 8003E104 03017024 */ and $t6, $t8, $at
    /* 8003E108 3C010200 */ lui $at, 0x200
    /* 8003E10C 01C17825 */ or $t7, $t6, $at
    /* 8003E110 0004C840 */ sll $t9, $a0, 1
    /* 8003E114 AC590004 */ sw $t9, 0x4($v0)
    /* 8003E118 AC4F0000 */ sw $t7, 0x0($v0)
    /* 8003E11C 254A0008 */ addiu $t2, $t2, 0x8
.L8003E120:
    /* 8003E120 01401025 */ move $v0, $t2
.L8003E124:
    /* 8003E124 8FBF004C */ lw $ra, 0x4C($sp)
    /* 8003E128 8FB00028 */ lw $s0, 0x28($sp)
    /* 8003E12C 8FB1002C */ lw $s1, 0x2C($sp)
    /* 8003E130 8FB20030 */ lw $s2, 0x30($sp)
    /* 8003E134 8FB30034 */ lw $s3, 0x34($sp)
    /* 8003E138 8FB40038 */ lw $s4, 0x38($sp)
    /* 8003E13C 8FB5003C */ lw $s5, 0x3C($sp)
    /* 8003E140 8FB60040 */ lw $s6, 0x40($sp)
    /* 8003E144 8FB70044 */ lw $s7, 0x44($sp)
    /* 8003E148 8FBE0048 */ lw $fp, 0x48($sp)
    /* 8003E14C 03E00008 */ jr $ra
    /* 8003E150 27BD00B0 */ addiu $sp, $sp, 0xB0
    /* 8003E154 00000000 */ nop
