	.syntax unified
	.text

	thumb_func_start sub_8144560
sub_8144560:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x58
	mov r10, r0
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081445A0
	add r1, sp, #0x004
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_081445A0:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r9, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	mov r0, r9
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081445DA
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
	b _081445DC
_081445DA:
	ldr r1, _081446B8 @ =0x0000FFFF
_081445DC:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _081445F4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	bl sub_80478AC
_081445F4:
	movs r4, #0xA4
	lsls r4, r4, #0x01
	mov r2, r8
	adds r7, r2, r4
	ldr r3, [r7, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
	mov r0, r10
	adds r2, r0, r4
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _0814461A
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
_0814461A:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081446E2
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r8
	ldr r2, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x34
	add r0, sp, #0x008
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x35
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r1, r2, #0x0
	adds r1, #0x36
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r1, r2, #0x0
	adds r1, #0x37
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r1, r2, #0x0
	adds r1, #0x38
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r1, r2, #0x0
	adds r1, #0x39
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	mov r2, r9
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081446C4
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081446BC @ =0x081446F9
	str r0, [r1, #0x00]
	ldr r1, _081446C0 @ =0x08136B31
	str r1, [r7, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x01
	add r0, r8
	str r1, [r0, #0x00]
	b _081446E2
_081446B8: .4byte 0x0000FFFF
_081446BC: .4byte sub_81446F8
_081446C0: .4byte sub_8136B30
_081446C4:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081446F4 @ =0x08145AB1
	str r0, [r1, #0x00]
_081446E2:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081446F4: .4byte sub_8145AB0
