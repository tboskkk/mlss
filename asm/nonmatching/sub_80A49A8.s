	.syntax unified
	.text

	thumb_func_start sub_80A49A8
sub_80A49A8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A4A04 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A49FC
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A49DC
	cmp r1, #0x04
	bne _080A49F8
_080A49DC:
	ldr r2, _080A4A08 @ =0x00002053
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A49F8:
	ldr r0, _080A4A0C @ =0x080A46FD
	str r0, [r6, #0x4C]
_080A49FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A4A04: .4byte 0x03000FD8
_080A4A08: .4byte 0x00002053
_080A4A0C: .4byte sub_80A46FC
