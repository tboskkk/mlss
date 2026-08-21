#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8117C50 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8117C50.s\"");
#else
void sub_8117C50(s32 r0, s32 r1, s32 r2)
{
    s32 r3;
    s32 r0_2;
    
    r3 = r0;
    r0_2 = 0xFFFE;
    if (r2 != r0_2)
    {
        if (r2 > r0_2)
        {
            r0_2 = 0xFFFF;
            if (r2 == r0_2)
            {
                r3 = r1;
            }
            else
            {
                r3 = r3 + r2;
                if (r1 < r3)
                {
                    r3 = r1;
                }
            }
        }
        else
        {
            r0_2--;
            if (r2 == r0_2)
            {
                r3 = r1 >> 2;
                r0_2 = 3;
            }
            else
            {
                r3 = r3 + r2;
                if (r1 < r3)
                {
                    r3 = r1;
                }
            }
        }
    }
    else
    {
        r3 = r1 >> 1;
        r0_2 = 1;
    }
    
    r0_2 &= r1;
    if (r0_2 != 0)
    {
        r3++;
    }
    
    r0 = r3;
    r1 = r0;
    bx r1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8117C9C.s\"");
#else
#error "TODO: write sub_8117C9C to match asm/nonmatching/sub_8117C9C.s, then delete this #error"
#endif
