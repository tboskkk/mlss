	.syntax unified
	.text

	thumb_func_start sub_810C0C8
sub_810C0C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r6, _0810C0F8 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	lsls r5, r0, #0x02
	ldrb r1, [r2, #0x0B]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810C0E6
	b _0810C2A0
_0810C0E6:
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	adds r0, r0, r5
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C0FC
	adds r7, r4, #0x0
	b _0810C118
_0810C0F8: .4byte 0x03000FD8
_0810C0FC:
	adds r0, r2, #0x0
	adds r0, #0x48
	ldr r1, _0810C134 @ =0x0810C399
	bl sub_807FFD8
	str r4, [r0, #0x08]
	strh r4, [r0, #0x16]
	ldr r1, [r6, #0x00]
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r5
	str r0, [r1, #0x00]
	adds r7, r0, #0x0
_0810C118:
	cmp r7, #0x00
	bne _0810C11E
	b _0810C2A0
_0810C11E:
	ldr r0, _0810C138 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, _0810C13C @ =0x000002F9
	adds r3, r2, r0
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _0810C140
	mov r0, r9
	bl sub_810C9A4
	b _0810C2A0
_0810C134: .4byte sub_810C398
_0810C138: .4byte 0x03000FD8
_0810C13C: .4byte 0x000002F9
_0810C140:
	mov r0, r9
	lsls r1, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldrb r3, [r3, #0x00]
	mov r8, r3
	cmp r3, #0x02
	bne _0810C16C
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	movs r5, #0x19
	cmp r0, #0x00
	beq _0810C182
	movs r5, #0x1D
	b _0810C182
_0810C16C:
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	movs r5, #0x17
	cmp r0, #0x00
	beq _0810C182
	movs r5, #0x1B
_0810C182:
	cmp r5, #0x03
	ble _0810C18E
	movs r0, #0x20
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_0810C18E:
	subs r1, r5, #0x1
	adds r0, r6, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r5, r1, r0
	ldrh r0, [r7, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0x1F
	ands r0, r1
	cmp r0, r8
	beq _0810C2A0
	ldr r0, [r7, #0x08]
	cmp r0, #0x00
	beq _0810C1B2
	adds r4, r0, #0x0
	b _0810C1C2
_0810C1B2:
	ldr r0, _0810C274 @ =0x00007001
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	str r4, [r7, #0x08]
_0810C1C2:
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810C1E0
	adds r0, #0xFF
_0810C1E0:
	asrs r0, r0, #0x08
	subs r0, #0x0E
	strh r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xDC
	adds r1, r6, #0x0
	adds r1, #0xE0
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0810C1FA
	adds r0, #0xFF
_0810C1FA:
	asrs r0, r0, #0x08
	subs r0, #0x34
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r2, #0x10
	orrs r0, r2
	movs r5, #0x0D
	negs r5, r5
	ands r0, r5
	movs r3, #0x04
	orrs r0, r3
	adds r1, #0x2D
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x1F]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810C244
	ldrb r1, [r4, #0x11]
	adds r0, r5, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x11]
_0810C244:
	ldrh r1, [r7, #0x16]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _0810C278 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _0810C27C @ =0x000002F9
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _0810C284
	movs r0, #0x04
	ldsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _0810C28C
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, _0810C280 @ =0x0810C2B5
	b _0810C294
	.byte 0x00, 0x00
_0810C274: .4byte 0x00007001
_0810C278: .4byte 0x03000FD8
_0810C27C: .4byte 0x000002F9
_0810C280: .4byte sub_810C2B4
_0810C284:
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r4, #0x06]
	strh r0, [r4, #0x04]
_0810C28C:
	ldrb r0, [r4, #0x12]
	orrs r0, r2
	strb r0, [r4, #0x12]
	ldr r0, _0810C2B0 @ =0x0810C399
_0810C294:
	str r0, [r7, #0x04]
	mov r1, r8
	lsls r0, r1, #0x01
	mov r2, r9
	orrs r0, r2
	strh r0, [r7, #0x16]
_0810C2A0:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810C2B0: .4byte sub_810C398
