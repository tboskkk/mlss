#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047C18 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047C18.s\"");
#else
s32 sub_8047C18(void *arg0, void *arg1) {
    if (((*(s32 *)((s8 *)(arg0) + (0x1C))) != (*(s32 *)((s8 *)(arg1) + (0x1C)))) && ((!(0xC & (*(u8 *)((s8 *)(arg0) + (0x26)))) && !(0xC & (*(u8 *)((s8 *)(arg1) + (0x26))))) || (((u32) ((*(*(s32 **)((s8 *)(arg1) + (0x20))) & *(*(s32 **)((s8 *)(arg0) + (0x20)))) * 2) >> 0x1E) == 0))) {
        return (*(s32 *)((s8 *)(arg0) + (0x1C))) - (*(s32 *)((s8 *)(arg1) + (0x1C)));
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047C68.s\"");
#else
#error "TODO: write sub_8047C68 to match asm/nonmatching/sub_8047C68.s, then delete this #error"
#endif
