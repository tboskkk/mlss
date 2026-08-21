	.syntax unified
	.text

	thumb_func_start sub_806DF2C
sub_806DF2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x2C]
	mov r8, r0
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r6, r7, #0x0
	adds r6, #0x9C
	ldr r0, [r6, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	mov r0, r8
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r1, #0x00
	ldsh r2, [r4, r1]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bge _0806DFCC
	b _0806E0F4
_0806DFCC:
	ldr r1, [r7, #0x2C]
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	ble _0806DFD6
	b _0806E0F4
_0806DFD6:
	ldr r0, [r1, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x18]
	subs r4, #0x20
	ldr r0, [r4, #0x00]
	str r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x4C]
	adds r0, r7, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, [r7, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0806E028
	ldr r2, _0806E024 @ =0x00004112
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806E04C
_0806E024: .4byte 0x00004112
_0806E028:
	ldr r2, _0806E100 @ =0x00004114
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806E04C:
	ldr r0, [r7, #0x08]
	movs r3, #0x00
	strh r3, [r0, #0x0C]
	movs r2, #0x96
	lsls r2, r2, #0x09
	str r2, [r7, #0x10]
	ldr r0, [r7, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r7, #0x14]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x18]
	ldr r1, [r7, #0x30]
	str r2, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x30]
	ldr r0, [r7, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x30]
	ldr r0, [r7, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r2, [r7, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	subs r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	ldr r0, _0806E104 @ =0x0806E755
	str r0, [r7, #0x4C]
_0806E0F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E100: .4byte 0x00004114
_0806E104: .4byte sub_806E754
