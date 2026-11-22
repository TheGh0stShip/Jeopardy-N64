/* libultra thread.c: __osThreadTail {NULL,-1}, __osRunQueue, __osActiveQueue, __osRunningThread, __osFaultedThread */
struct __osThreadTail { void *next; int priority; };
struct __osThreadTail D_80072318 = { 0, -1 };
void *D_80072320 = &D_80072318; /* __osRunQueue */
void *D_80072324 = &D_80072318; /* __osActiveQueue */
void *D_80072328 = 0;           /* __osRunningThread */
void *D_8007232C = 0;           /* __osFaultedThread */
