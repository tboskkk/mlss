	.syntax unified
	.text

	thumb_func_start sub_802EDC4
sub_802EDC4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	add r0, sp, #0x024
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r9, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldrb r7, [r0, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0802EDF6
	b _0802EF08
_0802EDF6:
	adds r0, r4, #0x0
	adds r0, #0xF9
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _0802EE06
	b _0802EF08
_0802EE06:
	ldr r1, _0802EEF4 @ =0x000002B5
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	bne _0802EF08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r1, [r0, #0x00]
	movs r0, #0xB4
	lsls r0, r0, #0x02
	adds r2, r4, r0
	adds r0, #0x04
	adds r3, r4, r0
	mov r0, sp
	strb r6, [r0, #0x00]
	add r0, sp, #0x004
	strb r7, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_804A124
	adds r1, r4, #0x0
	adds r1, #0xE4
	str r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0802EF08
	ldr r1, _0802EEF8 @ =0x00000353
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802EF08
	mov r0, r9
	cmp r0, #0x00
	beq _0802EF08
	mov r1, r8
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bne _0802EF08
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_804FC90
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_804FC90
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802EEAE
	movs r1, #0xE2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8047C18
	cmp r0, #0x00
	beq _0802EEAE
	movs r0, #0xAE
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0802EEFC @ =0x0000026E
	adds r1, r4, r0
	movs r0, #0x3C
	strh r0, [r1, #0x00]
_0802EEAE:
	ldr r0, _0802EF00 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x10
	movs r3, #0x00
	bl sub_8027030
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r3, _0802EF04 @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x07
	strb r0, [r1, #0x00]
	movs r0, #0x01
	b _0802EF0A
	.byte 0x00, 0x00
_0802EEF4: .4byte 0x000002B5
_0802EEF8: .4byte 0x00000353
_0802EEFC: .4byte 0x0000026E
_0802EF00: .4byte 0x0000FFFF
_0802EF04: .4byte 0x00000351
_0802EF08:
	movs r0, #0x00
_0802EF0A:
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
