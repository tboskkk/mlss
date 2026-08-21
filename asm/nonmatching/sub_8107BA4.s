	.syntax unified
	.text

	thumb_func_start sub_8107BA4
sub_8107BA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	movs r1, #0x93
	lsls r1, r1, #0x01
	add r1, r9
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08107BE0
	movs r0, #0x05
	strh r0, [r1, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x01
	add r1, r9
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x19
	ble _08107BE0
	movs r0, #0x00
	strb r0, [r1, #0x00]
_08107BE0:
	mov r0, r9
	ldr r0, [r0, #0x10]
	mov r8, r0
	ldr r0, [r0, #0x34]
	cmp r0, #0x00
	bne _08107BEE
	b _08107D1E
_08107BEE:
	ldrh r0, [r0, #0x06]
	cmp r0, #0x00
	beq _08107BF6
	b _08107D1E
_08107BF6:
	mov r2, r8
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08107C04
	b _08107D1E
_08107C04:
	movs r3, #0x00
	mov r10, r3
	ldrh r1, [r2, #0x14]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08107C34
	adds r2, r1, #0x0
	movs r3, #0x01
_08107C16:
	mov r1, r10
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r10, r1
	asrs r1, r0, #0x10
	cmp r1, #0x0F
	bgt _08107C34
	adds r0, r2, #0x0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0x00
	beq _08107C16
_08107C34:
	ldr r2, _08107D30 @ =0x03000D74
	ldr r0, [r2, #0x00]
	ldr r5, [r0, #0x38]
	adds r7, r5, #0x0
	mov r3, r8
	movs r0, #0x00
	ldsh r3, [r3, r0]
	str r3, [sp, #0x000]
	mov r1, r8
	movs r2, #0x02
	ldsh r1, [r1, r2]
	str r1, [sp, #0x004]
	movs r6, #0x00
_08107C4E:
	movs r0, #0x94
	lsls r0, r0, #0x01
	add r0, r9
	movs r4, #0x00
	ldsb r4, [r0, r4]
	ldr r3, _08107D34 @ =0x082010EC
	adds r0, r6, r3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	cmp r4, r1
	blt _08107CF4
	ldr r0, _08107D38 @ =0x082010F1
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bgt _08107CF4
	subs r4, r4, r1
	ldr r0, _08107D3C @ =0x08201100
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #0x0A
	bl __modsi3
	ldr r1, _08107D40 @ =0x082010FB
	adds r1, r6, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, [sp, #0x004]
	adds r1, r1, r2
	subs r1, r1, r4
	movs r2, #0xFF
	ands r1, r2
	strh r1, [r5, #0x00]
	ldr r1, _08107D44 @ =0x082010F6
	adds r1, r6, r1
	movs r3, #0x00
	ldsb r3, [r1, r3]
	ldr r1, [sp, #0x000]
	adds r3, r3, r1
	ldr r1, _08107D48 @ =0x0820110F
	adds r1, r0, r1
	movs r2, #0x00
	ldsb r2, [r1, r2]
	adds r2, r2, r3
	ldr r3, _08107D4C @ =0x000001FF
	adds r1, r3, #0x0
	ands r2, r1
	ldr r1, _08107D50 @ =0x08201119
	adds r1, r0, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x0C
	orrs r2, r1
	strh r2, [r5, #0x02]
	mov r2, r10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x04
	movs r3, #0x80
	lsls r3, r3, #0x04
	orrs r1, r3
	ldr r2, _08107D54 @ =0x08201105
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xB8
	orrs r1, r0
	strh r1, [r5, #0x04]
	ldr r0, _08107D30 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x02]
	adds r0, #0x01
	strb r0, [r1, #0x02]
	movs r1, #0x00
	strh r1, [r5, #0x06]
	ldr r5, [r5, #0x10]
_08107CF4:
	adds r6, #0x01
	cmp r6, #0x04
	ble _08107C4E
	ldr r2, _08107D30 @ =0x03000D74
	ldr r0, [r2, #0x00]
	str r5, [r0, #0x38]
	ldr r5, [r5, #0x0C]
	ldr r1, [r7, #0x0C]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r5, #0x10]
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x0C]
	mov r3, r8
	ldr r0, [r3, #0x34]
	str r0, [r5, #0x10]
	ldr r0, [r0, #0x0C]
	str r0, [r7, #0x0C]
	str r7, [r0, #0x10]
	ldr r0, [r5, #0x10]
	str r5, [r0, #0x0C]
_08107D1E:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107D30: .4byte 0x03000D74
_08107D34: .4byte 0x082010EC
_08107D38: .4byte 0x082010F1
_08107D3C: .4byte 0x08201100
_08107D40: .4byte 0x082010FB
_08107D44: .4byte 0x082010F6
_08107D48: .4byte 0x0820110F
_08107D4C: .4byte 0x000001FF
_08107D50: .4byte 0x08201119
_08107D54: .4byte 0x08201105
