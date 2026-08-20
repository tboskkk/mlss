#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150118 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150118.s\"");
#else
void sub_8150118(s32 param_1)
{
  s32 var_4;
  
  var_4 = param_1 << 0x10;
  var_4 >>= 0x10;
  if (var_4 > 0xd0) {
    if (var_4 <= 0x80) {
      if ((var_4 > 0x98) && (var_4 <= 0xb0)) {
        param_1 = 0x600;
      }
      else {
        if (var_4 <= 0xe0) {
          if (var_4 > 0xe0) {
            if ((var_4 <= 0xc8) && (var_4 > 0xc8)) {
              param_1 = 0x800;
            }
            else {
              if (var_4 > 0x80) {
                param_1 = 0x0;
              }
              else {
                param_1 = 0xa00;
              }
            }
          }
          else {
            param_1 = 0x800;
          }
        }
        else {
          param_1 = 0x800;
        }
      }
    }
    else {
      param_1 = 0x600;
    }
  }
  else {
    param_1 = 0x400;
  }
  return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150178.s\"");
#else
void sub_8150178(s32 r0)
{
    s32 r1 = r0 >> 16;
    
    if (r1 > 0xD0)
    {
        if (r1 > 0x80)
        {
            if (r1 > 0xE0)
            {
                if (r1 > 0x98)
                {
                    if (r1 > 0xB0)
                    {
                        if (r1 > 0xC8)
                        {
                            if (r1 > 0xE0)
                            {
                                if (r1 <= 0x80)
                                {
                                    r0 = 0xF0000;
                                }
                                else
                                {
                                    r0 = 0x0;
                                }
                            }
                            else
                            {
                                r0 = 0xD0000;
                            }
                        }
                        else
                        {
                            r0 = 0xC0000;
                        }
                    }
                    else
                    {
                        r0 = 0xB0000;
                    }
                }
                else
                {
                    r0 = 0x90000;
                }
            }
            else
            {
                r0 = 0xE0000;
            }
        }
        else
        {
            r0 = 0xA0000;
        }
    }
    
    (void)r0;
}
#endif
