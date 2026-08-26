#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809C9DC needs.

asm_unified(".include \"asm/macros.inc\"");



s32 sub_809C59C();
void sub_809CAC8(struct Entity *arg0);

s32 sub_8082E1C();
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809C9DC.s\"");
#else
void sub_809C9DC(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

s32 sub_80835E0(void *);                        /* extern */
void sub_809CA24(void *arg0)
{
  void *temp_r2_16;
  sub_809C59C();
  sub_8082E1C(arg0, 4, -1, 0);
  temp_r2_16 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_16) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_16) + 0x12))) | 2);
  sub_80835E0(arg0);
  play_sfx_80195B4(0x122, -1);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_809CAC8);
}

void sub_809C660(void *arg0, s32 arg3);                       /* extern */
void sub_809CA6C(void *arg0)
{
  void *temp_r2_13;
  sub_8082E1C(arg0, 2, -1, 0);
  temp_r2_13 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_13) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_13) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_809C660;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CA9C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_809C59C(void *);                        /* extern */

void sub_809CA9C(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x75))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x75))) + 5);
    sub_809C59C(arg0);
    sub_8082E1C(arg0, 0, 0, 0);
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
}
#endif

void sub_809CAC8(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CAF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CC38.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CEB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CFD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8087540(void *);                        /* extern */

void sub_809D24C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8087540(arg0);
    }
}
