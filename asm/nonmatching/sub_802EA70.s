	.syntax unified
	.text

	thumb_func_start sub_802EA70
sub_802EA70:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1F
	movs r5, #0x01
	eors r1, r5
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _0802EC4C @ =0x00000209
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	movs r1, #0x10
	orrs r0, r1
	movs r2, #0x41
	negs r2, r2
	mov r9, r2
	ands r0, r2
	strb r0, [r3, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xF8
	ldrb r2, [r4, #0x00]
	lsrs r1, r2, #0x07
	lsls r1, r1, #0x06
	mov r0, r9
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0802EC50 @ =0x03000FD0
	ldr r1, [r0, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	str r0, [r2, #0x00]
	movs r2, #0xA6
	lsls r2, r2, #0x03
	adds r1, r1, r2
	adds r0, r7, #0x0
	adds r0, #0xFA
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1B
	str r0, [r1, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r8, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	adds r1, r7, #0x0
	adds r1, #0x28
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r2, r8
	str r0, [r2, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r6, r7, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	eors r0, r5
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	str r0, [r6, #0x00]
	ldr r0, [r2, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	mov r10, r1
	strh r5, [r0, #0x04]
	mov r3, r8
	ldr r0, [r3, #0x00]
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	ldr r0, [r6, #0x00]
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	strh r0, [r1, #0x04]
	ldr r0, [r6, #0x00]
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	strh r4, [r0, #0x06]
	ldr r3, [r3, #0x00]
	movs r4, #0xD6
	lsls r4, r4, #0x02
	adds r3, r3, r4
	ldrh r5, [r3, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	movs r2, #0xFF
	lsls r2, r2, #0x04
	ands r2, r0
	ldr r1, _0802EC54 @ =0xFFFFF00F
	adds r0, r1, #0x0
	ands r0, r5
	orrs r0, r2
	strh r0, [r3, #0x00]
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	movs r0, #0xFF
	lsls r0, r0, #0x04
	ands r0, r5
	ldrh r3, [r2, #0x00]
	ands r1, r3
	orrs r1, r0
	strh r1, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldr r3, _0802EC58 @ =0x00000352
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x00]
	adds r1, r1, r3
	ldrb r3, [r1, #0x00]
	movs r2, #0x7F
	adds r0, r2, #0x0
	ands r0, r3
	strb r0, [r1, #0x00]
	mov r1, r8
	ldr r4, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r5, _0802EC5C @ =0x000002B6
	adds r1, r1, r5
	ldrb r3, [r1, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	mov r3, r9
	ands r0, r3
	strb r0, [r1, #0x00]
	adds r4, r4, r5
	ldrb r0, [r4, #0x00]
	ands r2, r0
	ands r2, r3
	strb r2, [r4, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	movs r4, #0x85
	lsls r4, r4, #0x02
	adds r2, r2, r4
	ldrb r3, [r2, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	movs r3, #0x03
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldrb r2, [r0, #0x00]
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	mov r2, r8
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x0C]
	str r0, [r1, #0x34]
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r1, [r6, #0x00]
	ldr r0, [r1, #0x0C]
	str r0, [r1, #0x34]
	ldr r1, [r6, #0x00]
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r1, [r2, #0x00]
	ldr r3, _0802EC60 @ =0x00000351
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	mov r0, r9
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	mov r3, r9
	ands r3, r1
	strb r3, [r0, #0x00]
	mov r0, r8
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	ldr r1, [r6, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x01
	movs r3, #0x00
	bl sub_802DDB4
	adds r1, r7, #0x0
	adds r1, #0xE8
	adds r0, r7, #0x0
	adds r0, #0xEC
	mov r2, r10
	str r2, [r0, #0x00]
	str r2, [r1, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802EC4C: .4byte 0x00000209
_0802EC50: .4byte 0x03000FD0
_0802EC54: .4byte 0xFFFFF00F
_0802EC58: .4byte 0x00000352
_0802EC5C: .4byte 0x000002B6
_0802EC60: .4byte 0x00000351
