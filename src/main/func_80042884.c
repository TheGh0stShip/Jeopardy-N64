typedef signed int s32; typedef unsigned int u32; typedef s32 ALMicroTime; typedef u32 OSIntMask;

typedef struct ALLink_s {
    struct ALLink_s *next;
    struct ALLink_s *prev;
} ALLink;

typedef struct {
    s32 w[4];
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

void alUnlink(ALLink *ln);
void alLink(ALLink *ln, ALLink *to);
void alCopy(void *src, void *dest, s32 len);
OSIntMask osSetIntMask(OSIntMask);

void func_80042884(ALEventQueue *evtq, ALEvent *evt, ALMicroTime delta)
{
    ALEventListItem *item;
    ALEventListItem *nextItem;
    ALLink *node;
    s32 postAtEnd = 0;
    OSIntMask mask;

    mask = osSetIntMask(1);

    item = (ALEventListItem *)evtq->freeList.next;
    if (!item) {
        osSetIntMask(mask);
        return;
    }

    alUnlink((ALLink *)item);
    alCopy(evt, &item->evt, sizeof(*evt));

    if (delta == 0x7FFFFFFF)
        postAtEnd = -1;

    for (node = &evtq->allocList; node != 0; node = node->next) {
        if (!node->next) {
            if (postAtEnd)
                item->delta = 0;
            else
                item->delta = delta;
            alLink((ALLink *)item, node);
            break;
        } else {
            nextItem = (ALEventListItem *)node->next;
            if (delta < nextItem->delta) {
                item->delta = delta;
                nextItem->delta -= delta;
                alLink((ALLink *)item, node);
                break;
            }
            delta -= nextItem->delta;
        }
    }
    osSetIntMask(mask);
}
