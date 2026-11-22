typedef signed char s8;
typedef signed short s16;
typedef signed int s32;

struct event {
    s16 type;
    s8 value;
    s8 pad3;
    s32 field4;
    s32 field8;
    s32 fieldC;
    s32 field10;
    s32 field14;
};

extern s32 D_80071FB8;
s32 func_80041458(s32, struct event *, s32);
s32 func_800486D8(void);
s32 func_80048708(s32, struct event *, s32);

s32 func_800485C8(struct event *event, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    register s32 result;
    register s32 handle;

    if (D_80071FB8 == 0) return -1;
    if (arg2 == 0) event->type = 0xB;
    else event->type = 0xC;
    event->value = arg1;
    event->field4 = arg6;
    event->field8 = arg4;
    event->fieldC = arg3;
    event->field10 = arg5;
    event->field14 = 0;
    if (arg1 == 1) {
        handle = func_800486D8();
        result = func_80048708(handle, event, 0);
    } else {
        handle = func_800486D8();
        result = func_80041458(handle, event, 0);
    }
    return result;
}
