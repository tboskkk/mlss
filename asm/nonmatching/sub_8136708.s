	.syntax unified
	.text

	thumb_func_start sub_8136708
sub_8136708:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r0, [r4, #0x2E]
	cmp r0, #0x00
	beq _0813671E
	subs r0, #0x10
	strh r0, [r4, #0x2E]
	ldr r1, _08136744 @ =0x02000054
	ldrh r0, [r4, #0x2E]
	lsrs r0, r0, #0x08
	strh r0, [r1, #0x00]
_0813671E:
	ldr r0, _08136748 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x00
	beq _0813674C
	adds r1, r4, #0x0
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _08136768
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08136768
_08136744: .4byte 0x02000054
_08136748: .4byte 0x0300034C
_0813674C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08136768
	adds r1, r4, #0x0
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	ble _08136768
	strb r2, [r1, #0x00]
_08136768:
	ldr r0, _081367A4 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813678C
	adds r0, r4, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	beq _0813678C
	cmp r0, #0x01
	bne _0813678C
	adds r0, r4, #0x0
	bl sub_81367DC
_0813678C:
	ldr r0, _081367A4 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0813679E
	adds r0, r4, #0x0
	bl sub_81367DC
_0813679E:
	pop {r4}
	pop {r0}
	bx r0
_081367A4: .4byte 0x0300034C
	.byte 0x70, 0x47, 0x00, 0x00
