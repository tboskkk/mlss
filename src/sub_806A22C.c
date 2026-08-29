#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A22C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_806A2FC;

void sub_806A22C(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xC;
        arg0->handler = &sub_806A2FC;
    }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
u32 sub_8199F30();                                  /* extern */
void sub_806A348(void *arg0);                       /* extern */

void sub_806A24C(struct Entity *arg0) {
    u32 temp_r4_20;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x81);
        temp_r4_20 = (*(s32 *)((s8 *)(arg0) + (0xA4))) - (*(s32 *)((s8 *)(arg0) + (0xA0)));
        arg0->unkA8 = (s32) ((*(s32 *)((s8 *)(arg0) + (0xA0))) + (sub_8199F30() % temp_r4_20));
        arg0->handler = (s32 *) &sub_806A348;
    }
}

extern s32 sub_80695E4;
s32 sub_806A290(void *arg0)
{
  s8 *new_var2;
  s32 *var_r1_18;
  int new_var;
  s32 var_r0_19;
  new_var2 = (s8 *) arg0;
  if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x28)))) + 0xEC))) == (-1))
  {
    var_r1_18 = (s32 *) (arg0 + 0x9C);
    var_r0_19 = 0;
  }
  else
  {
    var_r1_18 = (s32 *) (arg0 + 0x9C);
 do { var_r0_19 = (new_var = 1); } while (0);
  }
  *var_r1_18 = var_r0_19;
  *((s32 **) (new_var2 + 0x4C)) = &sub_80695E4;
  return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A2C4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
