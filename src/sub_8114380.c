#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114380 needs.

asm_unified(".include \"asm/macros.inc\"");


u8 sub_8087CE4();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114380.s\"");
#else
extern void sub_8114680();

void sub_8114380(void* p0) {
    u32* r3;
    u32* r0;
    u32* r1;
    u32* r2;
    s16 r4;
    
    r3 = (u32*)((u8*)p0 + 0x00);
    r0 = (u32*)((u8*)p0 + 0x9C);
    r0 = *(u32**)r0;
    if (r0 == NULL) {
        goto _081143AC;
    }
    
    r2 = (u32*)0x03000FD8;
    r1 = *(u32**)r2;
    r0 = *(u32**)((u8*)p0 + 0x2C);
    r0 = *(u32**)((u8*)r0 + 0x28);
    r0 = (u32*)((u8*)r0 + 0xEC);
    r4 = *(s16*)((u8*)r0 + 0x00);
    r0 = (u32*)((u8*)r0 + 0x02);
    r0 = (u32*)((u8*)r0 + ((u32)r4 << 2));
    r1 = (u32*)((u8*)r1 + 0x80);
    r1 = (u32*)((u8*)r1 + (u32)r0);
    r0 = *(u32**)r1;
    r0 = (u32*)((u8*)r0 + 0x08);
    
_081143AC:
    *(u32*)((u8*)p0 + 0x2C) = r0;
    *(u32*)((u8*)p0 + 0x4C) = (u32)0x081141F5;
    
    r0 = *(u32**)r2;
    r2 = *(u32**)((u8*)r0 + 0x58);
    r1 = (u32*)0x00000113;
    r1 = (u32*)((u8*)r2 + (u32)r1);
    *(u8*)((u8*)r1 + 0x00) = 0x03;
    
    r0 = *(u32*)((u8*)p0 + 0x2C);
    *(u32*)((u8*)r2 + 0x34) = r0;
    
    r1 = (u32*)((u8*)r2 + 0xA4);
    r0 = (u32*)((u8*)p0 + 0x9C);
    r0 = *(u32**)r0;
    *(u32*)((u8*)r1 + 0x00) = r0;
    
    r1 = (u32*)((u8*)r1 + 0x04);
    r0 = (u32*)((u8*)p0 + 0xA0);
    r0 = *(u32**)r0;
    *(u32*)((u8*)r1 + 0x00) = r0;
    
    r1 = (u32*)((u8*)r1 + 0x04);
    r0 = (u32*)((u8*)p0 + 0xA4);
    r0 = *(u32**)r0;
    *(u32*)((u8*)r1 + 0x00) = r0;
    
    *(u32*)((u8*)r2 + 0x54) = (u32)sub_8114680;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114404.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_811448C(struct Entity *arg0) {
    u8 temp_r5_10;
    void *temp_r2_14;

    temp_r5_10 = sub_8087CE4();
    if (temp_r5_10 == 0) {
        temp_r2_14 = *(void **)0x03000FD8;
        (*(u8 *)((s8 *)(temp_r2_14) + (0xC))) = (u8) ((*(u8 *)((s8 *)(temp_r2_14) + (0xC))) | 0x80);
        sub_8082E1C(arg0, -1, -1, 0);
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = (s32) temp_r5_10;
    }
}

u8 sub_8087CE4();                                   /* extern */
s32 sub_810DD7C(void *, void *, s32);           /* extern */
extern s32 sub_81140C0;
extern s32 sub_8114790;
void sub_81144CC(void *arg0)
{
  u8 temp_r6_10;
  void *temp_r0_30;
  void *temp_r5_13;
  int new_var;
  temp_r6_10 = sub_8087CE4();
  if (temp_r6_10 == 0)
  {
    new_var = 0x54;
 do { temp_r5_13 = *((void **) (((s8 *) arg0) + 0x2C)); *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8114790; *((s8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x20)) = 0x10; sub_810DD7C(temp_r5_13, arg0, 0xFF); } while (0);
    if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xF6))) == 0)
    {
      temp_r0_30 = *((void **) (((s8 *) temp_r5_13) + 0x28));
      *((s32 **) (((s8 *) temp_r0_30) + new_var)) = &sub_81140C0;
      *((s8 *) (((s8 *) temp_r0_30) + 0x113)) = 1;
    }
    *((s32 *) (((s8 *) temp_r5_13) + 0xA8)) = (s32) temp_r6_10;
  }
}

void sub_8114528(void *arg0) {
    u8 temp_r1_12;

    temp_r1_12 = sub_8087CE4((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30))));
    if (temp_r1_12 == 0) {
        (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) = temp_r1_12;
        (*(s32 *)((s8 *)(arg0) + (0x50))) = 0x081141F5;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x081141F5;
    }
}
