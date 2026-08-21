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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810E360.s\"");
#else
#error "TODO: write sub_810E360 to match asm/nonmatching/sub_810E360.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810E5D0.s\"");
#else
#error "TODO: write sub_810E5D0 to match asm/nonmatching/sub_810E5D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810F5E4.s\"");
#else
#error "TODO: write sub_810F5E4 to match asm/nonmatching/sub_810F5E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810F6D4.s\"");
#else
#error "TODO: write sub_810F6D4 to match asm/nonmatching/sub_810F6D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810F764.s\"");
#else
#error "TODO: write sub_810F764 to match asm/nonmatching/sub_810F764.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810F824.s\"");
#else
#error "TODO: write sub_810F824 to match asm/nonmatching/sub_810F824.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810F904.s\"");
#else
#error "TODO: write sub_810F904 to match asm/nonmatching/sub_810F904.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810F9FC.s\"");
#else
#error "TODO: write sub_810F9FC to match asm/nonmatching/sub_810F9FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FA8C.s\"");
#else
#error "TODO: write sub_810FA8C to match asm/nonmatching/sub_810FA8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FB20.s\"");
#else
#error "TODO: write sub_810FB20 to match asm/nonmatching/sub_810FB20.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FBC4.s\"");
#else
#error "TODO: write sub_810FBC4 to match asm/nonmatching/sub_810FBC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FBFC.s\"");
#else
#error "TODO: write sub_810FBFC to match asm/nonmatching/sub_810FBFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FC34.s\"");
#else
#error "TODO: write sub_810FC34 to match asm/nonmatching/sub_810FC34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FC70.s\"");
#else
#error "TODO: write sub_810FC70 to match asm/nonmatching/sub_810FC70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FCE0.s\"");
#else
#error "TODO: write sub_810FCE0 to match asm/nonmatching/sub_810FCE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FD10.s\"");
#else
#error "TODO: write sub_810FD10 to match asm/nonmatching/sub_810FD10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FD54.s\"");
#else
#error "TODO: write sub_810FD54 to match asm/nonmatching/sub_810FD54.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FD94.s\"");
#else
#error "TODO: write sub_810FD94 to match asm/nonmatching/sub_810FD94.s, then delete this #error"
#endif
