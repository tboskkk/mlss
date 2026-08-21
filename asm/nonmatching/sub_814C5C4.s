	.syntax unified
	.text

	thumb_func_start sub_814C5C4
sub_814C5C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r7, r5, #0x0
	adds r7, #0x58
	mov r6, sp
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C5F2
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814C5F6
_0814C5F2:
	mov r0, sp
	ldrb r0, [r0, #0x00]
_0814C5F6:
	strb r0, [r6, #0x00]
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	adds r0, r5, #0x0
	movs r1, #0x28
	bl sub_804790C
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r3, r2, #0x0
	cmp r2, #0x00
	bge _0814C61E
	negs r3, r2
_0814C61E:
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0814C626
	negs r0, r1
_0814C626:
	cmp r3, r0
	ble _0814C646
	movs r3, #0x02
	cmp r2, #0x00
	bge _0814C632
	movs r3, #0x06
_0814C632:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r3, r0, #0x0
	b _0814C65E
_0814C646:
	mvns r1, r1
	asrs r1, r1, #0x1F
	movs r0, #0x04
	adds r2, r5, #0x0
	adds r2, #0x24
	ands r1, r0
	ldrb r3, [r2, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r3, r2, #0x0
_0814C65E:
	ldr r2, _0814C6BC @ =0x03001038
	ldr r0, _0814C6C0 @ =0x0819832C
	ldr r1, _0814C6C4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x04
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814C6C8
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814C6CA
	.byte 0x00, 0x00
_0814C6BC: .4byte 0x03001038
_0814C6C0: .4byte 0x0819832C
_0814C6C4: .4byte 0x08198220
_0814C6C8:
	movs r0, #0xFF
_0814C6CA:
	strb r0, [r5, #0x02]
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0x06
	strh r0, [r1, #0x00]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _0814C6F4 @ =0x0814C6F9
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C6F4: .4byte sub_814C6F8
