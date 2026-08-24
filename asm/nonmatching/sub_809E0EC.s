	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	ldr r2, _0809E25C @ =0x083B898C
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, _0809E260 @ =0x083B8996
	adds r1, #0x01
	adds r1, r1, r0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x08
	mov r9, r0
	adds r1, r7, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r6, r0, r2
	mov r3, r9
	subs r0, r3, r6
	muls r0, r2
	cmp r0, #0x00
	bgt _0809E132
	mov r6, r9
	movs r0, #0x80
	lsls r0, r0, #0x09
	mov r9, r0
_0809E132:
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_809E2E8
	movs r1, #0x06
	mov r8, r1
	movs r2, #0x93
	lsls r2, r2, #0x02
	mov r10, r2
_0809E144:
	ldr r3, _0809E264 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	mov r0, r8
	lsls r1, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809E216
	movs r4, #0x38
	ands r4, r1
	cmp r4, #0x00
	bne _0809E216
	ldr r1, [r5, #0x40]
	movs r0, #0xC0
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0809E216
	ldr r0, [r7, #0x38]
	str r0, [sp, #0x004]
	ldr r0, [r7, #0x3C]
	str r0, [sp, #0x008]
	ldr r0, [r7, #0x40]
	str r0, [sp, #0x00C]
	mov r1, r10
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	add r1, sp, #0x004
	add r2, sp, #0x008
	add r3, sp, #0x00C
	bl sub_8082C58
	ldr r0, [r5, #0x38]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x3C]
	ldr r2, _0809E268 @ =0xFFFFEC00
	adds r0, r0, r2
	str r0, [sp, #0x014]
	str r4, [sp, #0x018]
	ldr r3, _0809E264 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	add r0, r10
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	add r1, sp, #0x010
	add r2, sp, #0x014
	add r3, sp, #0x018
	bl sub_8082C58
	ldr r1, [sp, #0x010]
	ldr r0, [sp, #0x004]
	subs r3, r1, r0
	ldr r4, _0809E26C @ =0x08198504
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0809E1C6
	adds r0, #0xFF
_0809E1C6:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	lsls r2, r0, #0x01
	adds r0, r2, r4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809E1DA
	adds r0, #0x3F
_0809E1DA:
	asrs r0, r0, #0x06
	muls r3, r0
	ldr r1, [sp, #0x014]
	ldr r0, [sp, #0x008]
	subs r1, r1, r0
	ldr r0, _0809E270 @ =0x08198584
	adds r0, r2, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0809E1F2
	adds r0, #0x3F
_0809E1F2:
	asrs r0, r0, #0x06
	muls r0, r1
	adds r0, r3, r0
	cmp r0, #0x00
	bge _0809E200
	ldr r3, _0809E274 @ =0x00001FFF
	adds r0, r0, r3
_0809E200:
	asrs r0, r0, #0x0D
	adds r1, r0, #0x0
	muls r1, r0
	ldr r0, _0809E278 @ =0x00000FFF
	cmp r1, r0
	bgt _0809E216
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809E216:
	movs r0, #0x01
	add r8, r0
	mov r1, r8
	cmp r1, #0x07
	ble _0809E144
	movs r0, #0x80
	lsls r0, r0, #0x09
	cmp r9, r0
	bne _0809E2D0
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bgt _0809E28C
	ldr r0, _0809E27C @ =0x0809E411
	str r0, [r7, #0x4C]
	ldr r1, _0809E280 @ =0x083B899C
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r7, #0x0
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0809E284
	subs r0, #0x01
	strh r0, [r1, #0x00]
	b _0809E2D0
_0809E25C: .4byte 0x083B898C
_0809E260: .4byte 0x083B8996
_0809E264: .4byte 0x03000FD8
_0809E268: .4byte 0xFFFFEC00
_0809E26C: .4byte 0x08198504
_0809E270: .4byte 0x08198584
_0809E274: .4byte 0x00001FFF
_0809E278: .4byte 0x00000FFF
_0809E27C: .4byte sub_809E410
_0809E280: .4byte 0x083B899C
_0809E284:
	ldr r0, _0809E288 @ =0x0809E0ED
	b _0809E2CE
_0809E288: .4byte sub_809E0EC
_0809E28C:
	ldr r0, [r7, #0x28]
	ldr r2, _0809E2E0 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	movs r6, #0x02
	orrs r0, r6
	strb r0, [r2, #0x12]
	ldr r5, [r7, #0x30]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x08]
	ldrb r0, [r1, #0x12]
	ands r4, r0
	orrs r4, r6
	strb r4, [r1, #0x12]
	ldr r0, _0809E2E4 @ =0x0809E3E1
_0809E2CE:
	str r0, [r7, #0x4C]
_0809E2D0:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809E2E0: .4byte 0x00000113
_0809E2E4: .4byte sub_809E3E0
