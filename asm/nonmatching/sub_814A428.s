	.syntax unified
	.text

	thumb_func_start sub_814A428
sub_814A428:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r7, r6, r2
	ldrh r0, [r7, #0x00]
	cmp r0, #0x00
	beq _0814A4DE
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x18]
	subs r0, r0, r1
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x14]
	adds r1, r1, r0
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0814A512
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x4C
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	strh r5, [r7, #0x00]
	b _0814A512
_0814A4DE:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x2C
	ldsh r1, [r0, r2]
	ldr r0, _0814A520 @ =0x0000084F
	cmp r1, r0
	ble _0814A512
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _0814A524 @ =0x0814B67D
	str r3, [r4, #0x00]
	ldr r0, _0814A528 @ =0x0814B86D
	str r0, [r4, #0x04]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
_0814A512:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A520: .4byte 0x0000084F
_0814A524: .4byte sub_814B67C
_0814A528: .4byte sub_814B86C
