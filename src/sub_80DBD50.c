#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DBD50 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();
s32 sub_8082B00();                                  /* extern */
void sub_80DBD88(void *arg0);
void sub_80DBD50(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = (s32 *) &sub_80DBD88;
    }
}

void sub_80DBDE8(void *arg0);
void sub_80DBD6C(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = (s32 *) &sub_80DBDE8;
    }
}

s32 sub_808552C(void *, s32, void *, s32, s32, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_80DB9DC;
void sub_80DBD88(void *arg0)
{
  s32 temp_r4_13;
  temp_r4_13 = (*((s32 *) (((s8 *) arg0) + 0x98)) = *((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)));
  *((s32 *) (((s8 *) arg0) + 0x94)) = sub_808552C(arg0 + 0xAE, (s32) ((arg0 + 0x98) + 0x18), arg0 + 0xB2, 0, 0, temp_r4_13 - (*((s32 *) (((s8 *) arg0) + 0x40))), 0x1400, 0x4CC, 0xFD, 0);
  play_sfx_80195B4(0x30, -1);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DB9DC;
}

extern s32 sub_80DB860;

void sub_80DBDE8(void *arg0) {
    sub_8082E1C(arg0, 2, 0, 0);
    play_sfx_80195B4(0x11A, -1);
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x30;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DB860;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBE18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBF0C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBFBC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DBFBC;

void sub_80DC07C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 5, 0, 0);
        play_sfx_80195B4(0x84, -1);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x20;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DBFBC;
    }
}
