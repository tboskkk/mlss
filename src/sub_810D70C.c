#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D70C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D70C.s\"");
#else
void sub_810D70C(void *arg0) {
    (*(s16 *)((s8 *)((void *)0x0400001A) + (0))) = (s16) (*(u16 *)0x0200001A + (*(u16 *)((s8 *)(arg0) + (0x14))));
    (*(s16 *)((s8 *)((void *)0x0400001A) + (4))) = (s16) (*(u16 *)0x0200001E + (*(u16 *)((s8 *)(arg0) + (0x14))));
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D738.s\"");
#else
#error "TODO: write sub_810D738 to match asm/nonmatching/sub_810D738.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810DD7C.s\"");
#else
#error "TODO: write sub_810DD7C to match asm/nonmatching/sub_810DD7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810DEB8.s\"");
#else
#error "TODO: write sub_810DEB8 to match asm/nonmatching/sub_810DEB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810E03C.s\"");
#else
#error "TODO: write sub_810E03C to match asm/nonmatching/sub_810E03C.s, then delete this #error"
#endif
