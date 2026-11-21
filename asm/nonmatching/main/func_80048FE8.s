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
glabel func_80048FE8
    /* 80048FE8 27BDFF80 */ addiu $sp, $sp, -0x80
    /* 80048FEC 3C0E8007 */ lui $t6, %hi(D_80072368)
    /* 80048FF0 8DCE2368 */ lw $t6, %lo(D_80072368)($t6)
    /* 80048FF4 AFBF0024 */ sw $ra, 0x24($sp)
    /* 80048FF8 AFA40080 */ sw $a0, 0x80($sp)
    /* 80048FFC AFA50084 */ sw $a1, 0x84($sp)
    /* 80049000 AFA60088 */ sw $a2, 0x88($sp)
    /* 80049004 11C00003 */ beqz $t6, .L80049014
    /* 80049008 AFA00078 */ sw $zero, 0x78($sp)
    /* 8004900C 10000070 */ b .L800491D0
    /* 80049010 00001025 */ move $v0, $zero
.L80049014:
    /* 80049014 240F0001 */ addiu $t7, $zero, 0x1
    /* 80049018 3C018007 */ lui $at, %hi(D_80072368)
    /* 8004901C 0C011F52 */ jal osGetTime
    /* 80049020 AC2F2368 */ sw $t7, %lo(D_80072368)($at)
    /* 80049024 3C050007 */ lui $a1, 0x7
    /* 80049028 3C068007 */ lui $a2, %hi(D_80072338)
    /* 8004902C 3C078007 */ lui $a3, %hi(D_8007233C)
    /* 80049030 AFA20070 */ sw $v0, 0x70($sp)
    /* 80049034 AFA30074 */ sw $v1, 0x74($sp)
    /* 80049038 8CE7233C */ lw $a3, %lo(D_8007233C)($a3)
    /* 8004903C 8CC62338 */ lw $a2, %lo(D_80072338)($a2)
    /* 80049040 34A5A120 */ ori $a1, $a1, 0xA120
    /* 80049044 0C01207C */ jal __ll_mul
    /* 80049048 24040000 */ addiu $a0, $zero, 0x0
    /* 8004904C AFA20030 */ sw $v0, 0x30($sp)
    /* 80049050 AFA30034 */ sw $v1, 0x34($sp)
    /* 80049054 3C07000F */ lui $a3, 0xF
    /* 80049058 34E74240 */ ori $a3, $a3, 0x4240
    /* 8004905C 8FA50034 */ lw $a1, 0x34($sp)
    /* 80049060 8FA40030 */ lw $a0, 0x30($sp)
    /* 80049064 0C01203C */ jal __ull_div
    /* 80049068 24060000 */ addiu $a2, $zero, 0x0
    /* 8004906C 8FB80070 */ lw $t8, 0x70($sp)
    /* 80049070 8FB90074 */ lw $t9, 0x74($sp)
    /* 80049074 0058082B */ sltu $at, $v0, $t8
    /* 80049078 14200031 */ bnez $at, .L80049140
    /* 8004907C 0302082B */ sltu $at, $t8, $v0
    /* 80049080 14200003 */ bnez $at, .L80049090
    /* 80049084 0323082B */ sltu $at, $t9, $v1
    /* 80049088 1020002D */ beqz $at, .L80049140
    /* 8004908C 00000000 */ nop
