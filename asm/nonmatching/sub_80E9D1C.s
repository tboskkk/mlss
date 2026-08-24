	.syntax unified
	.text

	thumb_func_start sub_80E9D1C
sub_80E9D1C:
	push {r4, r5, lr}
	ldr r4, _080E9D44 @ =0x03000FC0
	movs r5, #0xAE
	lsls r5, r5, #0x03
	ldr r2, _080E9D48 @ =0x08200190
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	ldr r0, _080E9D4C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0
_080E9D44: .4byte 0x03000FC0
_080E9D48: .4byte dword_8200190 @ =0x08200190
_080E9D4C: .4byte 0x03001034
