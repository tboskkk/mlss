#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8098710 needs.

asm_unified(".include \"asm/macros.inc\"");



int sub_8087540();

int sub_8082E1C();
extern s32 sub_8098CBC;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098710.s\"");
#else
void sub_8098790(void *arg0);

void sub_8098710(void* p0)
{
    u32 r4 = (u32)p0;
    u16 r5;
    u16 r0 = *(u8*)((u8*)p0 + 0x76);
    u16 r1 = r0 & 6;
    if (r1 == 2)
        goto _08098724;
    if (r1 != 4)
        goto _08098782;
_08098724:
    r0 = *(u32*)((u8*)p0 + 0x28);
    r1 = 0x84 << 1;
    r0 += r1;
    r1 = 0;
    r0 = *(u16*)((u8*)r0 + r1);
    r5 = r0 + 0x64;
    r0 = *(u16*)((u8*)p0 + 0x1E);
    if (r5 == r0)
        goto _08098764;
    u32* r2 = (u32*)0x03001038;
    u32 r0_1 = 0x0819832C;
    u32 r1_1 = 0x08198220;
    r0_1 -= r1_1;
    r2 = (u32*)((u8*)r2[0] + r0_1);
    r0 = r5 - r0;
    r1 = 0x80 << 7;
    r0 = r1 - r0;
    ((void (*)(void))r2)(r0);
    r2 = r0;
    goto _0809876A;
_08098764:
    r1 = 0x80 << 7;
    r2 = r1;
_0809876A:
    *(u16*)((u8*)p0 + 0x7A) = r2;
    *(u16*)((u8*)p0 + 0x7E) = 0;
    u8* r2_1 = (u8*)p0 + 0x79;
    u8 r1_2 = *r2_1;
    r1_2 &= ~0x21;
    *r2_1 = r1_2;
_08098782:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_8098790;
}
#endif

s32 sub_80884AC(void *);                        /* extern */
extern s32 sub_8098198;
extern s32 sub_8098364;
extern s32 sub_8098540;

void sub_8098790(void *arg0) {
    void *temp_r1_9;
    void *temp_r4_15;
    void *temp_r6_12;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r6_12 = (void *) ((*(s32 *)((s8 *)(temp_r1_9) + (0x70))) + 8);
    temp_r4_15 = (void *) ((*(s32 *)((s8 *)(temp_r1_9) + (0x74))) + 8);
    sub_80884AC(arg0);
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        if ((arg0 == temp_r6_12) && ((*(s32 **)((s8 *)(temp_r4_15) + (0x4C))) == &sub_8098364)) {
            (*(s32 **)((s8 *)(temp_r4_15) + (0x4C))) = &sub_8098540;
        }
        if ((arg0 == temp_r4_15) && ((*(s32 **)((s8 *)(temp_r6_12) + (0x4C))) == &sub_8098364)) {
            (*(s32 **)((s8 *)(temp_r6_12) + (0x4C))) = &sub_8098540;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8098198;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80987F4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098860.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80988D8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_807C298(void *);                        /* extern */

void sub_8098934(void *arg0) {
    void *temp_r1_8;
    void *temp_r4_11;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (0x30)));
    temp_r4_11 = *(*(void ***)((s8 *)((*(void **)((s8 *)(temp_r1_8) + (4)))) + (8)));
    if (temp_r4_11 == NULL) {
        sub_807C298(temp_r1_8);
        (*(void **)((s8 *)(arg0) + (0x30))) = temp_r4_11;
        (*(void **)((s8 *)(arg0) + (0x4C))) = temp_r4_11;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098954.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098A84.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098C78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098C92.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8098CA0(struct Entity *arg0) {
    sub_8082E1C(arg0, 0x12, 0, 0);
    arg0->handler = &sub_8098CBC;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098CBC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098D20.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098E48.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_809900C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8087540(arg0);
    }
}
