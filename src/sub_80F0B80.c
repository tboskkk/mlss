#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0B80 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80F0B80(void)
{
  void *temp_r2_7;
  temp_r2_7 = *((void **) 0x03000FD0);
  *((u8 *) (((s8 *) temp_r2_7) + 0x55F)) = (u8) (((-0x61) & (*(((s8 *) temp_r2_7) + 0x55F))) | 0x20);
  return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0BA4.s\"");
#else
#error "TODO: write sub_80F0BA4 to match asm/nonmatching/sub_80F0BA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0BC0.s\"");
#else
#error "TODO: write sub_80F0BC0 to match asm/nonmatching/sub_80F0BC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0BD8.s\"");
#else
#error "TODO: write sub_80F0BD8 to match asm/nonmatching/sub_80F0BD8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0BF0.s\"");
#else
#error "TODO: write sub_80F0BF0 to match asm/nonmatching/sub_80F0BF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0C08.s\"");
#else
#error "TODO: write sub_80F0C08 to match asm/nonmatching/sub_80F0C08.s, then delete this #error"
#endif
