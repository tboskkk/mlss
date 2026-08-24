	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x098
	adds r4, r0, #0x0
	mov r10, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x090]
	lsls r3, r3, #0x18
	cmp r3, #0x00
	beq _0816DD08
	adds r3, r4, #0x0
	adds r3, #0xE8
	ldrh r1, [r3, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	movs r2, #0x00
	orrs r0, r1
	ldr r1, _0816DEA4 @ =0x0000FE80
	ands r0, r1
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xC0
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
_0816DD08:
	movs r0, #0x00
	mov r8, r0
	adds r4, #0xEC
	str r4, [sp, #0x094]
	mov r9, r0
_0816DD12:
	mov r1, r9
	lsls r0, r1, #0x02
	mov r2, sp
	adds r6, r0, r2
	mov r4, r9
	add r4, r10
	adds r5, r4, #0x0
	adds r7, r6, #0x0
	ldrb r0, [r4, #0x00]
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldr r1, _0816DEA8 @ =0x0000EA60
	bl sub_8163EE4
	strh r0, [r6, #0x02]
	adds r6, #0x04
	ldrb r0, [r4, #0x01]
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldr r1, _0816DEA8 @ =0x0000EA60
	bl sub_8163EE4
	strh r0, [r6, #0x02]
	adds r6, r7, #0x0
	adds r6, #0x08
	ldrb r0, [r5, #0x02]
	strh r0, [r7, #0x08]
	movs r0, #0x00
	ldr r1, _0816DEA8 @ =0x0000EA60
	bl sub_8163EE4
	strh r0, [r6, #0x02]
	adds r6, #0x04
	ldrb r0, [r5, #0x03]
	strh r0, [r7, #0x0C]
	movs r0, #0x00
	ldr r1, _0816DEA8 @ =0x0000EA60
	bl sub_8163EE4
	strh r0, [r6, #0x02]
	adds r6, #0x04
	ldrb r0, [r5, #0x04]
	strh r0, [r7, #0x10]
	movs r0, #0x00
	ldr r1, _0816DEA8 @ =0x0000EA60
	bl sub_8163EE4
	strh r0, [r6, #0x02]
	adds r6, #0x04
	ldrb r0, [r5, #0x05]
	strh r0, [r7, #0x14]
	movs r0, #0x00
	ldr r1, _0816DEA8 @ =0x0000EA60
	bl sub_8163EE4
	strh r0, [r6, #0x02]
	movs r0, #0x06
	add r9, r0
	movs r1, #0x01
	add r8, r1
	mov r2, r8
	cmp r2, #0x05
	ble _0816DD12
	ldr r0, [sp, #0x090]
	cmp r0, #0x00
	beq _0816DE58
	movs r1, #0x00
	mov r8, r1
	mov r5, sp
_0816DD9C:
	mov r4, r8
	adds r4, #0x01
	cmp r4, #0x23
	bgt _0816DE4C
	adds r3, r5, #0x0
	lsls r0, r4, #0x02
	mov r1, sp
	adds r2, r0, r1
	movs r0, #0x24
	subs r1, r0, r4
	movs r0, #0x03
	ands r1, r0
	cmp r4, #0x24
	bge _0816DDEC
	cmp r1, #0x00
	beq _0816DE04
	cmp r1, #0x01
	ble _0816DDEC
	cmp r1, #0x02
	ble _0816DDD8
	ldrh r1, [r2, #0x02]
	ldrh r0, [r5, #0x02]
	cmp r0, r1
	bls _0816DDD4
	ldr r1, [r5, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r5, #0x00]
	str r1, [r2, #0x00]
_0816DDD4:
	adds r2, #0x04
	adds r4, #0x01
_0816DDD8:
	ldrh r0, [r3, #0x02]
	ldrh r1, [r2, #0x02]
	cmp r0, r1
	bls _0816DDE8
	ldr r1, [r3, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
	str r1, [r2, #0x00]
_0816DDE8:
	adds r2, #0x04
	adds r4, #0x01
_0816DDEC:
	ldrh r0, [r3, #0x02]
	ldrh r1, [r2, #0x02]
	cmp r0, r1
	bls _0816DDFC
	ldr r1, [r3, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
	str r1, [r2, #0x00]
_0816DDFC:
	adds r2, #0x04
	adds r4, #0x01
	cmp r4, #0x23
	bgt _0816DE4C
_0816DE04:
	ldrh r0, [r3, #0x02]
	ldrh r1, [r2, #0x02]
	cmp r0, r1
	bls _0816DE14
	ldr r1, [r3, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
	str r1, [r2, #0x00]
_0816DE14:
	ldrh r0, [r3, #0x02]
	ldrh r1, [r2, #0x06]
	cmp r0, r1
	bls _0816DE24
	ldr r1, [r3, #0x00]
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x00]
	str r1, [r2, #0x04]
_0816DE24:
	ldrh r0, [r3, #0x02]
	ldrh r1, [r2, #0x0A]
	cmp r0, r1
	bls _0816DE34
	ldr r1, [r3, #0x00]
	ldr r0, [r2, #0x08]
	str r0, [r3, #0x00]
	str r1, [r2, #0x08]
_0816DE34:
	ldrh r0, [r3, #0x02]
	ldrh r1, [r2, #0x0E]
	cmp r0, r1
	bls _0816DE44
	ldr r1, [r3, #0x00]
	ldr r0, [r2, #0x0C]
	str r0, [r3, #0x00]
	str r1, [r2, #0x0C]
_0816DE44:
	adds r2, #0x10
	adds r4, #0x04
	cmp r4, #0x23
	ble _0816DE04
_0816DE4C:
	adds r5, #0x04
	movs r2, #0x01
	add r8, r2
	mov r0, r8
	cmp r0, #0x22
	ble _0816DD9C
_0816DE58:
	movs r1, #0x00
	mov r8, r1
	ldr r5, [sp, #0x094]
_0816DE5E:
	mov r2, r8
	lsls r1, r2, #0x01
	add r1, r8
	lsls r2, r1, #0x01
	lsls r1, r1, #0x03
	add r1, sp
	adds r2, r2, r5
	adds r4, r2, #0x0
	adds r3, r1, #0x0
	ldrh r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldrh r0, [r1, #0x04]
	strb r0, [r2, #0x01]
	ldrh r0, [r3, #0x08]
	strb r0, [r4, #0x02]
	ldrh r0, [r3, #0x0C]
	strb r0, [r4, #0x03]
	ldrh r0, [r3, #0x10]
	strb r0, [r4, #0x04]
	ldrh r0, [r3, #0x14]
	strb r0, [r4, #0x05]
	movs r0, #0x01
	add r8, r0
	mov r1, r8
	cmp r1, #0x05
	ble _0816DE5E
	add sp, #0x098
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816DEA4: .4byte 0x0000FE80
_0816DEA8: .4byte 0x0000EA60
