#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FAEEC needs.

asm_unified(".include \"asm/macros.inc\"");

u8 sub_80FAEEC(void *arg0) {
    return (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x24)))) + (0x9A1)));
}

s32 sub_80F94A8();                              /* extern */
s32 sub_80FADD4(s32);                           /* extern */

void sub_80FAEFC(s32 arg0) {
    void *temp_r1_12;

    sub_80F94A8();
    sub_80FADD4(arg0);
    temp_r1_12 = *(void **)0x03000FC0;
    (*(s32 *)((s8 *)(temp_r1_12) + (0x100))) = (s32) ((*(s32 *)((s8 *)(temp_r1_12) + (0x100))) & ~1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAF28.s\"");
#else
s32 sub_80FAE34(void *);                        /* extern */

void sub_80FAF28(void *arg0) {
    u32 temp_r0_33;
    u32 var_r2_16;
    void **var_r1_21;
    void *temp_r0_24;

    if (1 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x24)))) + (0x9A3)))) {
        var_r2_16 = 0xC;
        var_r1_21 = (*(void ***)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0x158)));
        do {
            temp_r0_24 = *var_r1_21;
            if (temp_r0_24 != NULL) {
                (*(s8 *)((s8 *)(temp_r0_24) + (0x20))) = 0;
            }
            var_r1_21 += 0x40;
            temp_r0_33 = (var_r2_16 << 0x10) + 0xFFFF0000;
            var_r2_16 = temp_r0_33 >> 0x10;
        } while ((s32) temp_r0_33 > 0);
    }
    sub_80FAE34(arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAF78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_80EA5C8(s32, void *, s32, s32, s32, s32); /* extern */

void sub_80FAF8C(void *arg0, s32 arg1) {
    sub_80EA5C8( (s32)(arg0 + 0x1C), (*(void **)((s8 *)(arg0) + (0x24))), arg1, 0, 1, 0xFF);
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x24)))) + (0x9A1))) = 2;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAFBC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAFD8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 process_add(void *, u8);                    /* extern */
void *sub_80FB080(void *arg0, u8 arg1)
{
  void *temp_r0_20;
  void *temp_r1_29;
  int new_var;
  process_add(arg0, arg1);
  *((s32 *) (((s8 *) arg0) + 0x18)) = 0x08CDC328;
  *((s32 *) (((s8 *) arg0) + 0x28)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x20)) = 0;
  temp_r0_20 = alloc_heap_8018CEC(1U, 0x9A8U, (s8 *) 0x082001E0);
  *((void **) (((s8 *) arg0) + 0x24)) = temp_r0_20;
  (*((s32 (**)(s32, void *, s32)) 0x03001034))(0, temp_r0_20, 0x9A8);
  new_var = 8;
  temp_r1_29 = *((void **) 0x03000FC0);
  *((s32 *) (((s8 *) temp_r1_29) + 0x55C)) = (s32) (*((s32 *) (((s8 *) ((void *) 0x083B9704)) + new_var)));
  *((s32 *) (((s8 *) temp_r1_29) + 0x560)) = (s32) (*((s32 *) (((s8 *) ((void *) 0x083B98C4)) + new_var)));
  *((s32 *) (((s8 *) temp_r1_29) + 0x564)) = (s32) (*((s32 *) (((s8 *) ((void *) 0x083B9D00)) + new_var)));
  *((s32 *) (((s8 *) temp_r1_29) + 0x568)) = (s32) (*((s32 *) (((s8 *) ((void *) 0x083BA13C)) + new_var)));
  *((s32 *) (((s8 *) temp_r1_29) + 0x56C)) = (s32) (*((s32 *) (((s8 *) ((void *) 0x083BA4A8)) + new_var)));
  return arg0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fobj_with_data_80FB128.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB448.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB6D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
