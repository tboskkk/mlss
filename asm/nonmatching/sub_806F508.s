	.syntax unified
	.text

	thumb_func_start sub_806F508
sub_806F508:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r3, _0806F560 @ =0x08198504
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F51A
	adds r0, #0xFF
_0806F51A:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F530
	adds r0, #0x3F
_0806F530:
	asrs r1, r0, #0x06
	lsls r1, r1, #0x01
	movs r0, #0xE0
	lsls r0, r0, #0x04
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F544
	adds r0, #0xFF
_0806F544:
	asrs r0, r0, #0x08
	movs r1, #0x7F
	ands r0, r1
	cmp r0, #0x3F
	bhi _0806F568
	ldr r0, [r4, #0x10]
	ldr r1, _0806F564 @ =0xFFFFFE67
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	b _0806F576
	.byte 0x00, 0x00
_0806F560: .4byte word_8198504 @ =0x08198504
_0806F564: .4byte 0xFFFFFE67
_0806F568:
	ldr r0, [r4, #0x10]
	ldr r1, _0806F5E8 @ =0xFFFFFECD
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
_0806F576:
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA8
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	muls r0, r1
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x08]
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	strh r0, [r1, #0x0C]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806F5BA
	adds r1, #0xFF
_0806F5BA:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _0806F5E2
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _0806F5EC @ =0x0806F5F1
	str r0, [r4, #0x4C]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	str r0, [r5, #0x00]
_0806F5E2:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806F5E8: .4byte 0xFFFFFECD
_0806F5EC: .4byte sub_806F5F0
