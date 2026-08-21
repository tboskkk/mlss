	.syntax unified
	.text

	thumb_func_start sub_809AB48
sub_809AB48:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x2C]
	cmp r0, #0x00
	beq _0809AB5A
	b _0809AD1C
_0809AB5A:
	adds r0, r5, #0x0
	bl sub_8087CE4
	movs r7, #0x00
	movs r0, #0x79
	adds r0, r0, r5
	mov r8, r0
_0809AB68:
	ldr r0, _0809AC64 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809AC74
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	blt _0809AC74
	ldr r1, [r5, #0x38]
	ldr r0, [r6, #0x38]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _0809AB9A
	adds r1, #0x0F
_0809AB9A:
	asrs r2, r1, #0x04
	ldr r1, [r5, #0x3C]
	ldr r0, [r6, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809ABA8
	adds r0, #0x07
_0809ABA8:
	asrs r0, r0, #0x03
	adds r1, r2, #0x0
	muls r1, r2
	adds r2, r0, #0x0
	muls r2, r0
	adds r0, r2, #0x0
	adds r1, r1, r0
	movs r0, #0xC8
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _0809AC74
	cmp r3, #0x00
	bne _0809AC74
	ldr r0, [r6, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xBA
	cmp r0, #0x00
	beq _0809ABD4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	ble _0809ABD6
_0809ABD4:
	strh r3, [r1, #0x00]
_0809ABD6:
	ldr r0, _0809AC68 @ =0x000040C1
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	ldr r1, [r5, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	adds r2, r0, #0x1
	adds r1, #0x25
	ldrb r1, [r1, #0x00]
	cmp r2, r1
	bne _0809ABFC
	movs r2, #0x00
_0809ABFC:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r4, [r0, #0x00]
	ldrb r1, [r4, #0x11]
	movs r2, #0x0D
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	orrs r1, r0
	strb r1, [r4, #0x11]
	ldr r0, [r5, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	ldr r1, _0809AC6C @ =0x02000052
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	str r6, [r5, #0x2C]
	str r5, [r6, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x7C
	ldrh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	subs r0, #0x06
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _0809AC5E
	cmp r1, #0x04
	bne _0809AC7C
_0809AC5E:
	ldr r0, _0809AC70 @ =0x0809AD31
	str r0, [r6, #0x4C]
	b _0809AC7C
_0809AC64: .4byte 0x03000FD8
_0809AC68: .4byte 0x000040C1
_0809AC6C: .4byte 0x02000052
_0809AC70: .4byte sub_809AD30
_0809AC74:
	adds r7, #0x01
	cmp r7, #0x01
	bgt _0809AC7C
	b _0809AB68
_0809AC7C:
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809AD1C
	movs r1, #0x1C
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	beq _0809ACFC
	ldr r1, [r5, #0x34]
	movs r6, #0x01
	ldrb r0, [r1, #0x03]
	movs r2, #0x76
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #0xFF
	beq _0809ACD4
	ldr r7, _0809ACF4 @ =0x083B88EC
	adds r4, r1, #0x3
_0809ACA4:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _0809ACCA
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x02
	movs r0, #0x20
	ldsh r2, [r5, r0]
	lsls r0, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r1, #0x00]
	str r0, [r5, #0x34]
_0809ACCA:
	adds r4, #0x01
	adds r6, #0x01
	ldrb r0, [r4, #0x00]
	cmp r0, #0xFF
	bne _0809ACA4
_0809ACD4:
	ldrh r0, [r5, #0x1C]
	subs r0, #0x01
	movs r1, #0x00
	strh r0, [r5, #0x1C]
	strh r1, [r5, #0x1E]
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _0809ACEE
	cmp r1, #0x04
	bne _0809AD1C
_0809ACEE:
	ldr r0, _0809ACF8 @ =0x0809AECD
	b _0809AD1A
	.byte 0x00, 0x00
_0809ACF4: .4byte 0x083B88EC
_0809ACF8: .4byte sub_809AECC
_0809ACFC:
	ldr r2, _0809AD28 @ =0x000040C0
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809AD2C @ =0x0809AEB1
_0809AD1A:
	str r0, [r5, #0x4C]
_0809AD1C:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809AD28: .4byte 0x000040C0
_0809AD2C: .4byte sub_809AEB0
