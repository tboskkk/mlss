#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139970 needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_81397CC;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139970.s\"");
#else
s32 sub_81395AC();                              /* extern */

void sub_8139970(s32 arg0, void *arg1) {
    (*(s32 (**)())((s8 *)(arg1) + (0x198))) = sub_81395AC;
    sub_81395AC();
}
#endif

s32 sub_81396A8(s32, void *);               /* extern */
extern s32 sub_813967C;

void sub_8139988(s32 arg0, void *arg1) {
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_81396A8;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_813967C;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_813967C;
    (*(s32 **)((s8 *)(arg1) + (0x1AC))) = &sub_813967C;
    sub_81396A8(arg0, arg1);
}

s32 sub_813B380(s32, void *);               /* extern */
extern s32 sub_81396D8;
extern s32 sub_8139708;

void sub_81399C4(s32 arg0, void *arg1) {
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8139708;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_8139708;
    (*(s32 **)((s8 *)(arg1) + (0x1AC))) = &sub_81396D8;
    sub_813B380(arg0, arg1);
}

s32 sub_813B380(s32, void *);               /* extern */
extern s32 sub_81368AC;

void sub_8139A04(s32 arg0, void *arg1) {
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_81368AC;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_81368AC;
    sub_813B380(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139A38.s\"");
#else
s32 sub_813B380(s32, void *);               /* extern */
extern s32 sub_81397CC;

void sub_8139A38(s32 arg0, void *arg1) {
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_81397CC;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_81397CC;
    sub_813B380(arg0, arg1);
}
#endif

s32 sub_81398C4(s32, void *);               /* extern */
extern s32 sub_8139880;

void sub_8139A6C(s32 arg0, void *arg1) {
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_81398C4;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8139880;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_8139880;
    sub_81398C4(arg0, arg1);
}
