typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16; typedef signed int s32;
typedef struct { u8 pad0[0x4]; u16 unk4; u8 pad6[0xA8 - 0x6]; u8 unkA8[256]; } Font;
struct n64dk_a80055B74 { u8 m0; u8 m1; u8 m2; };
extern struct n64dk_a80055B74 D_80055B74[];
extern u8 *D_800DE540;
extern s32 D_800E333C;
extern Font *D_800E3724;
extern u16 D_800E3B34;
s32 func_80011998();

s32 func_80014090(void) {
    u16 sp10;

    if (*D_800DE540 == 0) {
        return 0x8000;
        return;
    }
    if (*D_800DE540 == 126) {
        D_800DE540++;
        switch (*D_800DE540) {
        case 99:
            D_800DE540++;
            if (((s16)func_80011998(*D_800DE540)) != 0) {
                D_800E333C = (((*D_800DE540++ - 48) * 255) / 9) << 16;
                D_800E333C = D_800E333C + ((((*D_800DE540++ - 48) * 255) / 9) << 8);
                D_800E333C = D_800E333C + (((*D_800DE540++ - 48) * 255) / 9);
            } else {
                sp10 = *D_800DE540++ - 97;
                D_800E333C = D_80055B74[sp10].m0 << 16;
                D_800E333C = D_800E333C + (D_80055B74[sp10].m1 << 8);
                D_800E333C = D_800E333C + D_80055B74[sp10].m2;
            }
            return 0x800C;
        case 102:
            D_800DE540++;
            D_800E333C = *D_800DE540++ - 48;
            return 0x800F;
        case 105:
            D_800DE540++;
            D_800E333C = *D_800DE540++ - 48;
            return 0x8009;
        case 98:
            D_800DE540++;
            return 0x800A;
        case 66:
            D_800DE540++;
            return 0x800B;
        case 117:
            D_800DE540++;
            return 0x8007;
        case 85:
            D_800DE540++;
            return 0x8008;
        case 71:
            D_800DE540++;
            return 0x8010;
        case 103:
            D_800DE540++;
            return 0x8011;
        case 78:
            D_800DE540++;
            return 0x8012;
        case 110:
            D_800DE540++;
            return 0x8013;
        case 89:
            D_800DE540++;
            return 0x8014;
        case 121:
            D_800DE540++;
            return 0x8015;
        case 87:
            D_800DE540++;
            return 0x8016;
        case 119:
            D_800DE540++;
            return 0x8017;
        case 115:
            D_800DE540++;
            sp10 = *D_800DE540++ - 48;
            for (;;) {
                if (*D_800DE540++ == 45) {
                    break;
                }
                sp10 = ((*D_800DE540 - 48) * 10) + sp10;
            }
            sp10 = sp10 << 9;
            D_800E333C = *D_800DE540++ - 48;
            for (;;) {
                if (((s16)func_80011998(*D_800DE540)) == 0) {
                    break;
                }
                D_800E333C = D_800E333C + ((*D_800DE540++ - 48) * 10);
            }
            D_800E333C = D_800E333C | sp10;
            return 0x8018;
        case 114:
            D_800DE540++;
            D_800E333C = *D_800DE540 - 48;
            for (;;) {
                if (((s16)func_80011998(*D_800DE540++)) == 0) {
                    break;
                }
                D_800E333C = D_800E333C + ((*D_800DE540 - 48) * 10);
            }
            return 0x8019;
        }
        return;
    }
    D_800E3B34 = D_800E3B34 - (D_800E3724->unkA8[*D_800DE540] + D_800E3724->unk4);
    if ((*(s16 *)&D_800E3B34) < 0) {
        D_800E333C = *D_800DE540;
        return 0x800D;
    }
    D_800DE540++;
    return D_800DE540[-1];
}
