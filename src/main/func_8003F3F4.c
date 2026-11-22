typedef int s32;
typedef float f32;

typedef struct ALFilter_s {
    struct ALFilter_s *source;
    s32 (*handler)();
    s32 (*setParam)();
    short inp;
    short outp;
    s32 type;
} ALFilter;

typedef struct {
    ALFilter filter;
    void *state;
    f32 ratio;
    s32 upitch;
    f32 delta;
    s32 first;
    void *ctrlList;
    void *ctrlTail;
    s32 motion;
} ALResampler;

void *alHeapDBAlloc(unsigned char *file, s32 line, void *hp, s32 num, s32 size);
void func_80042AA8(ALFilter *f, s32 (*pull)(), s32 (*param)(), s32 type);
extern s32 alResamplePull();
extern s32 alResampleParam();

void func_8003F3F4(ALResampler *r, void *hp)
{
    func_80042AA8((ALFilter *)r, alResamplePull, alResampleParam, 1);
    r->state = alHeapDBAlloc(0, 0, hp, 1, 0x20);
    r->delta = 0.0;
    r->first = 1;
    r->motion = 0;
    r->ratio = 1.0;
    r->upitch = 0;
    r->ctrlList = 0;
    r->ctrlTail = 0;
}
