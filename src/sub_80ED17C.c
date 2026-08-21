#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80ED17C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED17C.s\"");
#else
void sub_80ED17C(u32* p0, u32* p1, u32* p2, u32* p3)
{
    u32* var1;
    u32* var2;
    u32* var3;
    u32 var4;
    u32 var5;
    u32* var6;
    
    var1 = p0;
    var2 = p1;
    var3 = p2;
    var6 = p3;
    var4 = *(u32*)((u8*)var6 + 0x08);
    var5 = *var6;
    if (var5 <= 4)
    {
        var4 = *(u32*)((u8*)var6 + 0x08);
        var5 <<= 2;
        var5 += (u32)(&var4);
        var5 = *(u32*)var5;
        ((void(*)())var5)();
    }
    else
    {
        *(u32*)((u8*)var1 + 0x0) = 0x00000001;
        return;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED304.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
