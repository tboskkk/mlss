#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// start_battle_8027AC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/start_battle_8027AC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027D64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027E90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 make_fldm_801AF5C(s32);                     /* extern */
s32 process_disable(void *);                    /* extern */
s32 sub_8022554(void *, s32);                   /* extern */
s32 sub_80273E4(void *);                        /* extern */
s32 sub_8054378(void *, s32, s32, u8);          /* extern */
s32 sub_8057B58(s32, s32);                      /* extern */
u8 sub_80E99E0(s32);                                /* extern */
s32 sub_80FC198();                              /* extern */
s32 sub_8123340();                              /* extern */
s32 sub_812335C();                              /* extern */
s32 sub_81251F0();                                  /* extern */
void sub_802814C(void *arg0)
{
  s32 temp_r0_21;
  u8 temp_r5_41;
  sub_801A6B0();
  if (0x10 & (*((u8 *) (((s8 *) arg0) + 0x12D))))
  {
    sub_80273E4(arg0);
    temp_r0_21 = *((s32 *) (((s8 *) arg0) + 0x304));
    if (temp_r0_21 != 0)
    {
      sub_8057B58(temp_r0_21, 3);
      *((s32 *) (((s8 *) arg0) + 0x304)) = 0;
    }
    sub_8018B78(2, (void *) 0);
    temp_r0_21 = (u8) ((-0x11) & (*(((s8 *) arg0) + 0x12D)));
    *((u8 *) (((s8 *) arg0) + 0x12D)) = temp_r0_21;
  }
  temp_r5_41 = sub_80E99E0(0x1BE5);
  if (temp_r5_41 != 0)
  {
    process_disable(arg0);
    *((s8 *) (((s8 *) arg0) + 0)) = 2;
    sub_8054378(alloc_Zero(0x68U, 0U, (s8 *) 0x081E2684, 0U), 8, 0x081E2684, temp_r5_41);
    return;
  }
  if (arg0 != ((void *) 0))
  {
    sub_8022554(arg0, 3);
  }
  sub_8123340();
  (*((s32 (**)(s32, s32, s32)) 0x03001034))(0, *((s32 *) 0x03000FC0), 0x570);
  if ((sub_81251F0() << 0x18) != 0)
  {
    *((u8 *) 0x03000D40) |= 2;
    sub_80FC198();
    sub_812335C();
    make_fldm_801AF5C(1);
    return;
  }
  load_init_812538C(alloc_Zero(0x164U, 0U, (s8 *) 0x081E268C, 0U), 8U, (s8 *) 0x081E268C, 0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028248.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80284B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80286AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80289BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028AFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028C40.s\"");
#else
s32 sub_8028E4C(void *);                        /* extern */

void sub_8028C40(void *arg0) {
    s32 temp_r1_107;
    s32 temp_r1_73;
    s32 temp_r2_105;
    s32 temp_r2_76;
    s32 var_r3_70;

    if (3 & (*(u8 *)((s8 *)(arg0) + (0xF9)))) {
        (*(u16 *)((s8 *)(arg0) + (0x2FA))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x2FA))) + 1);
        (*(u16 *)((s8 *)(arg0) + (0x27A))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x2EC))) + ((s32) ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) * (*(u16 *)((s8 *)(arg0) + (0x2FA)))) / (s32) (*(u16 *)((s8 *)(arg0) + (0x2FC)))));
        (*(u16 *)((s8 *)(arg0) + (0x27C))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x2EE))) + ((s32) ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) * (*(u16 *)((s8 *)(arg0) + (0x2FA)))) / (s32) (*(u16 *)((s8 *)(arg0) + (0x2FC)))));
        var_r3_70 = 0;
        temp_r1_73 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
        temp_r2_76 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
        if (temp_r1_73 >= temp_r2_76) {
            if (temp_r1_73 > (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
                if (temp_r1_73 <= temp_r2_76) {
                    goto block_4;
                }
            } else {
                goto block_5;
            }
        } else {
block_4:
            if (temp_r1_73 >= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
block_5:
                (*(u16 *)((s8 *)(arg0) + (0x27A))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x2F2)));
                var_r3_70 = 1;
            }
        }
        temp_r2_105 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
        temp_r1_107 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
        if (temp_r2_105 >= temp_r1_107) {
            if (temp_r2_105 > (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
                if (temp_r2_105 <= temp_r1_107) {
                    goto block_9;
                }
            } else {
                goto block_10;
            }
        } else {
block_9:
            if (temp_r2_105 >= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
block_10:
                (*(u16 *)((s8 *)(arg0) + (0x27C))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x2F4)));
                var_r3_70 |= 2;
            }
        }
        if (var_r3_70 == 3) {
            sub_8028E4C(arg0);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028D6C.s\"");
#else
s32 sub_8018818();                              /* extern */

void sub_8028D6C(void *arg0, u16 arg1) {
    s32 temp_r0_16;
    s32 temp_r6_24;
    u16 temp_r1_11;
    u16 temp_r2_21;
    void *temp_r1_47;

    temp_r1_11 = arg1;
    temp_r0_16 = 0x3FF & ~temp_r1_11;
    temp_r2_21 = *(u16 *)0x030003C4;
    temp_r6_24 = ((u32) (temp_r2_21 << 0x16) >> 0x16) & temp_r0_16;
    *(u16 *)0x030003C4 = (0xFFFFFC00 & temp_r2_21) | (temp_r0_16 & 0x3FF);
    if (!(0x20 & (*(u8 *)((s8 *)(arg0) + (0xF8))))) {
        (*(u16 *)((s8 *)((void *)0x0300034C) + (0x3C))) = (u16) (temp_r1_11 | (*(u16 *)((s8 *)((void *)0x0300034C) + (0x3C))));
        sub_8018818();
        (*(u16 *)((s8 *)((void *)0x0300034C) + (0x3E))) = (u16) ((*(u16 *)((s8 *)((void *)0x0300034C) + (0x3E))) & temp_r6_24);
        temp_r1_47 = (void *)0x0300034C + 0x40;
        (*(u16 *)((s8 *)((void *)0x0300034C) + (0x40))) = (u16) ((*(u16 *)((s8 *)((void *)0x0300034C) + (0x40))) & temp_r6_24);
        (*(u16 *)((s8 *)(temp_r1_47) + (2))) = (u16) (temp_r6_24 & (*(u16 *)((s8 *)(temp_r1_47) + (2))));
    } else {
        (*(u16 *)((s8 *)((void *)0x0300034C) + (0x3C))) = (u16) ((*(u16 *)((s8 *)((void *)0x0300034C) + (0x28))) & temp_r0_16);
        (*(u16 *)((s8 *)((void *)0x0300034C) + (0x3E))) = (u16) ((*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A))) & temp_r0_16);
        (*(u16 *)((s8 *)((void *)0x0300034C) + (0x40))) = (u16) ((*(u16 *)((s8 *)((void *)0x0300034C) + (0x2C))) & temp_r0_16);
        (*(s16 *)((s8 *)(((void *)0x0300034C + 0x40)) + (2))) = (s16) ((*(u16 *)((s8 *)((void *)0x0300034C) + (0x2E))) & temp_r0_16);
    }
    (*(u8 *)((s8 *)(arg0) + (0xF8))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0xF8))) | 0x20);
}
#endif

s32 sub_8021574(s32, s32, s32, s32, s32, s32 *, s32); /* extern */
s32 sub_802191C(s32);                           /* extern */

void sub_8028E14(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 spC;

    if (arg3 != -1) {
        sub_802191C(arg3);
    }
    sub_8021574(arg1, arg2, 0, 0, 0, &spC, arg3);
}
