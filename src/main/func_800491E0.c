typedef unsigned char u8; typedef unsigned short u16; typedef int s32;

typedef struct {
    u8 dummy;
    u8 txsize;
    u8 rxsize;
    u8 cmd;
    u8 typeh;
    u8 typel;
    u8 status;
    u8 dummy1;
} __OSContRequesFormat;

typedef struct {
    u16 type;
    u8 status;
    u8 errno;
} OSContStatus;

extern u8 D_800D3160[];
extern u8 D_800D31A1;

#define CHNL_ERR(format) (((format).rxsize & 0xC0) >> 4)

void func_800491E0(u8 *pattern, OSContStatus *data)
{
    u8 *ptr;
    __OSContRequesFormat requestformat;
    s32 i;
    u8 bits;

    bits = 0;
    ptr = (u8 *)D_800D3160;
    for (i = 0; i < D_800D31A1; i++, ptr += sizeof(requestformat), data++) {
        requestformat = *(__OSContRequesFormat *)ptr;
        data->errno = CHNL_ERR(requestformat);
        if (data->errno == 0) {
            data->type = (requestformat.typel << 8) | requestformat.typeh;
            data->status = requestformat.status;
            bits |= 1 << i;
        }
    }
    *pattern = bits;
}
