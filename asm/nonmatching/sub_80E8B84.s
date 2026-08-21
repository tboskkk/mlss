	.syntax unified
	.text

	thumb_func_start sub_80E8B84
sub_80E8B84:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x08]
	subs r0, r3, #0x1
	ldrb r2, [r0, #0x00]
	adds r5, r2, #0x0
	ldrb r6, [r3, #0x00]
	cmp r1, #0x00
	beq _080E8C1C
	cmp r2, #0x0A
	bls _080E8B9E
	adds r0, r3, #0x1
	str r0, [r4, #0x08]
_080E8B9E:
	cmp r2, #0x0E
	beq _080E8BB6
	cmp r2, #0x0E
	bgt _080E8BAC
	cmp r2, #0x0A
	beq _080E8C0C
	b _080E8C1C
_080E8BAC:
	cmp r5, #0x0F
	beq _080E8BD4
	cmp r5, #0x10
	beq _080E8BEC
	b _080E8C1C
_080E8BB6:
	ldr r0, _080E8BD0 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x04]
	ldrh r1, [r1, #0x00]
	bl sub_80E8D20
	str r0, [r4, #0x08]
	b _080E8C1C
	.byte 0x00, 0x00
_080E8BD0: .4byte 0x03000FBC
_080E8BD4:
	ldr r0, _080E8BE8 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x00]
	movs r1, #0x00
	b _080E8BFE
_080E8BE8: .4byte 0x03000FBC
_080E8BEC:
	ldr r0, _080E8C08 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
_080E8BFE:
	bl sub_80E8C28
	str r0, [r4, #0x08]
	b _080E8C1C
	.byte 0x00, 0x00
_080E8C08: .4byte 0x03000FBC
_080E8C0C:
	ldr r0, _080E8C24 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _080E8C1C
	str r0, [r4, #0x08]
	movs r0, #0x00
	str r0, [r1, #0x0C]
_080E8C1C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E8C24: .4byte 0x03000FBC
