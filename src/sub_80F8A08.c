#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8A08 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8A08.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_80F8A28(void *arg0, void *arg1, void *arg2, u8 arg3)
{
  u32 temp_r0_47;
  u32 var_r1_15;
  u32 var_r2_24;
  void *var_r12_14;
  var_r12_14 = (void *) ((*((s32 *) (((s8 *) arg0) + 0x2C))) + 0x700);
  var_r1_15 = 0x10;
 do { if ((*((s32 *) (((s8 *) arg2) + 0))) == 0) { var_r12_14 += (*((s32 *) (((s8 *) arg2) + 4))) << 8; var_r1_15 = 1; } var_r2_24 = var_r1_15; if (var_r2_24 != 0) { loop_3: if ((1 & (*((u16 *) (((s8 *) var_r12_14) + 0xA0)))) && ((*((u8 *) (((s8 *) var_r12_14) + 0xA4))) == arg3)) { *((s32 *) (((s8 *) arg1) + 0)) = (s32) (*((s32 *) (((s8 *) arg1) + 0x14))); return 0; } temp_r0_47 = (var_r2_24 << 0x10) + 0xFFFF0000; var_r12_14 += 0x100; var_r2_24 = temp_r0_47 >> 0x10; if (((s32) temp_r0_47) <= 0) { goto block_7; } goto loop_3; } } while (0);
  block_7:
  return 1;

}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8A90.s\"");
#else
void sub_80F8A90(u32* p0, u32* p2)
{
    u32 r1;
    u32 r0;
    u32 r2;

    r1 = *(u32*)((u8*)p2 + 0x04);
    r1 <<= 8;
    r0 = *(u32*)((u8*)p0 + 0x2C);
    r0 += r1;
    r2 = *(u32*)((u8*)p2);
    if (r2 == 0)
    {
        r1 = 0xF4 << 3;
        r2 = r0 + r1;
        r1 = *(u16*)(r2);
        r0 = 4 | r1;
    }
    else if (r2 == 1)
    {
        r1 = 0xF4 << 3;
        r2 = r0 + r1;
        r1 = *(u16*)(r2);
        r0 = 0xFFFFFFFB & r1;
    }
    *(u16*)(r2) = (u16)r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/ybai_script_update_80F8ACC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
