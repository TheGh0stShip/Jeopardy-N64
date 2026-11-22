#ifndef JEOPARDY_N64DK_LIFT_H
#define JEOPARDY_N64DK_LIFT_H

typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;

/* Provisional names retained only where shared game structures are not recovered yet. */
typedef s32 M2C_UNK;
#define M2C_FIELD(expr, type_ptr, offset) (*(type_ptr)((s8 *)(expr) + (offset)))

#ifndef NULL
#define NULL ((void *)0)
#endif

typedef char static_assert_s8[sizeof(s8) == 1 ? 1 : -1];
typedef char static_assert_s16[sizeof(s16) == 2 ? 1 : -1];
typedef char static_assert_s32[sizeof(s32) == 4 ? 1 : -1];
typedef char static_assert_s64[sizeof(s64) == 8 ? 1 : -1];

#endif
