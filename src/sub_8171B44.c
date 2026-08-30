#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8171B44 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8171B44(void *arg0)
{
  int new_var;
  new_var = 0x2A;
  if (8 & (*((u16 *) (((s8 *) ((void *) 0x0300034C)) + new_var))))
  {
    *((s32 *) (((s8 *) arg0) + 0x44)) = 4;
  }
}

s32 process_enable(s32);                        /* extern */
s32 process_remove(void *, s32);                /* extern */
s32 sub_80E9A6C(s32, u16);                      /* extern */
s32 sub_8150A38();                              /* extern */
s32 sub_8163280(s32, s32);                      /* extern */
s32 sub_8163308(void *, s32);                   /* extern */
s32 sub_8165144(s32, s32);                      /* extern */

void sub_8171B60(void *arg0, s32 arg1) {
    s32 temp_r0_21;
    s32 temp_r0_38;
    void *temp_r0_16;
    void *temp_r1_30;
    void *temp_r1_47;
    void *temp_r2_27;
    void *temp_r2_44;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDD278;
    sub_80E9A6C(0x1CE2, (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0xDC))));
    temp_r0_16 = (*(void **)((s8 *)(arg0) + (0x30)));
    if (temp_r0_16 != NULL) {
        free_heap_8018DA8(temp_r0_16);
    }
    temp_r0_21 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (temp_r0_21 != 0) {
        sub_8163280(temp_r0_21, 3);
    }
    temp_r2_27 = (*(void **)((s8 *)(arg0) + (0x24)));
    if (temp_r2_27 != NULL) {
        temp_r1_30 = (*(void **)((s8 *)(temp_r2_27) + (0x18)));
        (*(s32 (**)(void *, s32))((s8 *)(temp_r1_30) + (0x14)))(temp_r2_27 + (*(s16 *)((s8 *)(temp_r1_30) + (0x10))), 3);
    }
    temp_r0_38 = (*(s32 *)((s8 *)(arg0) + (0x20)));
    if (temp_r0_38 != 0) {
        sub_8165144(temp_r0_38, 3);
    }
    temp_r2_44 = (*(void **)((s8 *)(arg0) + (0x1C)));
    if (temp_r2_44 != NULL) {
        temp_r1_47 = (*(void **)((s8 *)(temp_r2_44) + (0xC)));
        (*(s32 (**)(void *, s32))((s8 *)(temp_r1_47) + (0xC)))(temp_r2_44 + (*(s16 *)((s8 *)(temp_r1_47) + (8))), 3);
    }
    sub_8150A38();
    process_enable((*(s32 *)((s8 *)(arg0) + (0x14))));
    sub_8163308(arg0 + 0x40, 2);
    process_remove(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171BF0.s\"");
#else
s32 sub_8163A24(s32);                           /* extern */

void sub_8171BF0(void *arg0) {
    sub_8163A24((*(s32 *)((s8 *)(arg0) + (0x6C))));
    sub_8163A24((*(s32 *)((s8 *)(arg0) + (0x70))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171C06.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171C20.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_8171C20(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD2A8;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171C34.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171C88.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_8171C88(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD2B8;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171C9C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171D04.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171D58.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_8171D58(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD2C8;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171D6C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */

void sub_8171DD4(void *arg0) {
    if ((*(u16 *)((s8 *)(arg0) + (0xEA))) != 0) {
        (*(u16 *)((s8 *)(arg0) + (0xEA))) = 0U;
        stop_sfx_80195A8(0x97);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171DF0.s\"");
#else
void sub_8171DF0(void *arg0) {
    u16 temp_r0_9;

    temp_r0_9 = (*(u16 *)((s8 *)(arg0) + (0xEA)));
    if (temp_r0_9 == 0) {
        (*(u16 *)((s8 *)(arg0) + (0xEA))) = (u16) (temp_r0_9 + 1);
        play_sfx_80195B4(0x97, -1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171E0E.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8171E2C(void *arg0) {
    if (((*(s32 *)((s8 *)(arg0) + (0xA8))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xAC))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xB0))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xB4))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xB8))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xBC))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xC0))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xC4))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xC8))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xCC))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xD0))) != 0) || ((*(s32 *)((s8 *)(arg0) + (0xD4))) != 0)) {
        return 1;
    }
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171EB0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171ECC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171F2C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
