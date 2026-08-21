	.syntax unified
	.text

	thumb_func_start sub_80D8180
sub_80D8180:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080D8228 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080D81D6
	adds r0, r6, #0x0
	adds r0, #0xCD
	movs r1, #0x00
	ldsb r1, [r0, r1]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	ldr r1, [r5, #0x40]
	cmp r1, r0
	bge _080D81D6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D81D2
	cmp r1, #0x04
	bne _080D81D6
_080D81D2:
	ldr r0, _080D822C @ =0x080D8439
	str r0, [r5, #0x4C]
_080D81D6:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8220
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8200
	cmp r1, #0x04
	bne _080D821C
_080D8200:
	ldr r2, _080D8230 @ =0x00002005
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D821C:
	ldr r0, _080D8234 @ =0x080D8239
	str r0, [r7, #0x4C]
_080D8220:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8228: .4byte 0x03000FD8
_080D822C: .4byte sub_80D8438
_080D8230: .4byte 0x00002005
_080D8234: .4byte sub_80D8238
