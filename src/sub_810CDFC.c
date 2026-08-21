#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810CDFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CDFC.s\"");
#else
void sub_810CDFC(s32 arg0) {
    s32 var_r0_18;
    s32 var_r0_23;

    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) <= 0x3F) {
        var_r0_18 = 8;
    } else {
        var_r0_23 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_23 < 0) {
            var_r0_23 += 0xFF;
        }
        var_r0_18 = var_r0_23 >> 8;
    }
    *(s32 *)0x04000018 = (u16) (var_r0_18 - 7) | ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - 6) << 0x10);
    *(s32 *)0x04000048 = 0x3F3B3F3F;
    *(s32 *)0x04000040 = 0x7FF07FF0;
    *(s32 *)0x04000044 = (*(u16 *)0x0200001A + 0x99) | ((*(u16 *)0x0200001A + 0x8E) << 8) | (((*(u16 *)0x0200001A + 0x99) | ((*(u16 *)0x0200001A + 0x8E) << 8)) << 0x10);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CE88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CEC0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CF04.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CF84.s\"");
#else
s32 sub_8083F20(s32, s32, s32);                     /* extern */
s32 sub_8084578(s32, s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_80847B0(s32, s32, s32, s32);            /* extern */
s32 sub_808520C(s32, s32, s32, s32, s32, s32);  /* extern */
s32 sub_8085260(s32, s32);                      /* extern */

void sub_810CF84(s32 arg0) {
    sub_8085260((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 0);
    sub_8085260((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 1);
    sub_8084578((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 0, 0, 0, 0, 0xE, 3);
    sub_80847B0((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 1, 0, 1);
    sub_808520C((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 0, 0x60 - sub_8083F20(3, arg0, 0), 6, arg0, 0x91);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D00C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D038.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D098.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D11C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D170.s\"");
#else
s32 sub_807C298(void *);                        /* extern */

void sub_810D170(void) {
    void *temp_r1_12;

    temp_r1_12 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x278)));
    if (temp_r1_12 != NULL) {
        (*(s32 *)((s8 *)(temp_r1_12) + (0x80))) = 0;
        sub_807C298(temp_r1_12);
        (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x278))) = NULL;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D1A4.s\"");
#else
void sub_810D1A4(void *arg0)
{
  s32 *new_var;
  void *temp_r2_8;
  long new_var2;
  void *new_var3;
  new_var3 = arg0;
  temp_r2_8 = *((void **) (((s8 *) new_var3) + 8));
  *((u8 *) (((s8 *) temp_r2_8) + 0x79)) = (u8) ((-0x11) & (*(((s8 *) temp_r2_8) + 0x79)));
  new_var = &(*((s32 *) (((s8 *) temp_r2_8) + 0x80)));
  new_var2 = *new_var;
  if ((new_var2 == 0) || ((sub_8085A6C(temp_r2_8) << 0x18) != 0))
  {
    *((s32 *) (((s8 *) arg0) + 4)) = 0;
  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D1D8.s\"");
#else
s32 sub_810A648(s32, s32, s32, s32, s32);       /* extern */

void sub_810D1D8(s32 arg0) {
    s32 var_r0_12;
    s32 var_r0_27;
    s32 var_r1_19;
    void *temp_r2_11;

    temp_r2_11 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x7C)));
    var_r0_12 = (*(s32 *)((s8 *)(temp_r2_11) + (0x40)));
    if (var_r0_12 < 0) {
        var_r0_12 += 0xFF;
    }
    var_r1_19 = (*(s32 *)((s8 *)(temp_r2_11) + (0x44)));
    if (var_r1_19 < 0) {
        var_r1_19 += 0xFF;
    }
    var_r0_27 = (*(s32 *)((s8 *)(temp_r2_11) + (0xE0)));
    if (var_r0_27 < 0) {
        var_r0_27 += 0xFF;
    }
    sub_810A648((var_r0_12 >> 8) - 4, var_r1_19 >> 8, (var_r0_27 >> 8) + 0x18, arg0, 0x7001);
}
#endif
