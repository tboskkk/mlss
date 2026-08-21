	.syntax unified
	.text

	thumb_func_start sub_8112840
sub_8112840:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r0, _0811286C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0x08
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811286C: .4byte 0x03000FD8
