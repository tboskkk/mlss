#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DB0FC needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_80DABFC(void *arg0);                       /* extern */

void sub_80DB0FC(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 3, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x18;
        arg0->handler = (s32 *) &sub_80DABFC;
    }
}

s32 sub_807F4FC(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_80DAD00(void *arg0);                       /* extern */
extern s32 sub_80DB184;
extern s32 sub_80DB1A4;
extern s32 sub_80DB1C4;

void sub_80DB12C(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        play_sfx_80195B4(0x2E, -1);
        sub_807F4FC(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x58))) = &sub_80DB1C4;
        (*(s32 **)((s8 *)(arg0) + (0x5C))) = &sub_80DB1A4;
        (*(s32 **)((s8 *)(arg0) + (0x60))) = &sub_80DB184;
        sub_8082E1C(arg0, 7, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x10;
        arg0->handler = (s32 *) &sub_80DAD00;
    }
}
