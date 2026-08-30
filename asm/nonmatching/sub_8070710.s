	.syntax unified
	.text

	thumb_func_start sub_8070710
sub_8070710:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0xA4
	ldr r0, [r2, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x9C
	ldr r4, [r1, #0x00]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	adds r5, r6, #0x0
	adds r5, #0xA0
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	muls r0, r1
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r1, r0
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _08070750
	adds r4, #0xFF
_08070750:
	asrs r1, r4, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08070774
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x14]
	ldr r0, _0807077C @ =0x08070C85
	str r0, [r6, #0x4C]
_08070774:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807077C: .4byte sub_8070C84
