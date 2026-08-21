#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81511E4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81511E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8151650.s\"");
#else
s32 free_heap_memory_8018C68(s32);              /* extern */
s32 process_enable(s32);                        /* extern */
s32 process_remove(void *, s32);                /* extern */
s32 sub_80184F4(s32);                           /* extern */
s32 sub_8019628(s32);                           /* extern */
s32 sub_8150A38();                              /* extern */
s32 sub_8150F60(s32, s32);                      /* extern */
s32 sub_8151BBC(void *);                        /* extern */
s32 sub_8160EA4(void *, s32);                   /* extern */

void sub_8151650(void *arg0, s32 arg1) {
    s32 temp_r0_55;
    void *temp_r0_43;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC4B0;
    sub_8019628(0);
    sub_8018B78(2, 0);
    *(s16 *)0x04000208 = 0;
    *(u16 *)0x02000004 &= 0xFFEF;
    (*(u16 *)((s8 *)((void *)0x04000200) + (0))) = (u16) (0xFFFD & (*(u16 *)((s8 *)((void *)0x04000200) + (0))));
    (*(u16 *)((s8 *)((void *)0x04000200) + (2))) = (u16) ((*(u16 *)((s8 *)((void *)0x04000200) + (2))) | 2);
    *(s16 *)0x04000208 = 1;
    sub_8018B78(4, 0);
    sub_8151BBC(arg0);
    temp_r0_43 = (*(void **)((s8 *)(arg0) + (0x1F30)));
    if (temp_r0_43 != NULL) {
        process_remove(temp_r0_43, 3);
    }
    sub_80184F4(*(s32 *)0x03001014 + 4);
    temp_r0_55 = (*(s32 *)((s8 *)(arg0) + (0x1CB4)));
    if (temp_r0_55 != 0) {
        sub_8150F60(temp_r0_55, 3);
    }
    free_heap_memory_8018C68(*(s32 *)0x03001014);
    (*(s16 *)((s8 *)((void *)0x0300034C) + (2))) = 0xFFFF;
    (*(u8 *)((s8 *)((void *)0x0300034C) + (0x888))) = (u8) (-0x21 & (*(u8 *)((s8 *)((void *)0x0300034C) + (0x888))));
    process_enable((*(s32 *)((s8 *)(arg0) + (0x14))));
    sub_8150A38();
    *(s16 *)0x02000000 = 0x40;
    sub_8160EA4(arg0 + 0x1064, 2);
    sub_8160EA4(arg0 + 0x840, 2);
    sub_8160EA4(arg0 + 0x1C, 2);
    process_remove(arg0, arg1);
}
#endif
