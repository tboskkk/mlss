	.syntax unified
	.text

	thumb_func_start sub_8029910
sub_8029910:
	push {r4, lr}
	ldr r4, _08029930 @ =0x03000D80
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0802991E
	bl _call_via_r0
_0802991E:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08029928
	bl _call_via_r0
_08029928:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029930: .4byte 0x03000D80
