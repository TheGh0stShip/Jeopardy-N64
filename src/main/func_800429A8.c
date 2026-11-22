typedef signed short s16; typedef signed int s32; typedef unsigned int u32;
typedef s32 ALMicroTime;
typedef u32 OSIntMask;

typedef struct ALLink_s {
    struct ALLink_s *next;
    struct ALLink_s *prev;
} ALLink;

typedef struct {
    s16 type;
    s16 pad;
    s32 data[3];
} ALEvent;

typedef struct {
    ALLink node;
    ALMicroTime delta;
    ALEvent evt;
} ALEventListItem;

typedef struct {
    ALLink freeList;
    ALLink allocList;
    s32 eventCount;
} ALEventQueue;

extern void alUnlink(ALLink *element);
extern void alLink(ALLink *element, ALLink *after);
extern void alCopy(void *src, void *dest, s32 len);
extern OSIntMask osSetIntMask(OSIntMask im);

ALMicroTime alEvtqNextEvent(ALEventQueue *evtq, ALEvent *evt)
{
    ALEventListItem *item;
    ALMicroTime delta;
    OSIntMask mask;

    mask = osSetIntMask(1);
    item = (ALEventListItem *)evtq->allocList.next;

    if (item) {
        alUnlink((ALLink *)item);
        alCopy(&item->evt, evt, sizeof(*evt));
        alLink((ALLink *)item, &evtq->freeList);
        delta = item->delta;
    } else {
        evt->type = -1;
        delta = 0;
    }

    osSetIntMask(mask);
    return delta;
}
