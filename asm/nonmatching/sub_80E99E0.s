	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080E99FC @ =0x00001CB7
	cmp r1, r0
	bhi _080E9A0C
	ldr r2, _080E9A00 @ =0xFFFFE470
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080E9A04 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	ldr r2, _080E9A08 @ =0x00000414
	b _080E9A20
_080E99FC: .4byte 0x00001CB7
_080E9A00: .4byte 0xFFFFE470
_080E9A04: .4byte 0x03000FC0
_080E9A08: .4byte 0x00000414
_080E9A0C:
	ldr r0, _080E9A28 @ =0x00001CD7
	cmp r1, r0
	bhi _080E9A38
	ldr r2, _080E9A2C @ =0xFFFFE348
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080E9A30 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	ldr r2, _080E9A34 @ =0x0000053C
_080E9A20:
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	b _080E9A66
_080E9A28: .4byte 0x00001CD7
_080E9A2C: .4byte 0xFFFFE348
_080E9A30: .4byte 0x03000FC0
_080E9A34: .4byte 0x0000053C
_080E9A38:
	ldr r0, _080E9A58 @ =0x00001D17
	cmp r1, r0
	bhi _080E9A64
	ldr r2, _080E9A5C @ =0xFFFFE328
	adds r0, r1, r2
	lsls r0, r0, #0x10
	ldr r1, _080E9A60 @ =0x03000FC0
	ldr r1, [r1, #0x00]
	lsrs r0, r0, #0x0F
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	b _080E9A66
	.byte 0x00, 0x00
_080E9A58: .4byte 0x00001D17
_080E9A5C: .4byte 0xFFFFE328
_080E9A60: .4byte 0x03000FC0
_080E9A64:
	movs r0, #0x00
_080E9A66:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
