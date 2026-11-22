typedef struct {
    char unk_00[0x14];
    int count;
    char unk_18[4];
    int *list;
} Obj;

int func_8003E1D8(Obj *obj, int type, int val) {
    int *list = obj->list;
    if (type == 2) {
        list[obj->count] = val;
        obj->count++;
    }
    return 0;
}
