	.syntax unified
	.text

	thumb_func_start sub_80E8D90
sub_80E8D90:
	push {r4, lr}
	ldr r4, _080E8DB4 @ =0x03000FBC
	ldr r2, _080E8DB8 @ =0x08200180
	movs r0, #0x01
	movs r1, #0x34
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	ldr r0, _080E8DBC @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x34
	bl _call_via_r3
	pop {r4}
	pop {r0}
	bx r0
_080E8DB4: .4byte 0x03000FBC
_080E8DB8: .4byte dword_8200180 @ =0x08200180
_080E8DBC: .4byte 0x03001034
