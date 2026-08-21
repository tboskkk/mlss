	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start _call_via_r0
_call_via_r0: @ 081DAA68
	bx r0
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r1
_call_via_r1: @ 081DAA6C
	bx r1
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r2
_call_via_r2: @ 081DAA70
	bx r2
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r3
_call_via_r3: @ 081DAA74
	bx r3
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r4
_call_via_r4: @ 081DAA78
	bx r4
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r5
_call_via_r5: @ 081DAA7C
	bx r5
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r6
_call_via_r6: @ 081DAA80
	bx r6
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r7
_call_via_r7: @ 081DAA84
	bx r7
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r8
_call_via_r8: @ 081DAA88
	bx r8
	.byte 0xC0, 0x46
	thumb_func_start sub_81DAA8C
sub_81DAA8C:
	bx r9
	.byte 0xC0, 0x46, 0x50, 0x47, 0xC0, 0x46, 0x58, 0x47, 0xC0, 0x46
	thumb_func_start sub_81DAA98
sub_81DAA98:
	bx r12
	.byte 0xC0, 0x46, 0x68, 0x47, 0xC0, 0x46, 0x70, 0x47, 0xC0, 0x46
