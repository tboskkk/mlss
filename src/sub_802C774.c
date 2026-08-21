#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802C774 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802C774.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802D2F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802D46C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802D544.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802D92C.s\"");
#else
void sub_802D92C(void *arg0) {
    s32 var_r0_37;
    s32 var_r0_48;
    void *temp_r1_92;
    void *temp_r2_18;
    void *temp_r2_89;

    if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x209))))) {
        temp_r2_18 = (*(void **)((s8 *)(arg0) + (0x204)));
        if ((*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r2_18) + (0x368)))) + (2))) == 1) {
            var_r0_37 = (*(s32 *)((s8 *)(temp_r2_18) + (0xC)));
            if (var_r0_37 < 0) {
                var_r0_37 += 0xFF;
            }
            (*(s16 *)((s8 *)(arg0) + (0x248))) = (s16) (var_r0_37 >> 8);
            var_r0_48 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x10)));
            if (var_r0_48 < 0) {
                var_r0_48 += 0xFF;
            }
            (*(s16 *)((s8 *)(arg0) + (0x24A))) = (s16) (var_r0_48 >> 8);
            M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
            M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
            M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        }
    }
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    (*(u8 *)((s8 *)(arg0) + (0x209))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x209))) | 0x20);
    temp_r2_89 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_92 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_92) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_92) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_89) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_89) + (0x358))) | 8);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0xD;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0xD;
}
#endif
