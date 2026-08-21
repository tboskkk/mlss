	.syntax unified
	.text

	thumb_func_start sub_8076414
sub_8076414:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080764C2
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807643A
	adds r1, #0xFF
_0807643A:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08076444
	adds r0, #0xFF
_08076444:
	asrs r0, r0, #0x08
	adds r2, r0, #0x5
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076450
	adds r3, #0xFF
_08076450:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080764CC @ =0x00002503
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076468
	adds r0, #0xFF
_08076468:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x48
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807647A
	adds r0, #0xFF
_0807647A:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807648A
	adds r0, #0xFF
_0807648A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080764D0 @ =0x00004046
	bl sub_807BF34
	ldr r1, [r4, #0x30]
	str r1, [r0, #0x30]
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	ldr r0, _080764D4 @ =0x08077351
	str r0, [r4, #0x4C]
_080764C2:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080764CC: .4byte 0x00002503
_080764D0: .4byte 0x00004046
_080764D4: .4byte sub_8077350
