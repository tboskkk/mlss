#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FFD20 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FFD20.s\"");
#else
#error "TODO: write sub_80FFD20 to match asm/nonmatching/sub_80FFD20.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FFEFC.s\"");
#else
#error "TODO: write sub_80FFEFC to match asm/nonmatching/sub_80FFEFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8100790.s\"");
#else
#error "TODO: write sub_8100790 to match asm/nonmatching/sub_8100790.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8100BC4.s\"");
#else
#error "TODO: write sub_8100BC4 to match asm/nonmatching/sub_8100BC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8100D18.s\"");
#else
#error "TODO: write sub_8100D18 to match asm/nonmatching/sub_8100D18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8100E5C.s\"");
#else
#error "TODO: write sub_8100E5C to match asm/nonmatching/sub_8100E5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810118C.s\"");
#else
#error "TODO: write sub_810118C to match asm/nonmatching/sub_810118C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810124C.s\"");
#else
#error "TODO: write sub_810124C to match asm/nonmatching/sub_810124C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810136C.s\"");
#else
#error "TODO: write sub_810136C to match asm/nonmatching/sub_810136C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8101470.s\"");
#else
#error "TODO: write sub_8101470 to match asm/nonmatching/sub_8101470.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8101520.s\"");
#else
#error "TODO: write sub_8101520 to match asm/nonmatching/sub_8101520.s, then delete this #error"
#endif
