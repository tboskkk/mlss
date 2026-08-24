	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	movs r0, #0x93
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08107A9E
	movs r3, #0x94
	lsls r3, r3, #0x01
	adds r1, r4, r3
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x09
	ble _08107A8E
	movs r0, #0x00
	strb r0, [r1, #0x00]
_08107A8E:
	ldr r0, _08107B88 @ =0x082010E2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r1, r0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	strh r0, [r2, #0x00]
_08107A9E:
	ldr r7, [r4, #0x10]
	ldr r0, [r7, #0x34]
	cmp r0, #0x00
	beq _08107B7C
	ldrh r0, [r0, #0x06]
	cmp r0, #0x00
	bne _08107B7C
	ldrb r1, [r7, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08107B7C
	movs r0, #0x00
	mov r12, r0
	ldrh r1, [r7, #0x14]
	movs r0, #0x01
	ands r0, r1
	ldr r5, _08107B8C @ =0x03000D74
	ldr r2, _08107B90 @ =0x082010D8
	mov r8, r2
	cmp r0, #0x00
	bne _08107AEA
	movs r2, #0x01
_08107ACC:
	mov r3, r12
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	mov r12, r3
	asrs r3, r0, #0x10
	cmp r3, #0x0F
	bgt _08107AEA
	adds r0, r1, #0x0
	asrs r0, r3
	ands r0, r2
	cmp r0, #0x00
	beq _08107ACC
_08107AEA:
	ldr r3, [r5, #0x00]
	ldr r5, [r3, #0x38]
	movs r0, #0x00
	ldsh r6, [r7, r0]
	movs r1, #0x02
	ldsh r2, [r7, r1]
	movs r1, #0x94
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r4, [r5, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [r3, #0x38]
	ldrb r0, [r3, #0x02]
	adds r0, #0x02
	movs r1, #0x00
	strb r0, [r3, #0x02]
	strh r1, [r4, #0x06]
	strh r1, [r5, #0x06]
	movs r0, #0xFF
	ands r2, r0
	strh r2, [r5, #0x00]
	adds r0, r6, #0x0
	subs r0, #0x0C
	ldr r3, _08107B94 @ =0x000001FF
	mov r8, r3
	mov r1, r8
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r5, #0x02]
	mov r0, r12
	lsls r3, r0, #0x10
	asrs r3, r3, #0x04
	ldr r0, _08107B98 @ =0x000008BA
	adds r1, r0, #0x0
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r5, #0x04]
	ldr r1, _08107B9C @ =0xFFFF8000
	adds r0, r1, #0x0
	orrs r2, r0
	strh r2, [r4, #0x00]
	adds r6, #0x04
	mov r2, r8
	ands r6, r2
	strh r6, [r4, #0x02]
	ldr r1, _08107BA0 @ =0x000008BE
	adds r0, r1, #0x0
	orrs r3, r0
	strh r3, [r4, #0x04]
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x0C]
	ldr r0, [r7, #0x34]
	str r0, [r4, #0x10]
	ldr r0, [r0, #0x0C]
	str r0, [r5, #0x0C]
	str r5, [r0, #0x10]
	ldr r0, [r4, #0x10]
	str r4, [r0, #0x0C]
_08107B7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107B88: .4byte 0x082010E2
_08107B8C: .4byte 0x03000D74
_08107B90: .4byte 0x082010D8
_08107B94: .4byte 0x000001FF
_08107B98: .4byte 0x000008BA
_08107B9C: .4byte 0xFFFF8000
_08107BA0: .4byte 0x000008BE
