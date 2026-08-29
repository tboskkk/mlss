#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FC54 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082CCC(s32, s32, s32, s32, s32, s32);  /* extern */

void sub_807FC54(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    sub_8082CCC((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C))), arg0, arg1, arg2, arg3, arg4);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FC88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FD44.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FDE8.s\"");
#else
void sub_807FDE8(void *arg0, void *arg1) {
    void *var_r0_9;
    void *var_r2_25;
    void *var_r2_8;

    var_r2_8 = (*(void **)((s8 *)(arg0) + (0)));
    var_r0_9 = (*(void **)((s8 *)(arg1) + (0)));
    if (var_r2_8 != NULL) {
        if (var_r0_9 == NULL) {
            goto block_4;
        }
    } else {
        var_r2_8 = arg0;
block_4:
        if (var_r0_9 == NULL) {
            var_r0_9 = arg1;
        }
        (*(void **)((s8 *)(arg1) + (0))) = var_r2_8;
        (*(void **)((s8 *)(arg0) + (0))) = var_r0_9;
    }
    var_r2_25 = arg0;
loop_9:
    if (*(*(u16 **)((s8 *)(var_r2_25) + (0xE4))) != 0) {
        if (*(*(u16 **)((s8 *)(arg0) + (0xE4))) == 0) {
            (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (*(s32 *)((s8 *)(var_r2_25) + (4)));
        }
        if (*(*(u16 **)((s8 *)(arg1) + (0xE4))) == 0) {
            (*(s32 *)((s8 *)(arg1) + (0x10))) = (s32) (*(s32 *)((s8 *)(var_r2_25) + (4)));
        }
    } else {
        var_r2_25 = (*(void **)((s8 *)(var_r2_25) + (0)));
        if (var_r2_25 != arg0) {
            goto loop_9;
        }
    }
}
#endif
