	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	movs r0, #0x00
	mov r9, r0
	movs r0, #0x40
	strh r0, [r7, #0x12]
	mov r1, r9
	strh r1, [r7, #0x16]
	ldr r5, _0810AB28 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x11
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x02
	mov r8, r1
	str r1, [sp, #0x008]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x0F
	bl sub_8084578
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x05
	movs r2, #0x04
	movs r3, #0x04
	bl sub_80847B0
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	movs r2, #0x90
	bl sub_8085170
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8084E84
	adds r6, r0, #0x0
	ldr r0, [r5, #0x00]
	movs r1, #0xA7
	lsls r1, r1, #0x02
	adds r4, r0, r1
	mov r0, r9
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	mov r1, r8
	str r1, [sp, #0x00C]
	str r0, [sp, #0x010]
	movs r0, #0x03
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x00
	bl sub_8199D78
	bl sub_8105858
	adds r5, r0, #0x0
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8083F20
	movs r1, #0x00
	cmp r0, #0x67
	bgt _0810AACA
	movs r1, #0x01
_0810AACA:
	strh r1, [r7, #0x18]
	ldr r0, _0810AB2C @ =0x03001034
	movs r2, #0x88
	lsls r2, r2, #0x03
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	bl _call_via_r3
	str r5, [r4, #0x08]
	movs r0, #0x00
	strb r0, [r4, #0x0C]
	movs r0, #0x0D
	strb r0, [r4, #0x0D]
	ldrb r0, [r4, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x12]
_0810AAEE:
	movs r0, #0x0C
	ldsb r0, [r4, r0]
	cmp r0, #0x00
	blt _0810AB02
	adds r0, r4, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0810AAEE
_0810AB02:
	ldr r0, _0810AB28 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _0810AB30 @ =0x0810CEC1
	str r0, [r7, #0x04]
	movs r0, #0x5A
	strh r0, [r7, #0x16]
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810AB28: .4byte 0x03000FD8
_0810AB2C: .4byte 0x03001034
_0810AB30: .4byte sub_810CEC0
