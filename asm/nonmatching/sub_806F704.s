	.syntax unified
	.text

	thumb_func_start sub_806F704
sub_806F704:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _0806F75C @ =0x08198504
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F716
	adds r0, #0xFF
_0806F716:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F72C
	adds r0, #0x3F
_0806F72C:
	asrs r1, r0, #0x06
	lsls r1, r1, #0x01
	movs r0, #0xE0
	lsls r0, r0, #0x04
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F740
	adds r0, #0xFF
_0806F740:
	asrs r0, r0, #0x08
	movs r1, #0x7F
	ands r0, r1
	cmp r0, #0x3F
	bhi _0806F764
	ldr r0, [r4, #0x10]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x00]
	ldr r1, _0806F760 @ =0xFFFFF400
	b _0806F772
	.byte 0x00, 0x00
_0806F75C: .4byte 0x08198504
_0806F760: .4byte 0xFFFFF400
_0806F764:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x00]
	ldr r1, _0806F7D0 @ =0xFFFFF700
_0806F772:
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
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x0C]
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _0806F7CA
	str r0, [r4, #0x10]
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _0806F7D4 @ =0x0806F7D9
	str r0, [r4, #0x4C]
_0806F7CA:
	pop {r4}
	pop {r0}
	bx r0
_0806F7D0: .4byte 0xFFFFF700
_0806F7D4: .4byte sub_806F7D8
