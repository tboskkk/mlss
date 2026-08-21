#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8021EA8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021EA8.s\"");
#else
#error "TODO: write sub_8021EA8 to match asm/nonmatching/sub_8021EA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021ED8.s\"");
#else
#error "TODO: write sub_8021ED8 to match asm/nonmatching/sub_8021ED8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_hide_8021F20.s\"");
#else
#error "TODO: write sprite_hide_8021F20 to match asm/nonmatching/sprite_hide_8021F20.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021F7C.s\"");
#else
#error "TODO: write sub_8021F7C to match asm/nonmatching/sub_8021F7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021FD4.s\"");
#else
#error "TODO: write sub_8021FD4 to match asm/nonmatching/sub_8021FD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fldm_8021FF8.s\"");
#else
#error "TODO: write init_fldm_8021FF8 to match asm/nonmatching/init_fldm_8021FF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8022554.s\"");
#else
#error "TODO: write sub_8022554 to match asm/nonmatching/sub_8022554.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/fldm_update_8022658.s\"");
#else
#error "TODO: write fldm_update_8022658 to match asm/nonmatching/fldm_update_8022658.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/update_field_8023DD4.s\"");
#else
#error "TODO: write update_field_8023DD4 to match asm/nonmatching/update_field_8023DD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025584.s\"");
#else
#error "TODO: write sub_8025584 to match asm/nonmatching/sub_8025584.s, then delete this #error"
#endif
