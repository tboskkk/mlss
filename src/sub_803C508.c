#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803C508 needs.

asm_unified(".include \"asm/macros.inc\"");


int stop_sfx_80195A8();

s32 sub_803C508(void *arg0) {
    if (((s32) (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) <= 0xC) && ((s32) (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) <= 0xC)) {
        return 0;
    }
    return 1;
}

s32 sub_802FAE4(s32, s32, s32);         /* extern */

void sub_803C538(s32 arg0, s32 arg1) {
    sub_802FAE4(arg0, arg1, 1);
}

u8 sub_80E98C0(s32, s32, s32);                      /* extern */
u32 sub_803C544(void)
{
  u8 temp_r0_33;
  int new_var;
  if ((sub_80E98C0((*((s32 *) 0x03000FC0)) + 0x38C, 0, 0x205) << 0x18) == 0)
  {
    new_var = (*((s32 *) 0x03000FC0)) + 0x38C;
    if ((sub_80E98C0(new_var, 0, 0x204) << 0x18) == 0)
    {
      temp_r0_33 = sub_80E98C0((*((s32 *) 0x03000FC0)) + 0x38C, 0, 0x203);
      new_var = ((u32) ((0 - temp_r0_33) | temp_r0_33)) >> 0x1F;
      return new_var;
    }
    return 2U;
  }
  return 3U;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C5A4.s\"");
#else
s32 sub_802DF80(void *, s32);                   /* extern */
s32 sub_802EA70(void *);                        /* extern */
s32 sub_80461B4(s32, void *);                   /* extern */
s32 sub_8047B78(s32);                               /* extern */

void sub_803C5A4(void *arg0) {
    void *temp_r4_13;

    temp_r4_13 = arg0 + 0x28;
    sub_80461B4((*(s32 *)((s8 *)(arg0) + (0x200))), temp_r4_13);
    sub_80461B4((*(s32 *)((s8 *)(arg0) + (0x204))), temp_r4_13);
    if (((sub_8047B78((*(s32 *)((s8 *)(arg0) + (0x200)))) << 0x18) == 0) && ((sub_8047B78((*(s32 *)((s8 *)(arg0) + (0x204)))) << 0x18) == 0)) {
        sub_802EA70(arg0);
        sub_802DF80(arg0, 0);
    }
}
#endif

void sub_803C610(void) {
    stop_sfx_80195A8(343);
    stop_sfx_80195A8(135);
    stop_sfx_80195A8(219);
    stop_sfx_80195A8(218);
    stop_sfx_80195A8(218);
    return;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C638.s\"");
#else
s32 sub_80494D4(void *);                        /* extern */
s32 sub_804FCD4(void *);                        /* extern */

void sub_803C638(void *arg0) {
    u16 temp_r2_11;
    void *temp_r1_10;

    temp_r1_10 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r2_11 = (*(u16 *)((s8 *)(temp_r1_10) + (4)));
    if ((u32) (u16) (temp_r2_11 - 5) <= 4U) {
        sub_804FCD4(temp_r1_10);
        return;
    }
    if ((u32) (u16) (temp_r2_11 - 0xA) <= 2U) {
        sub_80494D4(temp_r1_10);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C66C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C6C8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
