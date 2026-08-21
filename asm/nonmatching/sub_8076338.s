	.syntax unified
	.text

	thumb_func_start sub_8076338
sub_8076338:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080763FC
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076364
	adds r0, #0xFF
_08076364:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076372
	adds r0, #0xFF
_08076372:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076380
	adds r0, #0xFF
_08076380:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08076404 @ =0x00008031
	bl sub_807BF34
	adds r6, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	str r0, [r6, #0x30]
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076408 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r0, _0807640C @ =0x08077291
	str r0, [r6, #0x4C]
	adds r0, r7, #0x0
	adds r0, #0xA4
	str r5, [r0, #0x00]
	ldr r0, _08076410 @ =0x08077391
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xA8
	movs r0, #0x0A
	str r0, [r1, #0x00]
_080763FC:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076404: .4byte 0x00008031
_08076408: .4byte sub_8087540
_0807640C: .4byte sub_8077290
_08076410: .4byte sub_8077390
