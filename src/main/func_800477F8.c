typedef int s32; typedef short s16;
typedef struct ALLink_s { struct ALLink_s *next; struct ALLink_s *prev; } ALLink;
void alUnlink(ALLink *element);
void alLink(ALLink *element, ALLink *after);
typedef struct { char pad[0x16]; short priority; } ALVoice;
typedef struct PVoice_s { ALLink node; ALVoice *vvoice; char pad[0xD8 - 0xC]; long offset; } PVoice;
typedef struct { char pad[4]; ALLink pFreeList; ALLink pAllocList; ALLink pLameList; } ALSynth;

s32 func_800477F8(ALSynth *drvr, PVoice **pvoice, s16 priority)
{
    ALLink *dl;
    PVoice *pv;
    s32 stolen = 0;

    if ((dl = drvr->pLameList.next) != 0) {
        *pvoice = (PVoice *)dl;
        alUnlink(dl);
        alLink(dl, &drvr->pAllocList);
    } else if ((dl = drvr->pFreeList.next) != 0) {
        *pvoice = (PVoice *)dl;
        alUnlink(dl);
        alLink(dl, &drvr->pAllocList);
    } else {
        for (dl = drvr->pAllocList.next; dl != 0; dl = dl->next) {
            pv = (PVoice *)dl;
            if ((pv->vvoice->priority <= priority) && (pv->offset == 0)) {
                *pvoice = pv;
                priority = pv->vvoice->priority;
                stolen = 1;
            }
        }
    }
    return stolen;
}
