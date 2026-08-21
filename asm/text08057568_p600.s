	.include "asm/macros.inc"

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
	thumb_func_start sub_814E378
sub_814E378:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r2, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r7, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r7, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r6, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x08]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0A]
	adds r6, #0x02
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0C]
	adds r6, #0x01
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0E]
	adds r6, #0x01
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x8C
	lsls r0, r0, #0x01
	adds r1, r7, r0
	adds r0, r6, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r1, r7, r0
	adds r0, r6, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x28]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2A]
	adds r6, #0x02
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2C]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2E]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814E410
sub_814E410:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r7, r0
	ldr r0, _0814E498 @ =0x0000020D
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814E49C @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _0814E4A0 @ =0x0814E061
	str r0, [r5, #0x0C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E498: .4byte 0x0000020D
_0814E49C: .4byte sub_813B1E8
_0814E4A0: .4byte sub_814E060
	thumb_func_start sub_814E4A4
sub_814E4A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r6, #0x04
	orrs r0, r6
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x08
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_801E68C
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r1, _0814E544 @ =0x0000027A
	adds r0, r4, r1
	movs r1, #0xC0
	lsls r1, r1, #0x03
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814E548 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	adds r1, #0x1C
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814E54C @ =0x0000020E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r1, _0814E550 @ =0x0000020F
	adds r4, r4, r1
	ldrb r0, [r4, #0x00]
	orrs r0, r6
	strb r0, [r4, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814E544: .4byte 0x0000027A
_0814E548: .4byte 0x0000020D
_0814E54C: .4byte 0x0000020E
_0814E550: .4byte 0x0000020F
	thumb_func_start sub_814E554
sub_814E554:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x58
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r4, r5, r3
	cmp r1, #0x00
	bne _0814E5AA
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xB2
	lsls r1, r1, #0x02
	adds r2, r5, r1
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r1, r5, r3
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x18]
	str r0, [r1, #0x00]
	str r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r7, [r0, #0x20]
	b _0814E5C0
_0814E5AA:
	cmp r1, #0x01
	bne _0814E5C0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r7, [r0, #0x00]
_0814E5C0:
	movs r4, #0xB3
	lsls r4, r4, #0x01
	adds r0, r6, r4
	movs r1, #0x00
	ldsh r6, [r0, r1]
	cmp r6, #0x00
	beq _0814E5D4
	cmp r6, #0x01
	beq _0814E660
	b _0814E698
_0814E5D4:
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r4, [r0, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0814E628
	ldr r1, [r4, #0x0C]
	ldr r0, _0814E620 @ =0xFFFFEC00
	adds r1, r1, r0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r4, #0xB0
	lsls r4, r4, #0x04
	adds r3, r3, r4
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	negs r1, r7
	ldr r2, _0814E624 @ =0x00000242
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r5, r3
	strh r6, [r0, #0x00]
	b _0814E698
_0814E620: .4byte 0xFFFFEC00
_0814E624: .4byte 0x00000242
_0814E628:
	ldr r1, [r4, #0x0C]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r1, r1, r0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	movs r0, #0xB0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	ldr r1, _0814E65C @ =0x00000242
	adds r0, r5, r1
	strh r7, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r6, [r0, #0x00]
	b _0814E698
	.byte 0x00, 0x00
_0814E65C: .4byte 0x00000242
_0814E660:
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r2, r2, r4
	ldr r3, [r0, #0x14]
	movs r4, #0xB0
	lsls r4, r4, #0x04
	adds r3, r3, r4
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	str r6, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	ldr r1, _0814E6D4 @ =0x00000242
	adds r0, r5, r1
	strh r4, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r7, [r0, #0x00]
_0814E698:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	movs r4, #0x85
	lsls r4, r4, #0x02
	adds r2, r5, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814E6D4: .4byte 0x00000242
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0xB0, 0x0F, 0x1C, 0x90, 0x46
	.byte 0x1D, 0x4E, 0x1E, 0x4C, 0x1E, 0x48, 0x24, 0x1A, 0x32, 0x68, 0x12, 0x19, 0xF8, 0x68, 0x80, 0x25
	.byte 0x6D, 0x00, 0x29, 0x1C, 0x8C, 0xF0, 0xB8, 0xF9, 0x32, 0x68, 0x12, 0x19, 0x38, 0x69, 0x29, 0x1C
	.byte 0x8C, 0xF0, 0xB2, 0xF9, 0x32, 0x68, 0x12, 0x19, 0x78, 0x69, 0xB9, 0x69, 0x40, 0x18, 0x29, 0x1C
	.byte 0x8C, 0xF0, 0xAA, 0xF9, 0x32, 0x68, 0x12, 0x19, 0x41, 0x46, 0xC8, 0x68, 0x29, 0x1C, 0x8C, 0xF0
	.byte 0xA3, 0xF9, 0x32, 0x68, 0x12, 0x19, 0x43, 0x46, 0x18, 0x69, 0x29, 0x1C, 0x8C, 0xF0, 0x9C, 0xF9
	.byte 0x32, 0x68, 0x12, 0x19, 0x44, 0x46, 0x60, 0x69, 0xA1, 0x69, 0x40, 0x18, 0x29, 0x1C, 0x8C, 0xF0
	.byte 0x93, 0xF9, 0xDF, 0x21, 0x49, 0x00, 0x78, 0x18, 0x00, 0x22, 0x80, 0x5E, 0x00, 0x28, 0x09, 0xD0
	.byte 0x01, 0x28, 0x26, 0xD0, 0x2F, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08
	.byte 0x20, 0x82, 0x19, 0x08, 0xA5, 0x23, 0x9B, 0x00, 0xF8, 0x18, 0x00, 0x68, 0x41, 0x7C, 0x40, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x0A, 0xD0, 0xC8, 0x24, 0xE4, 0x01, 0xA1, 0x46, 0x00, 0x20, 0x00, 0x90
	.byte 0x80, 0x21, 0xC9, 0x00, 0x8A, 0x46, 0x52, 0x46, 0x01, 0x92, 0x14, 0xE0, 0x00, 0x23, 0x99, 0x46
	.byte 0xC8, 0x24, 0xE4, 0x01, 0x00, 0x94, 0x80, 0x20, 0xC0, 0x00, 0x82, 0x46, 0x51, 0x46, 0x01, 0x91
	.byte 0x09, 0xE0, 0x80, 0x22, 0xD2, 0x00, 0x91, 0x46, 0x4B, 0x46, 0x00, 0x93, 0x00, 0x24, 0xA2, 0x46
	.byte 0xC8, 0x20, 0xC0, 0x01, 0x01, 0x90, 0xFA, 0x68, 0x00, 0x99, 0x50, 0x18, 0x43, 0x46, 0xD9, 0x68
	.byte 0x88, 0x42, 0x1F, 0xDB, 0x4C, 0x46, 0x10, 0x1B, 0x88, 0x42, 0x1B, 0xDC, 0x3A, 0x69, 0x01, 0x99
	.byte 0x50, 0x18, 0x19, 0x69, 0x88, 0x42, 0x15, 0xDB, 0x53, 0x46, 0xD0, 0x1A, 0x88, 0x42, 0x11, 0xDC
	.byte 0x79, 0x69, 0xB8, 0x69, 0x0B, 0x18, 0x80, 0x24, 0xE4, 0x00, 0x1A, 0x19, 0x40, 0x46, 0x41, 0x69
	.byte 0x80, 0x69, 0x09, 0x18, 0x8A, 0x42, 0x05, 0xDB, 0x00, 0x22, 0x98, 0x1A, 0x88, 0x42, 0x01, 0xDC
	.byte 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x02, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_814E820
sub_814E820:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r1, r4, r2
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	bne _0814E884
	ldrb r0, [r0, #0x09]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0814E8A8
	ldr r2, _0814E878 @ =0x03001038
	ldr r0, _0814E87C @ =0x0819832C
	ldr r1, _0814E880 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [r4, #0x0C]
	subs r0, r2, r3
	ldr r1, [r5, #0x0C]
	cmp r0, r1
	bgt _0814E8A8
	adds r0, r2, r3
	cmp r0, r1
	blt _0814E8A8
_0814E874:
	movs r0, #0x01
	b _0814E8AA
_0814E878: .4byte 0x03001038
_0814E87C: .4byte 0x0819832C
_0814E880: .4byte 0x08198220
_0814E884:
	cmp r1, #0x01
	bne _0814E8A8
	ldrb r0, [r0, #0x09]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0814E8A8
	ldr r2, [r4, #0x10]
	ldr r1, [r5, #0x10]
	cmp r2, r1
	blt _0814E8A8
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrh r0, [r0, #0x00]
	subs r0, r2, r0
	cmp r0, r1
	ble _0814E874
_0814E8A8:
	movs r0, #0x00
_0814E8AA:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_814E8B0
sub_814E8B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0x00
	beq _0814E900
	cmp r1, #0x00
	bgt _0814E8EE
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0814E91C
	b _0814E906
_0814E8EE:
	cmp r1, #0x01
	beq _0814E904
	cmp r1, #0x02
	bne _0814E906
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	b _0814E906
_0814E900:
	ldr r5, [r6, #0x28]
	b _0814E906
_0814E904:
	ldr r5, [r6, #0x2C]
_0814E906:
	ldrh r0, [r7, #0x18]
	lsls r0, r0, #0x08
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r2, r2, r1
	cmp r0, r2
	bgt _0814E91C
	ldrh r0, [r7, #0x1A]
	lsls r0, r0, #0x08
	cmp r0, r2
	bge _0814E926
_0814E91C:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _0814EACE
_0814E926:
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r6, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r1, r0
	adds r1, r6, #0x0
	cmp r6, #0x00
	bge _0814E93A
	negs r1, r6
_0814E93A:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0814E942
	negs r0, r2
_0814E942:
	cmp r1, r0
	ble _0814E980
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r6, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r6, #0x00
	bge _0814E96E
	movs r3, #0x06
_0814E96E:
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	b _0814E9A8
_0814E980:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r3, r4, #0x0
	adds r3, #0x24
	ands r2, r0
	ldrb r1, [r3, #0x00]
	subs r0, #0x0C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
_0814E9A8:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_814EE18
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EA0C
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x00]
	movs r5, #0xAC
	lsls r5, r5, #0x01
	add r5, r8
	ldr r3, [r5, #0x00]
	movs r2, #0x1A
	ldsh r0, [r3, r2]
	cmp r1, r0
	blt _0814E9EC
	movs r2, #0xBC
	lsls r2, r2, #0x01
	add r2, r8
	ldrh r0, [r3, #0x1C]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r3, [r5, #0x00]
	movs r5, #0x1E
	ldsh r0, [r3, r5]
	cmp r1, r0
	ble _0814E9EC
	ldrh r0, [r3, #0x1E]
	strh r0, [r2, #0x00]
_0814E9EC:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x04
	bl sub_815041C
	ldr r0, _0814EA08 @ =0x08150499
	mov r1, r9
	str r0, [r1, #0x00]
	b _0814EACE
	.byte 0x00, 0x00
_0814EA08: .4byte sub_8150498
_0814EA0C:
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814EA30
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814EA32
_0814EA30:
	movs r0, #0xFF
_0814EA32:
	strb r0, [r4, #0x02]
	add r0, sp, #0x008
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x10
	bl sub_8139BB0
	add r1, sp, #0x008
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, _0814EA70 @ =0x00007FFF
	str r3, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EA74
	movs r2, #0xBE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	b _0814EA78
	.byte 0x00, 0x00
_0814EA70: .4byte 0x00007FFF
_0814EA74:
	ldr r1, _0814EA98 @ =0x0000023E
	adds r0, r4, r1
_0814EA78:
	ldrh r7, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813B178
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0814EA9C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r6, r0, r2
	b _0814EAA8
_0814EA98: .4byte 0x0000023E
_0814EA9C:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r1, #0xA4
	lsls r1, r1, #0x06
	adds r6, r0, r1
_0814EAA8:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	str r7, [sp, #0x000]
	add r3, sp, #0x004
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r3, r6, #0x0
	bl sub_813A44C
	adds r0, r4, #0x0
	bl sub_813B5B4
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
_0814EACE:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_814EADC
sub_814EADC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _0814EB10
	b _0814EC3C
_0814EB10:
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EB24
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814EB30
_0814EB24:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814EB30:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r6, [r0, #0x28]
	ldrh r0, [r7, #0x18]
	lsls r0, r0, #0x08
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r2, r2, r1
	cmp r0, r2
	bgt _0814EC3C
	ldrh r0, [r7, #0x1A]
	lsls r0, r0, #0x08
	cmp r0, r2
	blt _0814EC3C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	movs r5, #0xAF
	lsls r5, r5, #0x02
	adds r3, r4, r5
	lsrs r0, r0, #0x17
	add r0, r8
	ldrh r2, [r0, #0x00]
	subs r5, #0x7E
	adds r1, r4, r5
	strh r2, [r1, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	str r1, [r3, #0x00]
	ldrh r2, [r0, #0x10]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r1, r4, r3
	strh r2, [r1, #0x00]
	adds r5, #0x0A
	adds r1, r4, r5
	movs r2, #0x18
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r5, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r1, r0
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _0814EB9A
	negs r1, r5
_0814EB9A:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0814EBA2
	negs r0, r2
_0814EBA2:
	cmp r1, r0
	ble _0814EBE2
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r5, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r5, #0x00
	bge _0814EBCE
	movs r3, #0x06
_0814EBCE:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r5, r0, #0x0
	b _0814EC0C
_0814EBE2:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r1, #0x24
	ands r2, r0
	ldrb r3, [r1, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r5, r1, #0x0
_0814EC0C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815033C
_0814EC3C:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_814EC48
sub_814EC48:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r4, r0
	adds r0, #0xD6
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0814EC9C
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	movs r3, #0x80
	lsls r3, r3, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r5, #0x00]
_0814EC9C:
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814ECD2
	adds r0, r4, #0x0
	bl sub_80479A8
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	ldr r0, _0814ECDC @ =0x0814E8B1
	str r0, [r7, #0x00]
_0814ECD2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814ECDC: .4byte sub_814E8B0
	thumb_func_start sub_814ECE0
sub_814ECE0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r4, r0
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0814ED2C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x10
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r5, #0x00]
_0814ED2C:
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814ED9E
	adds r0, r4, #0x0
	bl sub_80479A8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r2, #0x08
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r1, #0x08
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	subs r2, #0x34
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x18]
	adds r2, #0x20
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	ldr r0, _0814EDA8 @ =0x0814EADD
	str r0, [r7, #0x00]
_0814ED9E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814EDA8: .4byte sub_814EADC
	thumb_func_start sub_814EDAC
sub_814EDAC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r6, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r5, #0x08
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x08]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0A]
	adds r5, #0x02
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0C]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0E]
	adds r5, #0x01
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r6, r0
	adds r0, r5, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r5, #0x08
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x28]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2A]
	adds r5, #0x02
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2C]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2E]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_814EE18
sub_814EE18:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r0, #0x0
	mov r8, r1
	ldr r0, [r1, #0x0C]
	mov r10, r0
	ldr r6, [r1, #0x10]
	ldr r1, [r4, #0x0C]
	str r1, [sp, #0x018]
	ldr r0, [r4, #0x10]
	mov r9, r0
	add r0, sp, #0x008
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x08
	bl sub_8139BB0
	add r1, sp, #0x008
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, _0814EEC4 @ =0x00007FFF
	str r3, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	mov r2, r8
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814EE6A
	b _0814F058
_0814EE6A:
	mov r1, r10
	ldr r0, [sp, #0x018]
	subs r5, r1, r0
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _0814EE78
	negs r1, r5
_0814EE78:
	mov r0, r9
	subs r7, r6, r0
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _0814EE84
	negs r0, r7
_0814EE84:
	cmp r1, r0
	blt _0814EF44
	adds r3, r5, #0x0
	adds r1, r3, #0x0
	cmp r3, #0x00
	bge _0814EE92
	negs r1, r3
_0814EE92:
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0814EEEC
	cmp r3, #0x00
	bge _0814EEC8
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x02
	beq _0814EEBC
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0814EF88
_0814EEBC:
	cmp r6, r9
	blt _0814EEC2
	b _0814EFC8
_0814EEC2:
	b _0814EF8C
_0814EEC4: .4byte 0x00007FFF
_0814EEC8:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x06
	beq _0814EEE6
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x06
	beq _0814EF88
_0814EEE6:
	cmp r6, r9
	bge _0814EFBC
	b _0814EF7E
_0814EEEC:
	mov r0, r8
	ldr r1, [r0, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r3, r1, r0
	cmp r3, #0x00
	bge _0814EEFA
	negs r3, r3
_0814EEFA:
	ldr r0, _0814EF2C @ =0x00000276
	add r0, r8
	ldrh r0, [r0, #0x00]
	subs r0, r6, r0
	subs r6, r0, r3
	mov r1, r9
	subs r6, r1, r6
	mov r1, r8
	ldr r0, [r1, #0x10]
	adds r2, r0, r3
	mov r0, r9
	subs r2, r2, r0
	cmp r5, #0x00
	bge _0814EF30
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x02
	bl sub_8150388
	b _0814F05A
	.byte 0x00, 0x00
_0814EF2C: .4byte 0x00000276
_0814EF30:
	movs r0, #0x07
	str r0, [sp, #0x000]
	movs r0, #0x05
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x06
	bl sub_8150388
	b _0814F05A
_0814EF44:
	adds r3, r7, #0x0
	adds r1, r7, #0x0
	cmp r7, #0x00
	bge _0814EF4E
	negs r1, r7
_0814EF4E:
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0814EFD4
	cmp r7, #0x00
	bge _0814EF98
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x04
	beq _0814EF78
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _0814EF88
_0814EF78:
	ldr r1, [sp, #0x018]
	cmp r10, r1
	blt _0814EF8C
_0814EF7E:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x05
	bne _0814F058
_0814EF88:
	movs r0, #0x01
	b _0814F05A
_0814EF8C:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x03
	bne _0814F058
	b _0814EF88
_0814EF98:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x00
	beq _0814EFB6
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814EF88
_0814EFB6:
	ldr r0, [sp, #0x018]
	cmp r10, r0
	blt _0814EFC8
_0814EFBC:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x07
	bne _0814F058
	b _0814EF88
_0814EFC8:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x01
	bne _0814F058
	b _0814EF88
_0814EFD4:
	cmp r7, #0x00
	bge _0814EFDA
	negs r3, r7
_0814EFDA:
	ldr r1, _0814F034 @ =0x03001038
	mov r9, r1
	ldr r4, _0814F038 @ =0x0819832C
	ldr r0, _0814F03C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r5, _0814F040 @ =0x00000272
	add r5, r8
	ldrh r0, [r5, #0x00]
	movs r1, #0x02
	str r3, [sp, #0x01C]
	bl _call_via_r2
	mov r1, r10
	subs r0, r1, r0
	ldr r3, [sp, #0x01C]
	subs r6, r0, r3
	ldr r0, [sp, #0x018]
	subs r6, r0, r6
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldrh r0, [r5, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	add r0, r10
	ldr r3, [sp, #0x01C]
	adds r2, r0, r3
	ldr r0, [sp, #0x018]
	subs r2, r2, r0
	cmp r7, #0x00
	bge _0814F044
	movs r0, #0x05
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x04
	bl sub_8150388
	b _0814F05A
	.byte 0x00, 0x00
_0814F034: .4byte 0x03001038
_0814F038: .4byte 0x0819832C
_0814F03C: .4byte 0x08198220
_0814F040: .4byte 0x00000272
_0814F044:
	movs r0, #0x07
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_8150388
	b _0814F05A
_0814F058:
	movs r0, #0x00
_0814F05A:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_814F06C
sub_814F06C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	adds r5, r1, #0x0
	str r2, [sp, #0x010]
	adds r0, r5, #0x0
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r5
	mov r10, r1
	mov r0, r9
	add r1, sp, #0x00C
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F09C
	b _0814F24C
_0814F09C:
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r4, [r0, #0x28]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8150270
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F0B6
	b _0814F24C
_0814F0B6:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0814F174
	ldr r2, _0814F104 @ =0x03001038
	ldr r0, _0814F108 @ =0x0819832C
	ldr r1, _0814F10C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814F110
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814F114
_0814F104: .4byte 0x03001038
_0814F108: .4byte 0x0819832C
_0814F10C: .4byte 0x08198220
_0814F110:
	movs r1, #0x01
	negs r1, r1
_0814F114:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r8
	cmp r0, #0x01
	beq _0814F14C
	cmp r0, #0x01
	bgt _0814F12A
	cmp r0, #0x00
	beq _0814F134
	b _0814F1F8
_0814F12A:
	cmp r0, #0x02
	beq _0814F160
	cmp r0, #0x03
	beq _0814F168
	b _0814F1F8
_0814F134:
	ldr r0, [r5, #0x0C]
	ldr r1, _0814F144 @ =0xFFFFFA00
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	ldr r2, _0814F148 @ =0xFFFFEB00
	adds r6, r0, r2
	b _0814F1F8
	.byte 0x00, 0x00
_0814F144: .4byte 0xFFFFFA00
_0814F148: .4byte 0xFFFFEB00
_0814F14C:
	ldr r0, [r5, #0x0C]
	movs r1, #0x90
	lsls r1, r1, #0x05
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	ldr r2, _0814F15C @ =0xFFFFFA00
	adds r6, r0, r2
	b _0814F1F8
_0814F15C: .4byte 0xFFFFFA00
_0814F160:
	ldr r0, [r5, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _0814F1F4
_0814F168:
	ldr r0, [r5, #0x0C]
	ldr r2, _0814F170 @ =0xFFFFEE00
	adds r7, r0, r2
	b _0814F1F6
_0814F170: .4byte 0xFFFFEE00
_0814F174:
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814F1A0
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814F1A4
_0814F1A0:
	movs r1, #0x01
	negs r1, r1
_0814F1A4:
	cmp r1, #0x01
	beq _0814F1D4
	cmp r1, #0x01
	bgt _0814F1B2
	cmp r1, #0x00
	beq _0814F1BC
	b _0814F1F8
_0814F1B2:
	cmp r1, #0x02
	beq _0814F1DE
	cmp r1, #0x03
	beq _0814F1F0
	b _0814F1F8
_0814F1BC:
	ldr r0, [r5, #0x0C]
	ldr r2, _0814F1CC @ =0xFFFFFA00
	adds r7, r0, r2
	ldr r0, [r5, #0x10]
	ldr r1, _0814F1D0 @ =0xFFFFEB00
	adds r6, r0, r1
	b _0814F1F8
	.byte 0x00, 0x00
_0814F1CC: .4byte 0xFFFFFA00
_0814F1D0: .4byte 0xFFFFEB00
_0814F1D4:
	ldr r0, [r5, #0x0C]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r7, r0, r2
	b _0814F1F6
_0814F1DE:
	ldr r0, [r5, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r6, r0, r2
	b _0814F1F8
_0814F1F0:
	ldr r0, [r5, #0x0C]
	ldr r1, _0814F244 @ =0xFFFFEE00
_0814F1F4:
	adds r7, r0, r1
_0814F1F6:
	ldr r6, [r5, #0x10]
_0814F1F8:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r2, #0x44
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	mov r0, r9
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0814F24C
	mov r0, r9
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x01
	bl sub_814FDEC
	ldr r1, [sp, #0x014]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r4, [r0, #0x00]
	ldr r0, _0814F248 @ =0x0814F299
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	b _0814F286
_0814F244: .4byte 0xFFFFEE00
_0814F248: .4byte sub_814F298
_0814F24C:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F286
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
_0814F286:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
