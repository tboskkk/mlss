	.syntax unified
	.text

	thumb_func_start sub_80BA0F0
sub_80BA0F0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080BA180 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BA17A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BA12C
	cmp r1, #0x04
	bne _080BA148
_080BA12C:
	ldr r2, _080BA184 @ =0x00002033
	adds r0, r4, #0x0
	movs r1, #0x02
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
_080BA148:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BA15A
	cmp r1, #0x04
	bne _080BA176
_080BA15A:
	ldr r2, _080BA188 @ =0x00002062
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BA176:
	ldr r0, _080BA18C @ =0x080BA191
	str r0, [r7, #0x4C]
_080BA17A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BA180: .4byte 0x03000FD8
_080BA184: .4byte 0x00002033
_080BA188: .4byte 0x00002062
_080BA18C: .4byte sub_80BA190
