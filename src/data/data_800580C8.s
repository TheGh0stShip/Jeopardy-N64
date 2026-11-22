# D_800580C8, D_800580CC: two zero s32 globals (extern s32 in many matched functions).
# .s only because IDO aligns a .c file's .data to 16 and 0x800580C8 is 8-aligned.
.section .d6data, "wa", @progbits
.balign 4
.globl D_800580C8
D_800580C8: .word 0
.globl D_800580CC
D_800580CC: .word 0
