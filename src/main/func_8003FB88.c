typedef struct { int x; int y; } Pair;
extern int D_800D2F60;
extern int D_800D2F64;

void func_8003FB88(Pair p) {
    D_800D2F60 = p.x;
    D_800D2F64 = p.y;
}
