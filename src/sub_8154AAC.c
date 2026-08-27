#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8154AAC needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8158258();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154AAC.s\"");
#else
void sub_8154AAC(void *arg0) {
    s16 var_r0_33;
    s32 temp_r1_14;
    s32 temp_r1_38;
    void *temp_r0_12;

    temp_r0_12 = (*(void **)((s8 *)(*(void **)0x03001018) + (0x1C98)));
    temp_r1_14 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    switch (temp_r1_14) {                           /* irregular */
    case 0:
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0) {
            var_r0_33 = 1;
block_15:
            (*(s16 *)((s8 *)(arg0) + (0x38))) = var_r0_33;
        }
        return;
    case 1:
        temp_r1_38 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
        if (temp_r1_38 == 0) {
            if ((s32) ((*(s32 *)((s8 *)(temp_r0_12) + (4))) - (*(s32 *)((s8 *)(arg0) + (4)))) <= 0x3BFF) {
                var_r0_33 = 2;
                goto block_15;
            }
        } else {
            if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) >= temp_r1_38) {
                (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) (*(u16 *)((s8 *)(temp_r0_12) + (0x14)));
                return;
            }
            (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x14))) + 2);
            return;
        }
        break;
    case 2:
        var_r0_33 = 0;
        (*(u16 *)((s8 *)(arg0) + (0x14))) = 0U;
        goto block_15;
    }
}
#endif

void *sub_8154B24(void *arg0)
{
  struct Sprite *temp_r0_37;
  struct Sprite *temp_r0_61;
  struct Sprite *temp_r0_83;
  long long new_var;
  *((s32 *) (((s8 *) arg0) + 0x1C)) = 0;
  *((struct Sprite **) (((s8 *) arg0) + 8)) = (void *) 0;
  *((struct Sprite **) (((s8 *) arg0) + 4)) = (void *) 0;
  *((struct Sprite **) (((s8 *) arg0) + 0)) = (void *) 0;
  new_var = 0x500C;
  *((s32 *) (((s8 *) arg0) + 0x20)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x24)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x28)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x2C)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x14)) = 0xE800;
  *((s32 *) (((s8 *) arg0) + 0x18)) = 0x1400;
  *((s32 *) (((s8 *) arg0) + 0x30)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x34)) = 0;
  temp_r0_37 = sub_8020DD0(4, new_var, 0, -1, -1, -1, -1);
  *((struct Sprite **) (((s8 *) arg0) + 0)) = temp_r0_37;
  sub_801E150(temp_r0_37, 0xA, -1, 0, 0);
  sprite_show_8020CBC(*((struct Sprite **) (((s8 *) arg0) + 0)));
  (*((struct Sprite **) (((s8 *) arg0) + 0)))->xPosition = 0xD8;
  (*((struct Sprite **) (((s8 *) arg0) + 0)))->yPosition = 0x10;
  temp_r0_61 = sub_8020DD0(4, new_var, 0, -1, -1, -1, -1);
  *((struct Sprite **) (((s8 *) arg0) + 4)) = temp_r0_61;
  sub_801E150(temp_r0_61, 0xA, -1, 0, 0);
  sprite_show_8020CBC(*((struct Sprite **) (((s8 *) arg0) + 4)));
  (*((struct Sprite **) (((s8 *) arg0) + 4)))->xPosition = 0xE0;
  (*((struct Sprite **) (((s8 *) arg0) + 4)))->yPosition = 0x10;
  temp_r0_83 = sub_8020DD0(4, new_var, 0, -1, -1, -1, -1);
  *((struct Sprite **) (((s8 *) arg0) + 8)) = temp_r0_83;
  sub_801E150(temp_r0_83, 0xA, -1, 0, 0);
  sprite_show_8020CBC(*((struct Sprite **) (((s8 *) arg0) + 8)));
  (*((struct Sprite **) (((s8 *) arg0) + 8)))->xPosition = 0xE8;
  (*((struct Sprite **) (((s8 *) arg0) + 8)))->yPosition = 0x10;
  sub_8158258(arg0);
  return arg0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154C08.s\"");
#else
s32 sub_8158258(void *);                        /* extern */

