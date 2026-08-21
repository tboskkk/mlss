	.syntax unified
	.text

	thumb_func_start sub_80D086C
sub_80D086C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D08E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x30]
	bl sub_8087EFC
	ldr r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D08E2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D08AA
	cmp r1, #0x04
	bne _080D08C6
_080D08AA:
	ldr r2, _080D08EC @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x05
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
_080D08C6:
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D08DA
	cmp r1, #0x04
	bne _080D08DE
_080D08DA:
	ldr r0, _080D08F0 @ =0x080D0AF9
	str r0, [r2, #0x4C]
_080D08DE:
	ldr r0, _080D08F4 @ =0x080D08F9
	str r0, [r6, #0x4C]
_080D08E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D08E8: .4byte 0x03000FD8
_080D08EC: .4byte 0x00002036
_080D08F0: .4byte sub_80D0AF8
_080D08F4: .4byte sub_80D08F8
