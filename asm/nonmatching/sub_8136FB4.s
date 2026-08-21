	.syntax unified
	.text

	thumb_func_start sub_8136FB4
sub_8136FB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081370B4
	adds r0, r4, #0x0
	bl sub_80473DC
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813704C @ =0x08139261
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x54
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x2C]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	mov r8, r0
	ands r0, r1
	cmp r0, #0x00
	bne _08137050
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r6, #0x06
	ands r6, r0
	cmp r6, #0x00
	bne _08137050
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	b _081370AA
_0813704C: .4byte sub_8139260
_08137050:
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x30]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r7, #0x01
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081370AA
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r6, #0x06
	ands r6, r0
	cmp r6, #0x00
	bne _081370AA
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r3, r3, r0
	str r7, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
_081370AA:
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	movs r0, #0x78
	strh r0, [r1, #0x00]
_081370B4:
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
