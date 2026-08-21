	.syntax unified
	.text

	thumb_func_start sub_8107040
sub_8107040:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08107058 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0x08
	ldr r1, [r0, #0x4C]
	cmp r1, #0x00
	beq _0810705C
	bl _call_via_r1
	b _0810706E
_08107058: .4byte 0x03000FD8
_0810705C:
	ldr r0, _08107074 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08107078 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x04]
	adds r0, r2, #0x0
	bl _call_via_r1
_0810706E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107074: .4byte 0x03000FDC
_08107078: .4byte 0x00008E58
