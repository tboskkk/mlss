	push {r4, r5, r6, lr}
	mov r12, r0
	movs r2, #0x93
	lsls r2, r2, #0x01
	add r2, r12
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081076A2
	movs r1, #0x94
	lsls r1, r1, #0x01
	add r1, r12
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	movs r0, #0x0C
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x07
	ble _081076A2
	movs r0, #0x00
	strb r0, [r1, #0x00]
_081076A2:
	mov r0, r12
	ldr r6, [r0, #0x10]
	ldr r0, [r6, #0x34]
	cmp r0, #0x00
	beq _0810775E
	ldrh r0, [r0, #0x06]
	cmp r0, #0x00
	bne _0810775E
	ldrb r1, [r6, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	bne _0810775E
	ldr r0, _08107700 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r4, [r1, #0x38]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x38]
	ldrb r0, [r1, #0x02]
	adds r0, #0x01
	strb r0, [r1, #0x02]
	strh r2, [r4, #0x06]
	movs r2, #0x02
	ldsh r1, [r6, r2]
	mov r3, r12
	adds r3, #0xE4
	ldr r2, [r3, #0x00]
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r1, r1, r0
	movs r0, #0x06
	ldsb r0, [r2, r0]
	subs r1, r1, r0
	adds r5, r1, #0x0
	subs r5, #0x08
	movs r2, #0x94
	lsls r2, r2, #0x01
	add r2, r12
	movs r0, #0x00
	ldsb r0, [r2, r0]
	cmp r0, #0x04
	bgt _08107704
	subs r1, r5, r0
	b _0810770E
	.byte 0x00, 0x00
_08107700: .4byte 0x03000D74
_08107704:
	adds r0, r1, #0x0
	subs r0, #0x10
	movs r1, #0x00
	ldsb r1, [r2, r1]
	adds r1, r0, r1
_0810770E:
	movs r0, #0xFF
	ands r1, r0
	strh r1, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r6, #0x00]
	adds r0, r0, r6
	subs r0, #0x03
	ldr r2, _08107764 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	strh r0, [r4, #0x02]
	ldr r0, _08107768 @ =0x0000B899
	strh r0, [r4, #0x04]
	movs r5, #0x8C
	lsls r5, r5, #0x01
	add r5, r12
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08107744
	mov r0, r12
	adds r0, #0x08
	bl sub_8086E8C
	str r0, [r5, #0x00]
_08107744:
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x0C]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x34]
	str r0, [r4, #0x10]
	ldr r1, [r0, #0x0C]
	str r1, [r4, #0x0C]
	str r4, [r0, #0x0C]
	str r4, [r1, #0x10]
_0810775E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08107764: .4byte 0x000001FF
_08107768: .4byte 0x0000B899
