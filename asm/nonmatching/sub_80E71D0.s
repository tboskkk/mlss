	.syntax unified
	.text

	thumb_func_start sub_80E71D0
sub_80E71D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, [sp, #0x020]
	lsls r5, r1, #0x18
	lsrs r1, r5, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r4, r8
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _080E7202
	lsls r0, r6, #0x14
	lsrs r6, r0, #0x10
	lsls r0, r3, #0x14
	lsrs r3, r0, #0x10
_080E7202:
	lsrs r0, r5, #0x19
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080E7280
	ldr r2, _080E7248 @ =0x03001038
	lsls r5, r6, #0x10
	asrs r0, r5, #0x10
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	lsls r4, r3, #0x10
	asrs r1, r4, #0x10
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	lsls r0, r0, #0x04
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r9, r0
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x40
	ands r0, r1
	adds r6, r5, #0x0
	mov r8, r4
	cmp r0, #0x00
	beq _080E724C
	movs r0, #0x0F
	ands r0, r1
	lsls r4, r0, #0x02
	b _080E7250
_080E7248: .4byte 0x03001038
_080E724C:
	lsls r0, r1, #0x16
	lsrs r4, r0, #0x10
_080E7250:
	ldr r5, [r7, #0x04]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r0, r6, #0x10
	muls r0, r4
	mov r1, r9
	bl __divsi3
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r5, r5, r1
	strh r0, [r5, #0x00]
	ldr r5, [r7, #0x04]
	mov r2, r8
	asrs r0, r2, #0x10
	muls r0, r4
	mov r1, r9
	bl __divsi3
	movs r3, #0xD1
	lsls r3, r3, #0x01
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	b _080E72B6
_080E7280:
	ldr r5, [r7, #0x04]
	lsls r6, r6, #0x10
	mov r8, r6
	asrs r0, r6, #0x0C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0x0
	str r3, [sp, #0x000]
	bl __divsi3
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r5, r5, r6
	strh r0, [r5, #0x00]
	ldr r6, [r7, #0x04]
	ldr r3, [sp, #0x000]
	lsls r5, r3, #0x10
	asrs r0, r5, #0x0C
	adds r1, r4, #0x0
	bl __divsi3
	movs r2, #0xD1
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	mov r6, r8
	mov r8, r5
_080E72B6:
	ldr r0, [r7, #0x04]
	asrs r1, r6, #0x0C
	movs r3, #0xCE
	lsls r3, r3, #0x01
	adds r0, r0, r3
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x04]
	mov r4, r8
	asrs r1, r4, #0x0C
	movs r6, #0xCF
	lsls r6, r6, #0x01
	adds r0, r0, r6
	strh r1, [r0, #0x00]
	ldr r2, [r7, #0x04]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _080E72E8
	b _080E7426
_080E72E8:
	adds r3, #0x0A
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	movs r4, #0xD2
	lsls r4, r4, #0x01
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	adds r6, #0x10
	adds r0, r2, r6
	strh r1, [r0, #0x00]
	adds r3, #0x06
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x04]
	adds r4, #0x04
	adds r0, r0, r4
	movs r1, #0xF0
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x04]
	subs r6, #0x04
	adds r1, r0, r6
	movs r0, #0xA0
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x04]
	movs r0, #0xDC
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r2, #0x00
	ldr r0, [r7, #0x04]
	adds r4, r0, #0x0
	adds r4, #0x34
_080E732E:
	ldr r3, [r7, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	asrs r0, r1
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080E73B6
	movs r6, #0xD4
	lsls r6, r6, #0x01
	adds r3, r3, r6
	ldrh r5, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r1, r0
	bge _080E735E
	strh r5, [r3, #0x00]
_080E735E:
	ldr r0, [r7, #0x04]
	movs r1, #0xD5
	lsls r1, r1, #0x01
	adds r3, r0, r1
	ldrh r5, [r4, #0x02]
	movs r6, #0x02
	ldsh r1, [r4, r6]
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r1, r0
	bge _080E7376
	strh r5, [r3, #0x00]
_080E7376:
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldrb r0, [r4, #0x04]
	lsls r5, r0, #0x03
	adds r1, r1, r5
	ldr r0, [r7, #0x04]
	movs r6, #0xD6
	lsls r6, r6, #0x01
	adds r3, r0, r6
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r1, r0
	ble _080E7396
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	strh r0, [r3, #0x00]
_080E7396:
	movs r0, #0x02
	ldsh r1, [r4, r0]
	ldrb r0, [r4, #0x05]
	lsls r5, r0, #0x03
	adds r1, r1, r5
	ldr r0, [r7, #0x04]
	movs r6, #0xD7
	lsls r6, r6, #0x01
	adds r3, r0, r6
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r1, r0
	ble _080E73B6
	ldrh r0, [r4, #0x02]
	adds r0, r0, r5
	strh r0, [r3, #0x00]
_080E73B6:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r2, r1
	adds r4, #0x4C
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	ble _080E732E
	ldr r3, [r7, #0x04]
	movs r2, #0xC6
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r4, #0xC8
	lsls r4, r4, #0x01
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	strh r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x06
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x40
	movs r1, #0xD4
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r4, #0x1C
	adds r1, r3, r4
	ldrh r1, [r1, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x04
	movs r6, #0xD5
	lsls r6, r6, #0x01
	adds r0, r3, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r4, #0x02
	adds r1, r3, r4
	ldrh r1, [r1, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _080E7434 @ =0x02000048
	movs r0, #0x3F
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x3E
	strh r0, [r1, #0x00]
_080E7426:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E7434: .4byte 0x02000048
