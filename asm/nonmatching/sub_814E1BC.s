	.syntax unified
	.text

	thumb_func_start sub_814E1BC
sub_814E1BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r10, r1
	add r4, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E2AA
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r1, #0xDF
	lsls r1, r1, #0x01
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0814E208
	cmp r0, #0x01
	beq _0814E24C
	b _0814E2B8
_0814E208:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814E2B8
	movs r1, #0x00
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814E220
	movs r1, #0x01
_0814E220:
	strb r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r2, _0814E248 @ =0x00000352
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0814E28A
	b _0814E29C
_0814E248: .4byte 0x00000352
_0814E24C:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814E2B8
	movs r1, #0x00
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814E264
	movs r1, #0x01
_0814E264:
	strb r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r2, _0814E294 @ =0x00000352
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	bne _0814E29C
_0814E28A:
	ldr r0, _0814E298 @ =0x0814E061
	mov r1, r8
	str r0, [r1, #0x00]
	b _0814E364
	.byte 0x00, 0x00
_0814E294: .4byte 0x00000352
_0814E298: .4byte sub_814E060
_0814E29C:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814E2B8
_0814E2AA:
	ldr r0, _0814E2B4 @ =0x0814E061
	mov r2, r8
	str r0, [r2, #0x00]
	b _0814E364
	.byte 0x00, 0x00
_0814E2B4: .4byte sub_814E060
_0814E2B8:
	movs r0, #0xB3
	lsls r0, r0, #0x01
	add r0, r9
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0814E2CC
	cmp r0, #0x01
	beq _0814E316
	b _0814E364
_0814E2CC:
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bgt _0814E2EC
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r1, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814E304
_0814E2EC:
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	negs r0, r0
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
_0814E304:
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	b _0814E364
_0814E316:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	ble _0814E364
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	bgt _0814E340
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r1, [r0, #0x00]
	ldr r2, _0814E33C @ =0x00000242
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814E356
_0814E33C: .4byte 0x00000242
_0814E340:
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _0814E374 @ =0x00000242
	adds r1, r6, r2
	strh r0, [r1, #0x00]
_0814E356:
	ldr r1, _0814E374 @ =0x00000242
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x0C]
	adds r0, r0, r1
	str r0, [r6, #0x0C]
_0814E364:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E374: .4byte 0x00000242
