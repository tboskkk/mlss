	.syntax unified
	.text

	thumb_func_start sub_8098198
sub_8098198:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, _08098254 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	cmp r4, r1
	bne _080981BC
	ldr r2, _08098258 @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_080981BC:
	cmp r4, r5
	bne _080981CC
	ldr r2, _0809825C @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_080981CC:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x00]
	ldr r5, [r0, #0x7C]
	adds r0, r5, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _08098260
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080981F8
	cmp r1, #0x04
	bne _080982CC
_080981F8:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08098200
	adds r0, #0xFF
_08098200:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809821A
	adds r2, #0xFF
_0809821A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0809823E
	adds r0, #0xFF
_0809823E:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
	b _080982CC
_08098254: .4byte 0x03000FD8
_08098258: .4byte 0x00002027
_0809825C: .4byte 0x00002056
_08098260:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098272
	cmp r1, #0x04
	bne _080982CC
_08098272:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0809827A
	adds r0, #0xFF
_0809827A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08098294
	adds r2, #0xFF
_08098294:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080982B8
	adds r0, #0xFF
_080982B8:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_080982CC:
	ldr r0, _080982D8 @ =0x080988D9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080982D8: .4byte sub_80988D8
