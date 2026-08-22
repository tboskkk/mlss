#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E8E78 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8E78.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80E8EA0(s32 *arg0, s32 arg1)
{
  u32 temp_r1_9;
  u8 temp_r0_18;
  u8 temp_r0_21;
  u8 temp_r5_24;
  void *temp_r2_11;
  void *temp_r4_28;
  temp_r1_9 = ((u32) (arg1 << 0x18)) >> 0x14;
  temp_r2_11 = (void *) ((*arg0) + temp_r1_9);
  if ((*((u8 *) (((s8 *) temp_r2_11) + 0xF))) == 0)
  {
    return 0;
  }
  temp_r0_18 = *((u8 *) (((s8 *) temp_r2_11) + 0xD));
  if (temp_r0_18 != 0)
  {
    temp_r0_21 = (*((u8 *) (((s8 *) temp_r2_11) + 0xD)) = temp_r0_18 - 1);
    temp_r5_24 = temp_r0_21;
    if (temp_r5_24 == 0)
    {
      temp_r4_28 = (void *) ((*arg0) + temp_r1_9);
      sprite_hide_8021F20(*((struct Sprite **) (((s8 *) temp_r4_28) + 0)));
      *((u8 *) (((s8 *) temp_r4_28) + 0xF)) = temp_r5_24;
      return 0;
    }
  }
  return 1;
}

void sub_80E8EE0(s32 *arg0, s32 arg1) {
    void *temp_r4_10;

    temp_r4_10 = (void *)(*arg0 + ((u32) (arg1 << 0x18) >> 0x14));
    sprite_hide_8021F20((*(struct Sprite **)((s8 *)(temp_r4_10) + (0))));
    (*(s8 *)((s8 *)(temp_r4_10) + (0xF))) = 0;
}

s32 free_heap_memory_8018C68(s32);              /* extern */

void sub_80E8EFC(s32 *arg0, s32 arg1) {
    free_heap_memory_8018C68(*arg0);
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
