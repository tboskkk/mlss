	.syntax unified
	.text

	thumb_func_start sub_80E1880
sub_80E1880:
	push {r4, lr}
	adds r4, r2, #0x0
	ldr r3, [r0, #0x08]
	cmp r3, #0x00
	beq _080E18CE
	cmp r1, #0x00
	beq _080E18BC
	lsls r1, r1, #0x01
	ldr r0, _080E18A8 @ =0x0838F8B2
	adds r2, r1, r0
	ldrb r1, [r3, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080E18AC
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	subs r0, r0, r1
	b _080E18B2
	.byte 0x00, 0x00
_080E18A8: .4byte 0x0838F8B2
_080E18AC:
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r0, r1
_080E18B2:
	strh r0, [r3, #0x00]
	ldrh r0, [r2, #0x02]
	ldrh r1, [r3, #0x02]
	adds r0, r0, r1
	strh r0, [r3, #0x02]
_080E18BC:
	cmp r4, #0x00
	beq _080E18CE
	lsls r0, r4, #0x01
	ldr r1, _080E18D4 @ =0x0838F8B2
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	strh r1, [r3, #0x04]
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x06]
_080E18CE:
	pop {r4}
	pop {r0}
	bx r0
_080E18D4: .4byte 0x0838F8B2
