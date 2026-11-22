typedef int s32;
typedef struct {
    /* 0x00 */ char unk_0[0x28];
    /* 0x28 */ s32 unk_28;
    /* 0x2C */ char unk_2C[0x4];
} Entry; /* size 0x30 */

typedef struct {
    /* 0x00 */ char unk_0[0x3C];
    /* 0x3C */ s32 unk_3C;
    /* 0x40 */ Entry *unk_40;
} Obj;
s32 func_8003FDD8(Obj *arg0) {
    Entry *e = arg0->unk_40;
    return (arg0->unk_3C + e)->unk_28;
}
