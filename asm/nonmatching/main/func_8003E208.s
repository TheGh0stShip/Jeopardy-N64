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
glabel func_8003E208
    /* 8003E208 27BDFFC0 */ addiu $sp, $sp, -0x40
    /* 8003E20C 8FA80050 */ lw $t0, 0x50($sp)
    /* 8003E210 AFBF003C */ sw $ra, 0x3C($sp)
    /* 8003E214 AFB60038 */ sw $s6, 0x38($sp)
    /* 8003E218 AFB50034 */ sw $s5, 0x34($sp)
    /* 8003E21C AFB40030 */ sw $s4, 0x30($sp)
    /* 8003E220 AFB3002C */ sw $s3, 0x2C($sp)
    /* 8003E224 AFB20028 */ sw $s2, 0x28($sp)
    /* 8003E228 AFB10024 */ sw $s1, 0x24($sp)
    /* 8003E22C AFB00020 */ sw $s0, 0x20($sp)
    /* 8003E230 8C83001C */ lw $v1, 0x1C($a0)
    /* 8003E234 3C0E0200 */ lui $t6, 0x200
    /* 8003E238 00061040 */ sll $v0, $a2, 1
    /* 8003E23C 3C0F0200 */ lui $t7, 0x200
    /* 8003E240 35CE06C0 */ ori $t6, $t6, 0x6C0
    /* 8003E244 35EF0800 */ ori $t7, $t7, 0x800
    /* 8003E248 AD0E0000 */ sw $t6, 0x0($t0)
    /* 8003E24C AD020004 */ sw $v0, 0x4($t0)
    /* 8003E250 AD0F0008 */ sw $t7, 0x8($t0)
    /* 8003E254 AD02000C */ sw $v0, 0xC($t0)
    /* 8003E258 8C980014 */ lw $t8, 0x14($a0)
    /* 8003E25C 00C0A025 */ move $s4, $a2
    /* 8003E260 00A0A825 */ move $s5, $a1
    /* 8003E264 00E0B025 */ move $s6, $a3
    /* 8003E268 00809825 */ move $s3, $a0
    /* 8003E26C 00008025 */ move $s0, $zero
    /* 8003E270 1B000010 */ blez $t8, .L8003E2B4
    /* 8003E274 25120010 */ addiu $s2, $t0, 0x10
    /* 8003E278 00608825 */ move $s1, $v1
.L8003E27C:
    /* 8003E27C 8E240000 */ lw $a0, 0x0($s1)
    /* 8003E280 AFB20010 */ sw $s2, 0x10($sp)
    /* 8003E284 02A02825 */ move $a1, $s5
    /* 8003E288 8C990004 */ lw $t9, 0x4($a0)
    /* 8003E28C 02803025 */ move $a2, $s4
    /* 8003E290 02C03825 */ move $a3, $s6
    /* 8003E294 0320F809 */ jalr $t9
    /* 8003E298 00000000 */ nop
    /* 8003E29C 8E690014 */ lw $t1, 0x14($s3)
    /* 8003E2A0 26100001 */ addiu $s0, $s0, 0x1
    /* 8003E2A4 26310004 */ addiu $s1, $s1, 0x4
    /* 8003E2A8 0209082A */ slt $at, $s0, $t1
    /* 8003E2AC 1420FFF3 */ bnez $at, .L8003E27C
    /* 8003E2B0 00409025 */ move $s2, $v0
.L8003E2B4:
    /* 8003E2B4 8FBF003C */ lw $ra, 0x3C($sp)
    /* 8003E2B8 02401025 */ move $v0, $s2
    /* 8003E2BC 8FB20028 */ lw $s2, 0x28($sp)
    /* 8003E2C0 8FB00020 */ lw $s0, 0x20($sp)
    /* 8003E2C4 8FB10024 */ lw $s1, 0x24($sp)
    /* 8003E2C8 8FB3002C */ lw $s3, 0x2C($sp)
    /* 8003E2CC 8FB40030 */ lw $s4, 0x30($sp)
    /* 8003E2D0 8FB50034 */ lw $s5, 0x34($sp)
    /* 8003E2D4 8FB60038 */ lw $s6, 0x38($sp)
    /* 8003E2D8 03E00008 */ jr $ra
    /* 8003E2DC 27BD0040 */ addiu $sp, $sp, 0x40
    /* 8003E2E0 00000000 */ nop
    /* 8003E2E4 00000000 */ nop
