	.syntax unified
	.text

	thumb_func_start sub_81074EC
sub_81074EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r12, r0
	movs r3, #0x93
	lsls r3, r3, #0x01
	add r3, r12
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0810752E
	movs r2, #0x94
	lsls r2, r2, #0x01
	add r2, r12
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x02
	strh r0, [r3, #0x00]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	cmp r0, #0x07
	ble _0810752E
	movs r0, #0x00
	strb r0, [r2, #0x00]
_0810752E:
	mov r0, r12
	ldr r0, [r0, #0x10]
	mov r10, r0
	ldr r0, [r0, #0x34]
	cmp r0, #0x00
	bne _0810753C
	b _08107646
_0810753C:
	ldrh r0, [r0, #0x06]
	cmp r0, #0x00
	beq _08107544
	b _08107646
_08107544:
	mov r2, r10
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08107646
	ldr r0, _08107654 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r6, [r1, #0x38]
	ldr r7, [r6, #0x10]
	ldr r2, _08107658 @ =0x082010C4
	movs r0, #0x94
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	ldrb r5, [r0, #0x00]
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x38]
	ldrb r0, [r1, #0x02]
	adds r0, #0x02
	strb r0, [r1, #0x02]
	strh r3, [r7, #0x06]
	strh r3, [r6, #0x06]
	mov r4, r12
	adds r4, #0xE4
	ldr r0, [r4, #0x00]
	movs r1, #0x05
	ldsb r1, [r0, r1]
	mov r3, r10
	ldrh r3, [r3, #0x02]
	adds r1, r1, r3
	ldrb r0, [r0, #0x06]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	ldr r2, _0810765C @ =0x082010D2
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	strh r0, [r6, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x04
	ldsb r1, [r0, r1]
	mov r0, r10
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	ldr r2, _08107660 @ =0x082010CC
	mov r8, r2
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldr r3, _08107664 @ =0x000001FF
	mov r9, r3
	mov r1, r9
	ands r0, r1
	strh r0, [r6, #0x02]
	ldr r0, _08107668 @ =0x0000B89B
	strh r0, [r6, #0x04]
	ldr r0, [r4, #0x00]
	movs r1, #0x05
	ldsb r1, [r0, r1]
	mov r2, r10
	ldrh r2, [r2, #0x02]
	adds r1, r1, r2
	ldrb r0, [r0, #0x06]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	movs r2, #0x01
	eors r2, r5
	ldr r0, _0810765C @ =0x082010D2
	adds r3, r2, r0
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r0, r0, r1
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x04
	ldsb r1, [r0, r1]
	mov r3, r10
	ldrh r3, [r3, #0x00]
	adds r1, r1, r3
	add r2, r8
	movs r0, #0x00
	ldsb r0, [r2, r0]
	adds r0, r0, r1
	mov r1, r9
	ands r0, r1
	strh r0, [r7, #0x02]
	ldr r0, _0810766C @ =0x0000B89C
	strh r0, [r7, #0x04]
	movs r4, #0x8C
	lsls r4, r4, #0x01
	add r4, r12
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0810762A
	mov r0, r12
	adds r0, #0x08
	bl sub_8086E8C
	str r0, [r4, #0x00]
_0810762A:
	ldr r1, [r6, #0x0C]
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r7, #0x10]
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x0C]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x34]
	str r0, [r7, #0x10]
	ldr r0, [r0, #0x0C]
	str r0, [r6, #0x0C]
	str r6, [r0, #0x10]
	ldr r0, [r7, #0x10]
	str r7, [r0, #0x0C]
_08107646:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08107654: .4byte 0x03000D74
_08107658: .4byte 0x082010C4
_0810765C: .4byte 0x082010D2
_08107660: .4byte 0x082010CC
_08107664: .4byte 0x000001FF
_08107668: .4byte 0x0000B89B
_0810766C: .4byte 0x0000B89C
