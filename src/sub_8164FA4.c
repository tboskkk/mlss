#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8164FA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164FA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8164FF4(void *arg0, s32 arg1, s32 arg2, s32 arg3)
{
  s32 temp_r1_33;
  s32 temp_r3_25;
  s32 var_r2_0;
  s32 var_r5_8;
  var_r2_0 = arg2;
  var_r5_8 = arg1;
  *((s32 *) (((s8 *) arg0) + 0x9C)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x98)) = arg3;
  if (var_r5_8 <= 3)
  {
    var_r5_8 = 4;
  }
  if (var_r2_0 <= 3)
  {
    var_r2_0 = 4;
  }
  temp_r3_25 = (*((s32 *) (((s8 *) arg0) + 0x30))) * 8;
  if (((s32) (var_r5_8 + temp_r3_25)) > 0xEC)
  {
    var_r5_8 = 0xEC - temp_r3_25;
  }
  temp_r1_33 = (*((s32 *) (((s8 *) arg0) + 0x34))) * 8;
  if (((s32) (var_r2_0 + temp_r1_33)) > 0x9C)
  {
    var_r2_0 = 0x9C - temp_r1_33;
  }
  *((s32 *) (((s8 *) arg0) + 0x90)) = var_r5_8;
  var_r5_8 = var_r2_0;
  *((s32 *) (((s8 *) (arg0 + 0x90)) + 4)) = var_r5_8;
  sprite_hide_8021F20(*((struct Sprite **) (((s8 *) arg0) + 0)));
  sprite_hide_8021F20(*((struct Sprite **) (((s8 *) arg0) + 4)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816504C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_816507C(void *arg0) {
    s32 sp0;

    sp0 = 0;
    CpuFastSet(&sp0, (*(void **)((s8 *)(arg0) + (0x20))), 0x01000C00U);
    sprite_hide_8021F20((*(struct Sprite **)((s8 *)(arg0) + (0))));
    sprite_hide_8021F20((*(struct Sprite **)((s8 *)(arg0) + (4))));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81650A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81650DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165144.s\"");
#else
s32 free_heap_memory_8018C68();                 /* extern */
s32 sub_8021308(s32);                           /* extern */
s32 sub_80E8D74();                              /* extern */

void sub_8165144(void *arg0, s32 arg1) {
    *(*(s16 **)((s8 *)(arg0) + (0x50))) = 0;
    *(*(s16 **)((s8 *)(arg0) + (0x54))) = 0;
    sub_8021308((*(s32 *)((s8 *)(arg0) + (0))));
    sub_8021308((*(s32 *)((s8 *)(arg0) + (4))));
    if ((*(s32 *)((s8 *)(arg0) + (0x48))) != 0) {
        free_heap_memory_8018C68();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x44))) != 0) {
        free_heap_memory_8018C68();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x1C))) != 0) {
        free_heap_memory_8018C68();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x24))) != 0) {
        free_heap_memory_8018C68();
    }
    sub_80E8D74();
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81651A0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