.L80049090:
    /* 80049090 27A40038 */ addiu $a0, $sp, 0x38
    /* 80049094 27A5007C */ addiu $a1, $sp, 0x7C
    /* 80049098 0C01210E */ jal osCreateMesgQueue
    /* 8004909C 24060001 */ addiu $a2, $zero, 0x1
    /* 800490A0 3C050007 */ lui $a1, 0x7
    /* 800490A4 3C068007 */ lui $a2, %hi(D_80072338)
    /* 800490A8 3C078007 */ lui $a3, %hi(D_8007233C)
    /* 800490AC 8CE7233C */ lw $a3, %lo(D_8007233C)($a3)
    /* 800490B0 8CC62338 */ lw $a2, %lo(D_80072338)($a2)
    /* 800490B4 34A5A120 */ ori $a1, $a1, 0xA120
    /* 800490B8 0C01207C */ jal __ll_mul
    /* 800490BC 24040000 */ addiu $a0, $zero, 0x0
    /* 800490C0 AFA20028 */ sw $v0, 0x28($sp)
    /* 800490C4 AFA3002C */ sw $v1, 0x2C($sp)
    /* 800490C8 3C07000F */ lui $a3, 0xF
    /* 800490CC 34E74240 */ ori $a3, $a3, 0x4240
    /* 800490D0 8FA5002C */ lw $a1, 0x2C($sp)
    /* 800490D4 8FA40028 */ lw $a0, 0x28($sp)
    /* 800490D8 0C01203C */ jal __ull_div
    /* 800490DC 24060000 */ addiu $a2, $zero, 0x0
    /* 800490E0 AFA20030 */ sw $v0, 0x30($sp)
    /* 800490E4 AFA30034 */ sw $v1, 0x34($sp)
    /* 800490E8 8FA90034 */ lw $t1, 0x34($sp)
    /* 800490EC 8FA80030 */ lw $t0, 0x30($sp)
    /* 800490F0 8FAA0070 */ lw $t2, 0x70($sp)
    /* 800490F4 8FAB0074 */ lw $t3, 0x74($sp)
    /* 800490F8 240C0000 */ addiu $t4, $zero, 0x0
    /* 800490FC 240D0000 */ addiu $t5, $zero, 0x0
    /* 80049100 27AE0038 */ addiu $t6, $sp, 0x38
    /* 80049104 27AF007C */ addiu $t7, $sp, 0x7C
    /* 80049108 010A3023 */ subu $a2, $t0, $t2
    /* 8004910C 012B082B */ sltu $at, $t1, $t3
    /* 80049110 00C13023 */ subu $a2, $a2, $at
    /* 80049114 AFAF001C */ sw $t7, 0x1C($sp)
    /* 80049118 AFAE0018 */ sw $t6, 0x18($sp)
    /* 8004911C AFAD0014 */ sw $t5, 0x14($sp)
    /* 80049120 AFAC0010 */ sw $t4, 0x10($sp)
    /* 80049124 27A40050 */ addiu $a0, $sp, 0x50
    /* 80049128 0C0124EA */ jal osSetTimer
    /* 8004912C 012B3823 */ subu $a3, $t1, $t3
    /* 80049130 27A40038 */ addiu $a0, $sp, 0x38
    /* 80049134 27A5007C */ addiu $a1, $sp, 0x7C
    /* 80049138 0C0104AE */ jal osRecvMesg
    /* 8004913C 24060001 */ addiu $a2, $zero, 0x1
.L80049140:
    /* 80049140 24180004 */ addiu $t8, $zero, 0x4
    /* 80049144 3C01800D */ lui $at, %hi(D_800D31A1)
    /* 80049148 A03831A1 */ sb $t8, %lo(D_800D31A1)($at)
    /* 8004914C 0C0124AC */ jal __osPackRequestData
    /* 80049150 00002025 */ move $a0, $zero
    /* 80049154 3C05800D */ lui $a1, %hi(D_800D3160)
    /* 80049158 24A53160 */ addiu $a1, $a1, %lo(D_800D3160)
    /* 8004915C 0C01239E */ jal __osSiRawStartDma
    /* 80049160 24040001 */ addiu $a0, $zero, 0x1
    /* 80049164 AFA20078 */ sw $v0, 0x78($sp)
    /* 80049168 8FA40080 */ lw $a0, 0x80($sp)
    /* 8004916C 27A5007C */ addiu $a1, $sp, 0x7C
    /* 80049170 0C0104AE */ jal osRecvMesg
    /* 80049174 24060001 */ addiu $a2, $zero, 0x1
    /* 80049178 3C05800D */ lui $a1, %hi(D_800D3160)
    /* 8004917C 24A53160 */ addiu $a1, $a1, %lo(D_800D3160)
    /* 80049180 0C01239E */ jal __osSiRawStartDma
    /* 80049184 00002025 */ move $a0, $zero
    /* 80049188 AFA20078 */ sw $v0, 0x78($sp)
    /* 8004918C 8FA40080 */ lw $a0, 0x80($sp)
    /* 80049190 27A5007C */ addiu $a1, $sp, 0x7C
    /* 80049194 0C0104AE */ jal osRecvMesg
    /* 80049198 24060001 */ addiu $a2, $zero, 0x1
    /* 8004919C 8FA40084 */ lw $a0, 0x84($sp)
    /* 800491A0 0C012478 */ jal __osContGetInitData
    /* 800491A4 8FA50088 */ lw $a1, 0x88($sp)
    /* 800491A8 3C01800D */ lui $at, %hi(D_800D31A0)
    /* 800491AC 0C0123CA */ jal __osSiCreateAccessQueue
    /* 800491B0 A02031A0 */ sb $zero, %lo(D_800D31A0)($at)
    /* 800491B4 3C04800D */ lui $a0, %hi(D_800D31C8)
    /* 800491B8 3C05800D */ lui $a1, %hi(D_800D31E0)
    /* 800491BC 24A531E0 */ addiu $a1, $a1, %lo(D_800D31E0)
    /* 800491C0 248431C8 */ addiu $a0, $a0, %lo(D_800D31C8)
    /* 800491C4 0C01210E */ jal osCreateMesgQueue
    /* 800491C8 24060001 */ addiu $a2, $zero, 0x1
    /* 800491CC 8FA20078 */ lw $v0, 0x78($sp)
.L800491D0:
    /* 800491D0 8FBF0024 */ lw $ra, 0x24($sp)
    /* 800491D4 27BD0080 */ addiu $sp, $sp, 0x80
    /* 800491D8 03E00008 */ jr $ra
    /* 800491DC 00000000 */ nop
