typedef signed short s16; typedef signed int s32;
typedef struct { char pad[0x20]; char fx[0x2C]; } ALAuxBus;
typedef struct { char pad[0x30]; void *mainBus; ALAuxBus *auxBus; } ALSynth;
extern s32 alFxNew();
extern s32 func_80043CAC();
extern s32 alMainBusParam();
void *func_80048B18(ALSynth *s, s16 bus, void *c, void *hp) {
    alFxNew(&s->auxBus[bus].fx[0], c, hp);
    func_80043CAC(&s->auxBus[bus].fx[0], 1, &s->auxBus[bus]);
    alMainBusParam(s->mainBus, 2, &s->auxBus[bus].fx[0]);
    return &s->auxBus[bus].fx[0];
}
