	.syntax unified
	.text

	thumb_func_start sub_8138C8C
sub_8138C8C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r2, r1, #0x0
	adds r3, r2, #0x0
	adds r3, #0x58
	movs r6, #0x00
	adds r4, r2, #0x0
	adds r4, #0xF8
	ldrh r1, [r4, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08138CAE
	movs r0, #0x00
	b _08138E18
_08138CAE:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r2, #0x0C]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08138CDC
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08138CDC
	adds r0, r2, #0x0
	bl sub_8046980
	ldrh r1, [r4, #0x00]
	adds r0, r5, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
	movs r0, #0x00
	b _08138E18
_08138CDC:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _08138D66
	ldr r1, _08138DCC @ =0x0000020E
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _08138D38
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0xFE
	ands r0, r1
	cmp r0, #0x00
	bne _08138D38
	movs r0, #0xE3
	lsls r0, r0, #0x02
	muls r0, r1
	adds r0, r0, r7
	ldr r3, _08138DD0 @ =0x0000037A
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08138D66
_08138D38:
	ldr r1, _08138DD4 @ =0x00000213
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x1E
	ands r1, r0
	cmp r1, #0x00
	bne _08138D62
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	subs r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138DD8 @ =0x000002B6
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08138DA0
_08138D62:
	movs r0, #0x01
	orrs r6, r0
_08138D66:
	adds r0, r2, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _08138DE4
	ldr r3, _08138DD4 @ =0x00000213
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r1, r0, #0x1C
	movs r0, #0x0C
	ands r1, r0
	cmp r1, #0x00
	bne _08138DE0
	adds r3, #0x31
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	subs r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138DD8 @ =0x000002B6
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08138DE0
_08138DA0:
	adds r3, #0x9C
	adds r1, r2, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08138DAE
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08138DAE:
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r1, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r1, _08138DDC @ =0x000002B5
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	subs r0, #0x08
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	b _08138E18
	.byte 0x00, 0x00
_08138DCC: .4byte 0x0000020E
_08138DD0: .4byte 0x0000037A
_08138DD4: .4byte 0x00000213
_08138DD8: .4byte 0x000002B6
_08138DDC: .4byte 0x000002B5
_08138DE0:
	movs r0, #0x01
	orrs r6, r0
_08138DE4:
	cmp r6, #0x00
	beq _08138DFC
	ldr r3, _08138DF8 @ =0x000002DE
	adds r1, r2, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08138DFC
	subs r0, #0x01
	strh r0, [r1, #0x00]
	b _08138E16
_08138DF8: .4byte 0x000002DE
_08138DFC:
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	ldr r3, _08138E20 @ =0x00000242
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138E24 @ =0x000002DA
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
_08138E16:
	movs r0, #0x01
_08138E18:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08138E20: .4byte 0x00000242
_08138E24: .4byte 0x000002DA
