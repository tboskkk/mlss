	.syntax unified
	.text

	thumb_func_start sub_80459C0
sub_80459C0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, _08045A1C @ =0x00000212
	adds r6, r5, r0
	ldrh r1, [r6, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08045A86
	movs r1, #0xAD
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldrb r0, [r4, #0x00]
	subs r0, #0x01
	strb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08045A34
	subs r1, #0xA5
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08045A20
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	ldrh r1, [r6, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	adds r1, r2, #0x2
	cmp r0, #0x80
	bne _08045A14
	subs r1, r2, #0x2
_08045A14:
	str r1, [r3, #0x00]
	ldrb r0, [r1, #0x00]
	b _08045A32
	.byte 0x00, 0x00
_08045A1C: .4byte 0x00000212
_08045A20:
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xAC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x01]
_08045A32:
	strb r0, [r4, #0x00]
_08045A34:
	movs r1, #0xAD
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08045A86
	movs r2, #0x00
	ldr r0, _08045A8C @ =0x00000212
	adds r4, r5, r0
	ldrh r1, [r4, #0x00]
	subs r0, #0x92
	ands r0, r1
	cmp r0, #0x80
	bne _08045A58
	movs r2, #0x01
_08045A58:
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_804761C
	ldrh r1, [r4, #0x00]
	ldr r0, _08045A90 @ =0xFFFFFE7F
	ands r0, r1
	strh r0, [r4, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	subs r1, #0x81
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x01
	ldrb r2, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
_08045A86:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08045A8C: .4byte 0x00000212
_08045A90: .4byte 0xFFFFFE7F
