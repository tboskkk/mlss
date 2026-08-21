	.syntax unified
	.text

	thumb_func_start sub_8046980
sub_8046980:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r0, _08046A04 @ =0x000002B5
	adds r5, r2, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _080469FC
	ldr r1, [r2, #0x0C]
	movs r4, #0x80
	adds r0, r1, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r3, _08046A08 @ =0xFFFFFF00
	ands r1, r3
	str r1, [r2, #0x0C]
	ldr r1, [r2, #0x10]
	adds r0, r1, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ands r1, r3
	str r1, [r2, #0x10]
	ldr r1, _08046A0C @ =0x0000020D
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _080469DC
	ldr r1, [r2, #0x14]
	adds r0, r1, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ands r1, r3
	str r1, [r2, #0x14]
	ldr r1, [r2, #0x18]
	adds r0, r1, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ands r1, r3
	str r1, [r2, #0x18]
_080469DC:
	movs r3, #0xB8
	lsls r3, r3, #0x02
	adds r0, r2, r3
	movs r1, #0x00
	strh r1, [r0, #0x00]
	subs r3, #0x9E
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080469FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08046A04: .4byte 0x000002B5
_08046A08: .4byte 0xFFFFFF00
_08046A0C: .4byte 0x0000020D
