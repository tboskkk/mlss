	.syntax unified
	.text

	thumb_func_start sub_8020D40
sub_8020D40:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08020DC8
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_8021A18
	cmp r0, #0x00
	bne _08020D8E
	ldr r3, _08020D9C @ =0x0203FFC4
	ldrh r2, [r4, #0x14]
	cmp r2, #0x00
	beq _08020D8E
	movs r7, #0x80
	lsls r7, r7, #0x07
	movs r6, #0x01
	ldr r0, _08020DA0 @ =0x0000FFFF
	adds r5, r0, #0x0
_08020D72:
	ldrh r1, [r3, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08020D86
	adds r0, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	beq _08020D86
	strh r5, [r3, #0x00]
_08020D86:
	adds r3, #0x02
	asrs r2, r2, #0x01
	cmp r2, #0x00
	bne _08020D72
_08020D8E:
	ldr r2, _08020DA4 @ =0x0203FFB8
	ldr r1, [r4, #0x64]
	cmp r1, #0x00
	beq _08020DA8
	ldr r0, [r4, #0x68]
	str r0, [r1, #0x68]
	b _08020DAC
_08020D9C: .4byte 0x0203FFC4
_08020DA0: .4byte 0x0000FFFF
_08020DA4: .4byte 0x0203FFB8
_08020DA8:
	ldr r0, [r4, #0x68]
	str r0, [r2, #0x30]
_08020DAC:
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _08020DB8
	ldr r0, [r4, #0x64]
	str r0, [r1, #0x64]
	b _08020DBC
_08020DB8:
	ldr r0, [r4, #0x64]
	str r0, [r2, #0x34]
_08020DBC:
	movs r0, #0x00
	str r0, [r4, #0x68]
	str r0, [r4, #0x64]
	ldrb r0, [r2, #0x01]
	subs r0, #0x01
	strb r0, [r2, #0x01]
_08020DC8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
