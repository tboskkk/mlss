#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// alarm needs.

asm_unified(".include \"asm/macros.inc\"");

unsigned int alarm(unsigned int seconds) {
    return seconds;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC7F4.s\"");
#else
#error "TODO: write sub_81DC7F4 to match asm/nonmatching/sub_81DC7F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC81C.s\"");
#else
#error "TODO: write sub_81DC81C to match asm/nonmatching/sub_81DC81C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC978.s\"");
#else
#error "TODO: write sub_81DC978 to match asm/nonmatching/sub_81DC978.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/memcpy.s\"");
#else
#error "TODO: write memcpy to match asm/nonmatching/memcpy.s, then delete this #error"
#endif
