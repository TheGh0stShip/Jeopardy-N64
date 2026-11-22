typedef signed char s8; typedef unsigned char u8; typedef signed short s16; typedef unsigned short u16;
typedef signed int s32; typedef unsigned int u32;
typedef void *OSMesg;
typedef struct OSMesgQueue OSMesgQueue;

typedef struct {
    u32 errStatus;
    void *dramAddr;
    void *C2Addr;
    u32 sectorSize;
    u32 C1ErrNum;
    u32 C1ErrSector[4];
} __OSBlockInfo;

typedef struct {
    u32 cmdType;
    u16 transferMode;
    u16 blockNum;
    s32 sectorNum;
    u32 devAddr;
    u32 bmCtlShadow;
    u32 seqCtlShadow;
    __OSBlockInfo block[2];
} __OSTranxInfo;

typedef struct OSPiHandle_s {
    struct OSPiHandle_s *next;
    u8 type;
    u8 latency;
    u8 pageSize;
    u8 relDuration;
    u8 pulse;
    u8 domain;
    u32 baseAddress;
    u32 speed;
    __OSTranxInfo transferInfo;
} OSPiHandle;

typedef struct {
    u16 type;
    u8 pri;
    u8 status;
    OSMesgQueue *retQueue;
} OSIoMesgHdr;

typedef struct {
    OSIoMesgHdr hdr;
    void *dramAddr;
    u32 devAddr;
    u32 size;
    OSPiHandle *piHandle;
} OSIoMesg;

typedef struct {
    s32 active;
    void *thread;
    OSMesgQueue *cmdQueue;
    OSMesgQueue *evtQueue;
    OSMesgQueue *acsQueue;
    s32 (*dma)(s32, u32, void *, u32);
    s32 (*edma)(OSPiHandle *, s32, u32, void *, u32);
} OSDevMgr;

s32 func_800412B8(OSMesgQueue *, OSMesg *, s32);
s32 func_80041458(OSMesgQueue *, OSMesg, s32);
void func_800413F8(u32);
void func_80041618(u32);
s32 func_8003CB18(OSPiHandle *, u32, u32);
s32 func_8003CAC8(OSPiHandle *, u32, u32 *);
void func_8003F2B8(void);

void func_8003C638(void *args) {
    OSIoMesg *mb;
    OSMesg em;
    OSMesg dummy;
    s32 ret;
    OSDevMgr *dm;
    s32 messageSend = 0;

    dm = (OSDevMgr *)args;
    mb = 0;
    ret = 0;

    while (1) {
        func_800412B8(dm->cmdQueue, (OSMesg *)&mb, 1);

        if (mb->piHandle != 0 && mb->piHandle->type == 2 &&
            (mb->piHandle->transferInfo.cmdType == 0 || mb->piHandle->transferInfo.cmdType == 1)) {
            __OSBlockInfo *blockInfo;
            __OSTranxInfo *info;

            info = &mb->piHandle->transferInfo;
            blockInfo = &info->block[info->blockNum];
            info->sectorNum = -1;

            if (info->transferMode != 3) {
                blockInfo->dramAddr = (void *)((u32)blockInfo->dramAddr - blockInfo->sectorSize);
            }

            if (info->transferMode == 2 && mb->piHandle->transferInfo.cmdType == 0) {
                messageSend = 1;
            } else {
                messageSend = 0;
            }

            func_800412B8(dm->acsQueue, &dummy, 1);
            func_800413F8(0x00100401);
            func_8003CB18(mb->piHandle, 0x05000510, info->bmCtlShadow | 0x80000000);
        doMessageSend:
            func_800412B8(dm->evtQueue, &em, 1);
            info = &mb->piHandle->transferInfo;
            blockInfo = &info->block[info->blockNum];
            if (blockInfo->errStatus == 29) {
                u32 stat;

                func_8003CB18(mb->piHandle, 0x05000510, info->bmCtlShadow | 0x10000000);
                func_8003CB18(mb->piHandle, 0x05000510, info->bmCtlShadow);
                func_8003CAC8(mb->piHandle, 0x05000508, &stat);
                if (stat & 0x02000000) {
                    func_8003CB18(mb->piHandle, 0x05000510, info->bmCtlShadow | 0x01000000);
                }
                blockInfo->errStatus = 4;
                *(volatile u32 *)0xA4600010 = 2;
                func_80041618(0x00100C01);
            }
            func_80041458(mb->hdr.retQueue, mb, 0);

            if (messageSend == 1 && mb->piHandle->transferInfo.block[0].errStatus == 0) {
                messageSend = 0;
                goto doMessageSend;
            }
            func_80041458(dm->acsQueue, 0, 0);
            if (mb->piHandle->transferInfo.blockNum == 1) {
                func_8003F2B8();
            }
        } else {
            switch (mb->hdr.type) {
                case 11:
                    func_800412B8(dm->acsQueue, &dummy, 1);
                    ret = dm->dma(0, mb->devAddr, mb->dramAddr, mb->size);
                    break;
                case 12:
                    func_800412B8(dm->acsQueue, &dummy, 1);
                    ret = dm->dma(1, mb->devAddr, mb->dramAddr, mb->size);
                    break;
                case 15:
                    func_800412B8(dm->acsQueue, &dummy, 1);
                    ret = dm->edma(mb->piHandle, 0, mb->devAddr, mb->dramAddr, mb->size);
                    break;
                case 16:
                    func_800412B8(dm->acsQueue, &dummy, 1);
                    ret = dm->edma(mb->piHandle, 1, mb->devAddr, mb->dramAddr, mb->size);
                    break;
                case 10:
                    func_80041458(mb->hdr.retQueue, mb, 0);
                    ret = -1;
                    break;
                default:
                    ret = -1;
                    break;
            }

            if (ret == 0) {
                func_800412B8(dm->evtQueue, &em, 1);
                func_80041458(mb->hdr.retQueue, mb, 0);
                func_80041458(dm->acsQueue, 0, 0);
            }
        }
    }
}
