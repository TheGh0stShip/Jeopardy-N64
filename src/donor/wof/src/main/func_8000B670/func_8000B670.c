typedef unsigned char u8;
typedef signed int s32;
typedef struct Node {
               u8 unk_00[0x8];
               s32 unk_08;
               u8 unk_0C[0x44];
               struct Node *next;
} Node;
s32 func_8000B670(s32 arg0, s32 arg1, s32 arg2)
{
    while (((Node *)arg0)->next != 0) {
        arg0 = (s32)((Node *)arg0)->next;
        if ((((Node *)arg0)->unk_08 & arg2) == arg1) {
            return arg0;
        }
    }
    return 0;
}
