typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;

typedef struct { s32 w[3]; } Ret3;
typedef struct { u8 pad[0x48]; void *unk48; } Obj;

extern u8 D_010308E0[];
extern u8 D_010B4290[];
extern void func_80018550();
extern void D_80018DF0();
extern void *D_80055F28[][5];
extern Obj *D_800E3648[];
extern Obj *D_800E5C84;
extern Obj *D_800E8FB4;
extern Obj *D_800E8FE8[];
s32 func_80027388();
Obj *func_80027504();
u32 func_80035E48();

Ret3 func_80018AAC(s32 arg0) {
    s32 pad0[2];
    Ret3 ret;
    s32 msg;
    s32 i;
    s32 pad1[2];
    s8 pad2;

    for (;;) {
        if (((msg = func_80035E48(arg0)) & 0xFFFF) == 0) {
            break;
        }
        switch ((u32)(msg & 0xFFFF)) {
        case 8:
            D_800E5C84 = func_80027504(i, D_80018DF0, 0x4000000);
            D_800E5C84->unk48 = D_010308E0;
            D_800E8FB4 = func_80027504(i, D_80018DF0, 0x4000000);
            D_800E8FB4->unk48 = D_010B4290;
            for (i = 0; i < 3; i++) {
                D_800E8FE8[i] = func_80027504(i, func_80018550, 0x4000000);
            }
            if (D_800E3648[0] == 0) {
                for (i = 0; i < 6; i++) {
                    D_800E3648[i] = func_80027504(i, D_80018DF0, 0x4000000);
                    D_800E3648[i]->unk48 = *(void **)((u8 *)D_80055F28 + (i * 5 + 1) * 4);
                }
            }
            break;
        case 6:
            break;
        case 45:
            for (i = 0; i < 3; i++) {
                func_80027388(D_800E8FE8[i]);
            }
            func_80027388(D_800E5C84);
            func_80027388(D_800E8FB4);
            ret.w[1] = 0;
            ret.w[0] = 0;
            return ret;
            break;
        }
    }
    ret.w[1] = 2;
    ret.w[0] = -1;
    return ret;
}
