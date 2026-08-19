#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// alarm needs.

asm_unified(".include \"asm/macros.inc\"");

unsigned int alarm(unsigned int seconds) {
    return seconds;
}
