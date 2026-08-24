	.syntax unified
	.text

	thumb_func_start sub_8050940
sub_8050940:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	mov r9, r1
	adds r1, r3, #0x0
	ldr r3, [sp, #0x02C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x008]
	adds r2, r3, #0x0
	bl init_fobj_803FEB8
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, _08050AEC @ =0x08CDC068
	str r0, [r1, #0x00]
	mov r1, r9
	ldrb r0, [r1, #0x03]
	lsrs r3, r0, #0x07
	ldrb r2, [r1, #0x04]
	lsls r0, r2, #0x01
	movs r1, #0x1E
	ands r0, r1
	orrs r3, r0
	mov r4, r9
	ldrb r0, [r4, #0x01]
	lsls r1, r0, #0x04
	movs r0, #0x08
	ands r2, r0
	cmp r2, #0x00
	beq _0805098C
	subs r0, #0x28
	orrs r3, r0
_0805098C:
	adds r0, r1, r3
	lsls r6, r0, #0x08
	mov r1, r9
	ldrb r0, [r1, #0x04]
	lsrs r3, r0, #0x04
	ldrb r2, [r1, #0x05]
	lsls r0, r2, #0x04
	movs r1, #0x10
	ands r0, r1
	orrs r3, r0
	mov r4, r9
	ldrb r0, [r4, #0x02]
	lsls r1, r0, #0x04
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _080509B2
	subs r0, #0x21
	orrs r3, r0
_080509B2:
	adds r0, r1, r3
	lsls r5, r0, #0x08
	mov r0, r9
	ldrb r2, [r0, #0x05]
	lsrs r3, r2, #0x01
	ldrb r1, [r0, #0x03]
	movs r0, #0x7F
	ands r0, r1
	lsls r1, r0, #0x03
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _080509D2
	movs r0, #0x20
	negs r0, r0
	orrs r3, r0
_080509D2:
	adds r0, r1, r3
	lsls r3, r0, #0x08
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8047F60
	ldr r1, _08050AF0 @ =0x0000020F
	adds r6, r7, r1
	ldrb r0, [r6, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r2, #0x04
	mov r8, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r6, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r5, r7, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x0F
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r1, _08050AF4 @ =0x0000020D
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r3, #0x02
	negs r3, r3
	mov r10, r3
	mov r0, r10
	ands r0, r1
	subs r3, #0x01
	ands r0, r3
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _08050AF8 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r5, #0x00]
	ldr r0, _08050AFC @ =0x0000020E
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	mov r1, r8
	orrs r0, r1
	movs r1, #0x38
	orrs r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08050B00 @ =0x00000222
	adds r0, r7, r2
	strb r4, [r0, #0x00]
	ldr r1, _08050B04 @ =0x00000223
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	subs r2, #0x0C
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	ands r3, r0
	strb r3, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x55
	strb r4, [r0, #0x00]
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r0, r7, r3
	str r4, [r0, #0x00]
	movs r1, #0x8B
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r4, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	movs r3, #0x01
	orrs r0, r3
	strb r0, [r5, #0x00]
	ldrb r1, [r6, #0x00]
	mov r0, r10
	ands r0, r1
	strb r0, [r6, #0x00]
	movs r4, #0x85
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _08050B08 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r3, [sp, #0x008]
	movs r4, #0x9B
	lsls r4, r4, #0x05
	adds r2, r3, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08050B28
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x20
	beq _08050B0C
	movs r2, #0x00
	cmp r0, #0x40
	bne _08050B0E
	movs r2, #0x01
	b _08050B0E
	.byte 0x00, 0x00
_08050AEC: .4byte 0x08CDC068
_08050AF0: .4byte 0x0000020F
_08050AF4: .4byte 0x0000020D
_08050AF8: .4byte 0xFFFC7FFF
_08050AFC: .4byte 0x0000020E
_08050B00: .4byte 0x00000222
_08050B04: .4byte 0x00000223
_08050B08: .4byte 0x03000FC0
_08050B0C:
	movs r2, #0x02
_08050B0E:
	movs r4, #0xCF
	lsls r4, r4, #0x02
	adds r3, r7, r4
	lsls r2, r2, #0x03
	ldrb r1, [r3, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08050B36
_08050B28:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	mov r0, r10
	ands r0, r1
	strb r0, [r2, #0x00]
_08050B36:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r0, _08050BAC @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08050BB0 @ =0x0000023B
	adds r0, r7, r2
	movs r3, #0x00
	strb r3, [r0, #0x00]
	ldr r4, _08050BB4 @ =0x0000033E
	adds r2, r7, r4
	ldrh r0, [r2, #0x00]
	movs r4, #0xFF
	lsls r4, r4, #0x01
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r7, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r2, _08050BB8 @ =0x00000342
	adds r1, r7, r2
	ldr r0, _08050BBC @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r1, sp
	ldrh r1, [r1, #0x08]
	strh r1, [r0, #0x00]
	adds r2, #0x06
	adds r0, r7, r2
	mov r4, r9
	str r4, [r0, #0x00]
	movs r1, #0xD3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r3, [r0, #0x00]
	adds r0, r7, #0x0
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08050BAC: .4byte 0xFFFFFC3F
_08050BB0: .4byte 0x0000023B
_08050BB4: .4byte 0x0000033E
_08050BB8: .4byte 0x00000342
_08050BBC: .4byte 0x0000FFFF
