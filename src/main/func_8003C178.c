typedef unsigned char u8; typedef signed int s32; typedef unsigned int u32;

typedef struct {
    /* 0x00 */ void *next;
    /* 0x04 */ u8 type;
    /* 0x05 */ u8 latency;
    /* 0x06 */ u8 pageSize;
    /* 0x07 */ u8 relDuration;
    /* 0x08 */ u8 pulse;
    /* 0x09 */ u8 domain;
    /* 0x0C */ u32 baseAddress;
} PiHandle;

extern PiHandle *D_80071FD8[];
u32 osVirtualToPhysical(void *);

s32 func_8003C178(PiHandle *pihandle, s32 direction, u32 devAddr, void *dramAddr, u32 size) {
    u32 stat;
    u32 domain;
    PiHandle *cHandle;

    stat = *(u32 *)0xA4600010;
    while (stat & 3) {
        stat = *(u32 *)0xA4600010;
    }
    domain = pihandle->domain;
    if (D_80071FD8[domain] != pihandle) {
        cHandle = D_80071FD8[domain];
        if (domain == 0) {
            if (cHandle->latency != pihandle->latency) {
                *(u32 *)0xA4600014 = pihandle->latency;
            }
            if (cHandle->pageSize != pihandle->pageSize) {
                *(u32 *)0xA460001C = pihandle->pageSize;
            }
            if (cHandle->relDuration != pihandle->relDuration) {
                *(u32 *)0xA4600020 = pihandle->relDuration;
            }
            if (cHandle->pulse != pihandle->pulse) {
                *(u32 *)0xA4600018 = pihandle->pulse;
            }
        } else {
            if (cHandle->latency != pihandle->latency) {
                *(u32 *)0xA4600024 = pihandle->latency;
            }
            if (cHandle->pageSize != pihandle->pageSize) {
                *(u32 *)0xA460002C = pihandle->pageSize;
            }
            if (cHandle->relDuration != pihandle->relDuration) {
                *(u32 *)0xA4600030 = pihandle->relDuration;
            }
            if (cHandle->pulse != pihandle->pulse) {
                *(u32 *)0xA4600028 = pihandle->pulse;
            }
        }
        D_80071FD8[domain] = pihandle;
    }
    *(u32 *)0xA4600000 = osVirtualToPhysical(dramAddr);
    *(u32 *)0xA4600004 = (pihandle->baseAddress | devAddr) & 0x1FFFFFFF;
    switch (direction) {
        case 0:
            *(u32 *)0xA460000C = size - 1;
            break;
        case 1:
            *(u32 *)0xA4600008 = size - 1;
            break;
        default:
            return -1;
    }
    return 0;
}
