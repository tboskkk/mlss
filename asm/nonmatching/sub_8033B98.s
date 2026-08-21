	.syntax unified
	.text

	thumb_func_start sub_8033B98
sub_8033B98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	mov r8, r1
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	ldr r2, _08033DE4 @ =0x0000035B
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x84
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x3E
	mov r1, r8
	strh r0, [r1, #0x04]
	ldr r7, _08033DE8 @ =0x00000351
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	movs r5, #0x40
	orrs r0, r5
	strb r0, [r1, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08033C32
	ldr r0, _08033DEC @ =0x00000352
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08033C22
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r4, r6, r3
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1B
	lsrs r2, r2, #0x1F
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_802DDB4
_08033C22:
	movs r0, #0xE2
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
_08033C32:
	ldr r2, _08033DEC @ =0x00000352
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08033DF0 @ =0x00001044
	mov r0, r8
	bl sub_8049000
	movs r3, #0xA5
	lsls r3, r3, #0x02
	add r3, r8
	mov r10, r3
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r7, #0x02
	orrs r0, r7
	strb r0, [r2, #0x12]
	ldr r2, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x03
	ldr r0, _08033DF4 @ =0x0000020A
	adds r4, r6, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r2, #0x20
	strb r1, [r2, #0x00]
	ldr r1, _08033DF8 @ =0x0000020B
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x38
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08033CB2
	b _08033E20
_08033CB2:
	adds r0, r6, #0x0
	mov r1, r8
	bl sub_80261C0
	adds r1, r0, #0x0
	cmp r1, r5
	beq _08033DAC
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08033DAC
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	movs r2, #0x9A
	lsls r2, r2, #0x01
	adds r0, r0, r2
	adds r5, r6, r0
	ldrb r0, [r5, #0x00]
	orrs r0, r7
	strb r0, [r5, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x07]
	lsls r1, r1, #0x08
	ldrb r0, [r2, #0x06]
	orrs r0, r1
	ldrb r1, [r2, #0x00]
	mov r2, r8
	adds r2, #0x54
	ldrb r2, [r2, #0x00]
	bl sub_8116A2C
	lsls r0, r0, #0x10
	movs r1, #0xF0
	lsls r1, r1, #0x0C
	ands r1, r0
	lsrs r1, r1, #0x10
	str r1, [sp, #0x010]
	lsrs r1, r0, #0x14
	movs r4, #0x01
	ands r1, r4
	mov r9, r1
	lsrs r7, r0, #0x15
	movs r0, #0x7F
	ands r7, r0
	ldrb r1, [r5, #0x01]
	lsls r1, r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r1, r1, r0
	ldrb r2, [r5, #0x02]
	lsls r2, r2, #0x0C
	ldr r3, _08033DFC @ =0xFFFFF800
	adds r2, r2, r3
	ldrb r3, [r5, #0x03]
	lsls r3, r3, #0x0B
	mov r12, r3
	movs r0, #0xC0
	lsls r0, r0, #0x04
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x010]
	str r0, [sp, #0x004]
	add r0, sp, #0x008
	mov r3, r9
	strb r3, [r0, #0x00]
	add r0, sp, #0x00C
	strb r4, [r0, #0x00]
	adds r0, r6, #0x0
	mov r3, r12
	bl sub_80262CC
	movs r1, #0x00
	mov r2, r10
	ldr r0, [r2, #0x00]
	movs r3, #0x02
	ldsh r0, [r0, r3]
	cmp r0, #0x3F
	bgt _08033D50
	movs r1, #0x01
_08033D50:
	str r1, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	ldr r2, [sp, #0x010]
	adds r3, r7, #0x0
	bl sub_802641C
	mov r0, r9
	cmp r0, #0x00
	beq _08033DAC
	ldr r0, _08033E00 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r3, #0x9B
	lsls r3, r3, #0x05
	adds r2, r3, #0x0
	ldrh r1, [r5, #0x04]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80E9958
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08033DAC
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r4, r6, r2
	ldr r0, [r4, #0x00]
	ldrb r1, [r5, #0x01]
	ldrb r2, [r5, #0x02]
	bl get_coldef_ptr_by_xz
	ldr r2, [r4, #0x00]
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x01
	lsrs r1, r1, #0x1E
	adds r0, r2, #0x0
	bl sub_805C8A4
_08033DAC:
	ldr r1, _08033E04 @ =0x0000033E
	add r1, r8
	movs r0, #0x00
	ldsb r0, [r1, r0]
	movs r4, #0x01
	negs r4, r4
	cmp r0, r4
	beq _08033E20
	adds r1, r0, #0x0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldr r3, _08033E08 @ =0x0000020E
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _08033E0C
	adds r0, r2, #0x0
	bl sub_804FFCC
	mov r0, r8
	bl sub_80499B8
	b _08033E20
_08033DE4: .4byte 0x0000035B
_08033DE8: .4byte 0x00000351
_08033DEC: .4byte 0x00000352
_08033DF0: .4byte 0x00001044
_08033DF4: .4byte 0x0000020A
_08033DF8: .4byte 0x0000020B
_08033DFC: .4byte 0xFFFFF800
_08033E00: .4byte 0x03000FC0
_08033E04: .4byte 0x0000033E
_08033E08: .4byte 0x0000020E
_08033E0C:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r6, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	adds r0, r2, #0x0
	movs r1, #0x30
	adds r2, r4, #0x0
	bl sub_80400B0
_08033E20:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