void sub_8154C08(void *arg0) {
    s32 temp_r0_18;
    s32 temp_r0_50;
    s32 temp_r0_63;
    s32 temp_r0_8;
    s32 temp_r1_28;
    u16 *temp_r2_30;
    u16 *temp_r2_35;
    u16 *temp_r2_41;

    temp_r0_8 = (*(s32 *)((s8 *)(arg0) + (0x20)));
    switch (temp_r0_8) {                            /* irregular */
    case 1:
        temp_r0_18 = (*(s32 *)((s8 *)(arg0) + (0x24))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0x24))) = temp_r0_18;
        if (temp_r0_18 <= 0) {
            (*(s32 *)((s8 *)(arg0) + (0x20))) = 0;
            return;
        }
        temp_r1_28 = 4 - (*(s32 *)((s8 *)(arg0) + (0x28)));
        (*(s32 *)((s8 *)(arg0) + (0x28))) = temp_r1_28;
        temp_r2_30 = (*(u16 **)((s8 *)(arg0) + (0)));
        *temp_r2_30 = temp_r1_28 + (*temp_r2_30 - 2);
        temp_r2_35 = (*(u16 **)((s8 *)(arg0) + (4)));
        *temp_r2_35 = (*(s32 *)((s8 *)(arg0) + (0x28))) + (*temp_r2_35 - 2);
        temp_r2_41 = (*(u16 **)((s8 *)(arg0) + (8)));
        *temp_r2_41 = (*(s32 *)((s8 *)(arg0) + (0x28))) + (*temp_r2_41 - 2);
        return;
    case 2:
        temp_r0_50 = (*(s32 *)((s8 *)(arg0) + (0x24))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0x24))) = temp_r0_50;
        if (temp_r0_50 <= 0) {
            (*(s32 *)((s8 *)(arg0) + (0x34))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x30))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x20))) = 0;
            sub_8158258(arg0);
            return;
        }
        temp_r0_63 = (*(s32 *)((s8 *)(arg0) + (0x34))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0x34))) = temp_r0_63;
        if (temp_r0_63 < 0) {
            (*(s32 *)((s8 *)(arg0) + (0x30))) = (s32) (0xA - (*(s32 *)((s8 *)(arg0) + (0x30))));
            (*(s32 *)((s8 *)(arg0) + (0x34))) = 5;
            sub_8158258(arg0);
        }
        (*(s32 *)((s8 *)(arg0) + (0x2C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x2C))) + 1);
        return;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154C9C.s\"");
#else
s32 sub_8021308(s16 *);                         /* extern */

s32 sub_8154C9C(void *arg0) {
    s32 temp_r0_25;
    s32 temp_r0_63;
    s32 temp_r0_9;
    s32 temp_r1_22;
    s32 temp_r1_60;
    u16 temp_r0_40;

    temp_r0_9 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    switch (temp_r0_9) {                            /* irregular */
    case 1:
        temp_r1_22 = (*(s32 *)((s8 *)(arg0) + (0x14))) - (*(s32 *)((s8 *)(arg0) + (0x1C)));
        (*(s32 *)((s8 *)(arg0) + (0x14))) = temp_r1_22;
        temp_r0_25 = (*(s32 *)((s8 *)(arg0) + (0xC))) + temp_r1_22;
        (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r0_25;
        *(*(s16 **)((s8 *)(arg0) + (4))) = (s16) (temp_r0_25 >> 8);
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x14))) < 0) {
            (*(u16 *)((s8 *)(arg0) + (0))) = 0U;
            (*(u16 *)((s8 *)(arg0) + (8))) = (u16) ((*(u16 *)((s8 *)(arg0) + (8))) + 1);
        case 2:
            temp_r0_40 = (*(u16 *)((s8 *)(arg0) + (0))) + 1;
            (*(u16 *)((s8 *)(arg0) + (0))) = temp_r0_40;
            if ((s32) (s16) temp_r0_40 > 0x3B) {
                play_sfx_80195B4(0x4B, -1);
                (*(u16 *)((s8 *)(arg0) + (0))) = 0U;
                (*(u16 *)((s8 *)(arg0) + (8))) = (u16) ((*(u16 *)((s8 *)(arg0) + (8))) + 1);
                return 3;
            }
            goto block_11;
        }
block_11:
    default:
        return 0;
    case 3:
        temp_r1_60 = (*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0x1C)));
        (*(s32 *)((s8 *)(arg0) + (0x14))) = temp_r1_60;
        temp_r0_63 = (*(s32 *)((s8 *)(arg0) + (0xC))) + temp_r1_60;
        (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r0_63;
        *(*(s16 **)((s8 *)(arg0) + (4))) = (s16) (temp_r0_63 >> 8);
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0xC))) > 0xEFFF) {
            sub_8021308((*(s16 **)((s8 *)(arg0) + (4))));
            (*(s16 **)((s8 *)(arg0) + (4))) = NULL;
            return 2;
        }
        goto block_11;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154D38.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154F9C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8155254.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
