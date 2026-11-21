#include "n64dk_lift.h"

M2C_UNK osCreateMesgQueue();
M2C_UNK osCreateThread();
M2C_UNK osCreateViManager();
M2C_UNK osSetEventMesg();
M2C_UNK osStartThread();
M2C_UNK osViBlack();
M2C_UNK osViSetEvent();
M2C_UNK osViSetMode();
extern M2C_UNK D_80072568;
extern M2C_UNK func_8004B65C;
void func_8004B968(void *arg0, s32 arg1, s32 arg2, u8 arg3, u8 arg4)
{
  void *temp_s1_25;
  void *temp_s1_64;
  *((s32 *) (((s8 *) arg0) + 0x274)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x278)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x260)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x27C)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x264)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x268)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x26C)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x270)) = 0;
  *((s16 *) (((s8 *) arg0) + 0)) = 1;
  *((s16 *) (((s8 *) arg0) + 0x20)) = 4;
  temp_s1_25 = (void *) (((u8 *) arg0) + 0x40);
  osCreateMesgQueue(temp_s1_25, (void *) (((u8 *) arg0) + 0x58), 8);
  osCreateMesgQueue((void *) (((u8 *) arg0) + 0x78), (void *) (((u8 *) arg0) + 0x90), 8);
  osCreateViManager(0xFE);
  osViSetMode((M2C_UNK *) ((arg3 * 0x50) + ((u8 *) (&D_80072568))));
  osViBlack(1);
  osSetEventMesg(4, temp_s1_25, 0x29B);
  osSetEventMesg(9, temp_s1_25, 0x29C);
  osSetEventMesg(0xE, temp_s1_25, 0x29D);
  osViSetEvent(temp_s1_25, 0x29A, arg4);
  temp_s1_64 = (void *) (((u8 *) arg0) + 0xB0);
  osCreateThread(temp_s1_64, 4, &func_8004B65C, arg0, arg1, arg2);
  osStartThread(temp_s1_64);
}

