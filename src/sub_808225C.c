#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808225C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8081F84;

void sub_808225C(void *arg0) {
    if ((s32) (s16) (*(u16 *)((s8 *)(arg0) + (0x10))) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8081F84;
}

s32 sub_8081568(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4(void *);                        /* extern */
extern s32 sub_80822D4;
void sub_808227C(void *arg0)
{
  void *new_var;
  u16 temp_r0_16;
  void *temp_r2_33;
  void *temp_r4_8;
  temp_r4_8 = *((void **) (((s8 *) arg0) + 8));
  sub_8087CE4(temp_r4_8);
  if (((s32) ((s16) (*((u16 *) (((s8 *) arg0) + 0x10))))) > 0)
  {
    new_var = arg0;
    temp_r0_16 = (*((u16 *) (((s8 *) arg0) + 0x10)) = (*((u16 *) (((s8 *) new_var) + 0x10))) - 1);
    if ((temp_r0_16 << 0x10) == 0)
    {
      sub_8081568(temp_r4_8);
    }
  }
  if (((s32) (*((s32 *) (((s8 *) temp_r4_8) + 0x40)))) >= ((s32) (*((s32 *) (((s8 *) temp_r4_8) + 0x18)))))
  {
    sub_8082E1C(temp_r4_8, 6, 0, 0);
    temp_r2_33 = *((void **) (((s8 *) temp_r4_8) + 8));
    *((u8 *) (((s8 *) temp_r2_33) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_33) + 0x12))) | 2);
    *((s32 **) (4 + ((s8 *) arg0))) = &sub_80822D4;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80822D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808231C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082370.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80823C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082584.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80827F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082898.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082920.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082994.s\"");
#else
s32 sprite_heap_free();                         /* extern */

void sub_8082994(void) {
    u16 *var_r4_12;

    var_r4_12 = (*(u16 **)((s8 *)(*(void **)0x03000FD8) + (0x1F4)));
    if ((var_r4_12 != NULL) && (*var_r4_12 != 0)) {
        do {
            if ((*(s32 *)((s8 *)(var_r4_12) + (4))) != 0) {
                sprite_heap_free();
            }
            (*(u16 *)((s8 *)(var_r4_12) + (0))) = 0;
            (*(s32 *)((s8 *)(var_r4_12) + (4))) = 0;
            var_r4_12 -= 8;
        } while (*var_r4_12 != 0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082A28.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
