#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810CBDC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_810CBDC(struct Entity *arg0) {
    s32 temp_r0_9;

    temp_r0_9 = (*(s32 *)((s8 *)(arg0->unk08) + (4)));
    if (temp_r0_9 == 0) {
        (*(s32 *)((s8 *)(arg0) + (4))) = temp_r0_9;
        return;
    }
    (*(u16 *)((s8 *)((void *)0x0400001A) + (0))) = (u16) *(u16 *)0x0200001A;
    (*(u16 *)((s8 *)((void *)0x0400001A) + (4))) = (u16) *(u16 *)0x0200001E;
}

void sub_810CC0C(void *arg0)
{
  s16 temp_r0_11;
  temp_r0_11 = 0x19 - (*((u16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x14)));
  *((s16 *) (((s8 *) arg0) + 0x10)) = 0x19 - (*((u16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x14)));
  if (((s32) temp_r0_11) > 0x17)
  {
    *((s32 *) (((s8 *) arg0) + 4)) = 0;
    return;
  }
  *((s16 *) (((s8 *) ((void *) 0x0400001A)) + 0)) = (s16) ((*((u16 *) 0x0200001A)) - 0x18);
  *((s16 *) (((s8 *) ((void *) 0x0400001A)) + 4)) = (s16) ((*((u16 *) 0x0200001E)) - 0x18);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CC4C.s\"");
#else
void sub_810CC4C(void *arg0) {
    u16 temp_r2_9;

    temp_r2_9 = (*(u16 *)((s8 *)(arg0) + (0x14))) - 3;
    (*(u16 *)((s8 *)(arg0) + (0x14))) = temp_r2_9;
    if ((s32) (temp_r2_9 << 0x10) <= 0) {
        (*(s32 *)((s8 *)(arg0) + (4))) = 0;
        return;
    }
    *(s16 *)0x0400001A = *(u16 *)0x0200001A + temp_r2_9;
    *(s16 *)0x0400001E = *(u16 *)0x0200001E + (*(u16 *)((s8 *)(arg0) + (0x14)));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CC8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
