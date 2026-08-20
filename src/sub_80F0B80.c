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
