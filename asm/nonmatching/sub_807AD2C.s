	.syntax unified
	.text

	thumb_func_start sub_807AD2C
sub_807AD2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0807AD7C @ =0x03000FC0
	ldr r0, [r4, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, _0807AD80 @ =0x00000205
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807AD8C
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	movs r2, #0x81
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807AD88
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r2, _0807AD84 @ =0x00000203
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r1, r0
	orrs r1, r0
	lsrs r5, r1, #0x1F
	b _0807AD8E
	.byte 0x00, 0x00
_0807AD7C: .4byte 0x03000FC0
_0807AD80: .4byte 0x00000205
_0807AD84: .4byte 0x00000203
_0807AD88:
	movs r5, #0x02
	b _0807AD94
_0807AD8C:
	movs r5, #0x03
_0807AD8E:
	cmp r5, #0x00
	bne _0807AD94
	b _0807AF52
_0807AD94:
	movs r4, #0x00
	ldr r0, _0807AE28 @ =0x03001034
	mov r9, r0
	ldr r1, _0807AE2C @ =0x08198154
	ldr r0, _0807AE30 @ =0x081980D8
	subs r7, r1, r0
	ldr r1, _0807AE34 @ =0x03000BD4
	mov r8, r1
	ldr r6, _0807AE38 @ =0x089F808C
_0807ADA6:
	ldr r0, _0807AE3C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	movs r2, #0x88
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r2, r0, r1
	ldr r3, [r2, #0x00]
	adds r4, #0x01
	mov r10, r4
	cmp r3, #0x00
	bne _0807ADC0
	b _0807AF4A
_0807ADC0:
	ldrb r0, [r3, #0x13]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0807ADCC
	b _0807AF4A
_0807ADCC:
	str r1, [r2, #0x00]
	movs r1, #0x00
	ldrh r2, [r3, #0x14]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0807ADE8
	movs r4, #0x01
_0807ADDC:
	adds r1, #0x01
	adds r0, r2, #0x0
	asrs r0, r1
	ands r0, r4
	cmp r0, #0x00
	beq _0807ADDC
_0807ADE8:
	lsls r0, r1, #0x05
	ldr r1, _0807AE40 @ =0x02000280
	adds r4, r0, r1
	ldr r0, _0807AE3C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x70]
	ldr r0, [r1, #0x10]
	cmp r0, r3
	beq _0807AE70
	ldr r1, [r2, #0x74]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807AE48
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AE44 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x32
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x34
	b _0807AE98
	.byte 0x00, 0x00
_0807AE28: .4byte 0x03001034
_0807AE2C: .4byte 0x08198154
_0807AE30: .4byte 0x081980D8
_0807AE34: .4byte 0x03000BD4
_0807AE38: .4byte 0x089F808C
_0807AE3C: .4byte 0x03000FD8
_0807AE40: .4byte 0x02000280
_0807AE44: .4byte 0x084FB588
_0807AE48:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEE8
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AE6C @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x2E
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x30
	b _0807AE98
	.byte 0x00, 0x00
_0807AE6C: .4byte 0x084FB588
_0807AE70:
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEB4
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AEB0 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x2A
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x2C
_0807AE98:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	adds r1, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
	b _0807AEE8
	.byte 0x00, 0x00
_0807AEB0: .4byte 0x084FB588
_0807AEB4:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEE8
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AF00 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x26
	cmp r0, #0x00
	beq _0807AED4
	movs r1, #0x28
_0807AED4:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	adds r1, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
_0807AEE8:
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0807AF24
	cmp r5, #0x01
	bne _0807AF08
	ldr r1, _0807AF04 @ =0x0000214A
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF00: .4byte 0x084FB588
_0807AF04: .4byte 0x0000214A
_0807AF08:
	cmp r5, #0x02
	bne _0807AF14
	ldr r2, _0807AF10 @ =0x000056F7
	b _0807AF46
_0807AF10: .4byte 0x000056F7
_0807AF14:
	cmp r5, #0x03
	bne _0807AF4A
	ldr r1, _0807AF20 @ =0x000033BF
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF20: .4byte 0x000033BF
_0807AF24:
	cmp r5, #0x01
	bne _0807AF30
	ldr r2, _0807AF2C @ =0x000014E6
	b _0807AF46
_0807AF2C: .4byte 0x000014E6
_0807AF30:
	cmp r5, #0x02
	bne _0807AF40
	ldr r1, _0807AF3C @ =0x00004A93
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF3C: .4byte 0x00004A93
_0807AF40:
	cmp r5, #0x03
	bne _0807AF4A
	ldr r2, _0807AF60 @ =0x0000275B
_0807AF46:
	adds r0, r2, #0x0
_0807AF48:
	strh r0, [r4, #0x02]
_0807AF4A:
	mov r4, r10
	cmp r4, #0x01
	bgt _0807AF52
	b _0807ADA6
_0807AF52:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0807AF60: .4byte 0x0000275B
