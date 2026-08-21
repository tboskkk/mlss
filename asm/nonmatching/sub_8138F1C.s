	.syntax unified
	.text

	thumb_func_start sub_8138F1C
sub_8138F1C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08138F2C
	adds r0, r4, #0x7
_08138F2C:
	asrs r4, r0, #0x03
	muls r5, r3
	subs r5, r5, r4
	ldr r2, _08138F58 @ =0x03001038
	ldr r0, _08138F5C @ =0x0819832C
	ldr r1, _08138F60 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	negs r0, r6
	muls r0, r5
	muls r0, r5
	adds r1, r4, #0x0
	muls r1, r4
	bl _call_via_r2
	adds r0, r0, r6
	lsls r0, r0, #0x08
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08138F58: .4byte 0x03001038
_08138F5C: .4byte 0x0819832C
_08138F60: .4byte 0x08198220
