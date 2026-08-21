#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8127E38 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_8127E38(s32 arg0) {
    return (u32) ((arg0 - ((0xC & *(u16 *)0x02000008) << 0xC)) << 0x11) >> 0x16;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127E50.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
