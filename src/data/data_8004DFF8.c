/* main menu: item label strings and the item table (6 entries, 16 bytes each) */
typedef short s16;
typedef int s32;

typedef struct {
    s16 unk0;   /* 1 */
    s16 unk2;   /* 8 / 0x18: flags */
    s16 x;
    s16 y;      /* low bit set on selectable rows */
    char *label;
    s32 unkC;
} MenuItem;

char D_8004DFF8[] = "press start to resume";
char D_8004E010[] = "play a mission";
char D_8004E020[] = "play full campaign";
char D_8004E034[] = "play head to head";
char D_8004E048[] = "configure";
char D_8004E054[] = "credits";
char D_8004E05C[] = "Game setups";
char D_8004E068[] = "Joypad controls";
char D_8004E078[] = "Data packs";

MenuItem D_8004E084[6] = {
    { 1, 0x08, 0x08, 0x0000, D_8004DFF8, 0 },
    { 1, 0x18, 0x23, (s16)0x8001, D_8004E010, 0 },
    { 1, 0x18, 0x34, 0x0001, D_8004E020, 0 },
    { 1, 0x18, 0x45, 0x0001, D_8004E034, 0 },
    { 1, 0x18, 0x56, 0x0001, D_8004E048, 0 },
    { 1, 0x18, 0x67, 0x0001, D_8004E054, 0 },
};
