#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814DCFC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_814DB34();                              /* extern */
void sub_814D838(s32, void *, s32 **);          /* extern */

void sub_814DCFC(s32 arg0, s32 arg1, s32 **arg2) {
    sub_814DB34();
    *arg2 = (s32 *) &sub_814D838;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DD14.s\"");
#else
s32 sub_813B650(s32);                               /* extern */
extern s32 sub_814D35C;

void sub_814DD14(s32 arg0, s32 arg1, s32 **arg2) {
    if ((sub_813B650(arg1) << 0x18) == 0) {
        *arg2 = &sub_814D35C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DD34.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DD38.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DD98.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_813B564(s32);                               /* extern */
extern s32 sub_814D35C;
extern s32 sub_814DC6C;
void sub_814DDF8(void *arg0, s32 arg1, s32 **arg2)
{
  s32 *var_r0_29;
  var_r0_29 = *((void **) (((s8 *) arg0) + 0x28));
  if ((1 & (*((u8 *) (((s8 *) var_r0_29) + 0x20C)))) && (1 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x20C)))))
  {
    var_r0_29 = &sub_814D35C;
    goto block_5;
  }
  if ((sub_813B564(arg1) << 0x18) == 0)
  {
 do { var_r0_29 = &sub_814DC6C; block_5: *arg2 = var_r0_29; } while (0);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DE4C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DF7C.s\"");
#else
s32 sub_813A068(s32, void *, s32, s32, s32, s32, s32); /* extern */
s32 sub_814E410(void *, void *);                /* extern */
s32 sub_8150590(void *);                        /* extern */

void sub_814DF7C(s32 arg0, void *arg1) {
    s32 (*temp_r3_33)(s32, void *);
    u8 temp_r4_58;
    void *temp_r5_16;
    void *temp_r8_22;

    temp_r5_16 = (*(void **)((s8 *)(arg1) + (0x344)));
    temp_r8_22 = temp_r5_16 + 0x58;
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x1A0)))(arg0, arg1);
    temp_r3_33 = (*(s32 (**)(s32, void *))((s8 *)(temp_r5_16) + (0x1A0)));
    if ((temp_r3_33 != NULL) && ((temp_r3_33(arg0, temp_r5_16), (((*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r5_16) + (0x338))) + 0x68)) + (4)))(temp_r5_16 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) << 0x18) != 0)) || (temp_r4_58 = 0x20 & (*(u8 *)((s8 *)(temp_r5_16) + (0x216))), (temp_r4_58 != 0)) || !(1 & (*(u8 *)((s8 *)(temp_r5_16) + (0x20C)))) || ((sub_813A068(arg0, temp_r5_16, (*(s32 *)((s8 *)(temp_r5_16) + (0xC))), (*(s32 *)((s8 *)(temp_r5_16) + (0x10))), (*(s32 *)((s8 *)(temp_r5_16) + (0x14))) + (*(s32 *)((s8 *)(temp_r5_16) + (0x18))), 1, (s32) temp_r4_58) << 0x18) != 0))) {
        (*(s32 *)((s8 *)(temp_r8_22) + (0x148))) = 0;
        (*(u8 *)((s8 *)(temp_r5_16) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r5_16) + (0x20D))) | 8);
        sub_8150590(temp_r5_16);
        sub_814E410(arg1, arg1 + 0x58 + 0x148);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814E060.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814E108.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814E1BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814E378.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
