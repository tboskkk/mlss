	.syntax unified
	.text

	thumb_func_start sub_802C068
sub_802C068:
	push {r4, r5, r6, lr}
	mov r12, r0
	adds r4, r1, #0x0
	movs r0, #0xAE
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802C080
	b _0802C1FE
_0802C080:
	movs r3, #0x80
	lsls r3, r3, #0x02
	add r3, r12
	ldr r2, [r3, #0x00]
	ldr r1, _0802C0DC @ =0x000002B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _0802C098
	b _0802C1FE
_0802C098:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _0802C0A6
	b _0802C1E4
_0802C0A6:
	ldr r5, _0802C0E0 @ =0x00000351
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _0802C0BA
	b _0802C1E4
_0802C0BA:
	cmp r4, #0x00
	bne _0802C0C0
	b _0802C1E4
_0802C0C0:
	ldrh r0, [r4, #0x00]
	movs r1, #0xF0
	ands r1, r0
	lsrs r1, r1, #0x04
	ldr r0, _0802C0E4 @ =0x0839F910
	adds r1, r1, r0
	ldrb r1, [r1, #0x00]
	cmp r1, #0xFF
	beq _0802C0E8
	mov r0, r12
	bl sub_802BFB0
	b _0802C1FE
	.byte 0x00, 0x00
_0802C0DC: .4byte 0x000002B5
_0802C0E0: .4byte 0x00000351
_0802C0E4: .4byte 0x0839F910
_0802C0E8:
	movs r6, #0x04
	ldsh r0, [r2, r6]
	cmp r0, #0x04
	bne _0802C1CC
	ldr r1, _0802C130 @ =0x00000362
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	ldr r4, _0802C134 @ =0x00000242
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	ldr r2, [r3, #0x00]
	movs r6, #0xD9
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldrh r1, [r0, #0x00]
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r0, r2, r6
	strh r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, r4
	ldrh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r2, [r1, r6]
	cmp r2, #0x00
	ble _0802C138
	subs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, r4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _0802C14E
	b _0802C14C
	.byte 0x00, 0x00
_0802C130: .4byte 0x00000362
_0802C134: .4byte 0x00000242
_0802C138:
	cmp r2, #0x00
	bge _0802C14E
	adds r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, r4
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	ble _0802C14E
_0802C14C:
	strh r5, [r1, #0x00]
_0802C14E:
	movs r3, #0x80
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r3, #0x00]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r2, r0, r4
	ldrh r0, [r2, #0x00]
	movs r5, #0x00
	ldsh r1, [r2, r5]
	cmp r1, #0x00
	ble _0802C178
	subs r0, #0x08
	strh r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, r4
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _0802C190
	b _0802C18C
_0802C178:
	cmp r1, #0x00
	bge _0802C190
	adds r0, #0x08
	strh r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, r4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	ble _0802C190
_0802C18C:
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0802C190:
	movs r3, #0x80
	lsls r3, r3, #0x02
	add r3, r12
	ldr r1, [r3, #0x00]
	ldr r2, _0802C1C8 @ =0x0000023E
	adds r1, r1, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, r2
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	bge _0802C1B2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0802C1B2:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	b _0802C1FE
	.byte 0x00, 0x00
_0802C1C8: .4byte 0x0000023E
_0802C1CC:
	ldr r6, _0802C1E0 @ =0x00000242
	adds r0, r2, r6
	strh r5, [r0, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strh r5, [r0, #0x00]
	b _0802C1FE
	.byte 0x00, 0x00
_0802C1E0: .4byte 0x00000242
_0802C1E4:
	movs r2, #0x80
	lsls r2, r2, #0x02
	add r2, r12
	ldr r0, [r2, #0x00]
	ldr r4, _0802C204 @ =0x00000242
	adds r0, r0, r4
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r0, r0, r5
	strh r1, [r0, #0x00]
_0802C1FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802C204: .4byte 0x00000242
