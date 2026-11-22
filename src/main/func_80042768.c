typedef signed short s16;
typedef signed int s32;
typedef unsigned int u32;
typedef u32 OSIntMask;
typedef s32 ALMicroTime;

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

extern OSIntMask osSetIntMask(OSIntMask);
extern void alUnlink(ALLink *);
extern void alLink(ALLink *, ALLink *);

void func_80042768(ALEventQueue *evtq, s16 type)
{
    ALLink *thisNode;
    ALLink *nextNode;
    ALEventListItem *thisItem, *nextItem;
    OSIntMask mask;

    mask = osSetIntMask(1);

    thisNode = evtq->allocList.next;
    while (thisNode != 0) {
        nextNode = thisNode->next;
        thisItem = (ALEventListItem *)thisNode;
        nextItem = (ALEventListItem *)nextNode;
        if (thisItem->evt.type == type) {
            if (nextItem) {
                nextItem->delta += thisItem->delta;
            }
            alUnlink(thisNode);
            alLink(thisNode, &evtq->freeList);
        }
        thisNode = nextNode;
    }

    osSetIntMask(mask);
}
