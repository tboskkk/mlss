#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816359C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816359C.s\"");
#else
void sub_816359C(u32* param_1)
{
    u32 local_1;
    u32 local_2;
    u32 local_3;
    u32 local_4;
    u32 local_5;
    u32 local_6;
    u32 local_7;
    u32 local_8;
    u32 local_9;
    u32 local_a;
    u32 local_b;
    u32 local_c;
    u32 local_d;
    u32 local_e;
    u32 local_f;
    u32 local_10;
    u32 local_11;
    u32 local_12;
    u32 local_13;
    u32 local_14;
    u32 local_15;
    u32 local_16;
    u32 local_17;
    u32 local_18;
    u32 local_19;
    u32 local_1a;
    u32 local_1b;
    u32 local_1c;
    u32 local_1d;
    u32 local_1e;
    u32 local_1f;
    u32 local_20;
    u32 local_21;
    u32 local_22;
    u32 local_23;
    u32 local_24;
    u32 local_25;
    u32 local_26;
    u32 local_27;
    u32 local_28;
    u32 local_29;
    u32 local_2a;
    u32 local_2b;
    u32 local_2c;
    u32 local_2d;
    u32 local_2e;
    u32 local_2f;
    u32 local_30;
    u32 local_31;
    u32 local_32;
    u32 local_33;
    u32 local_34;
    u32 local_35;
    u32 local_36;
    u32 local_37;
    u32 local_38;
    u32 local_39;
    u32 local_3a;
    u32 local_3b;
    u32 local_3c;
    u32 local_3d;
    u32 local_3e;
    u32 local_3f;
    u32 local_40;
    u32 local_41;
    u32 local_42;
    u32 local_43;
    u32 local_44;
    u32 local_45;
    u32 local_46;
    u32 local_47;
    u32 local_48;
    u32 local_49;
    u32 local_4a;
    u32 local_4b;
    u32 local_4c;
    u32 local_4d;
    u32 local_4e;
    u32 local_4f;
    u32 local_50;
    u32 local_51;
    u32 local_52;
    u32 local_53;
    u32 local_54;
    u32 local_55;
    u32 local_56;
    u32 local_57;
    u32 local_58;
    u32 local_59;
    u32 local_5a;
    u32 local_5b;
    u32 local_5c;
    u32 local_5d;
    u32 local_5e;
    u32 local_5f;
    u32 local_60;
    u32 local_61;
    u32 local_62;
    u32 local_63;
    u32 local_64;
    u32 local_65;
    u32 local_66;
    u32 local_67;
    u32 local_68;
    u32 local_69;
    u32 local_6a;
    u32 local_6b;
    u32 local_6c;
    u32 local_6d;
    u32 local_6e;
    u32 local_6f;
    u32 local_70;
    u32 local_71;
    u32 local_72;
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163608.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
