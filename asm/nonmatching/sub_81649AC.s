	.syntax unified
	.text

	thumb_func_start sub_81649AC
sub_81649AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	mov r12, r1
	mov r8, r2
	adds r6, r3, #0x0
	ldr r0, [sp, #0x024]
	mov r9, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x04
	cmp r0, #0x03
	ble _081649D4
	cmp r0, #0x1E
	ble _081649D6
	movs r0, #0x1E
	b _081649D6
_081649D4:
	movs r0, #0x03
_081649D6:
	lsls r7, r0, #0x03
	mov r0, r12
	ldrb r1, [r0, #0x01]
	cmp r1, #0x02
	beq _081649EA
	cmp r1, #0x04
	beq _081649EA
	cmp r1, #0x05
	beq _081649EA
	adds r0, r1, #0x1
_081649EA:
	adds r0, r1, #0x2
	cmp r0, #0x03
	ble _081649F8
	cmp r0, #0x0C
	ble _081649FA
	movs r0, #0x0C
	b _081649FA
_081649F8:
	movs r0, #0x03
_081649FA:
	lsls r5, r0, #0x03
	movs r0, #0x0F
	mov r1, r9
	ands r0, r1
	cmp r0, #0x01
	beq _08164A12
	cmp r0, #0x02
	beq _08164A16
	lsrs r0, r7, #0x01
	mov r1, r8
	subs r2, r1, r0
	b _08164A18
_08164A12:
	movs r2, #0x04
	b _08164A18
_08164A16:
	movs r2, #0xEC
_08164A18:
	subs r0, r6, r5
	adds r3, r0, #0x0
	subs r3, #0x0C
	mov r10, r0
	cmp r3, #0x03
	bgt _08164A28
	adds r3, r6, #0x0
	adds r3, #0x0C
_08164A28:
	cmp r2, #0x03
	bgt _08164A2E
	movs r2, #0x04
_08164A2E:
	cmp r3, #0x03
	bgt _08164A34
	movs r3, #0x04
_08164A34:
	adds r0, r2, r7
	cmp r0, #0xEC
	ble _08164A3E
	movs r0, #0xEC
	subs r2, r0, r7
_08164A3E:
	adds r0, r3, r5
	cmp r0, #0x9C
	ble _08164A48
	movs r0, #0x9C
	subs r3, r0, r5
_08164A48:
	adds r0, r2, #0x0
	adds r0, #0x10
	cmp r0, r8
	ble _08164A56
	mov r2, r8
	subs r2, #0x10
	b _08164A66
_08164A56:
	adds r0, r2, r7
	subs r0, #0x10
	cmp r0, r8
	bge _08164A66
	mov r1, r8
	subs r0, r1, r7
	adds r2, r0, #0x0
	adds r2, #0x10
_08164A66:
	adds r0, r3, #0x0
	subs r0, #0x0C
	cmp r0, r6
	bge _08164A9A
	adds r0, r3, r5
	adds r0, #0x0C
	cmp r0, r6
	ble _08164A9A
	subs r1, r6, r3
	lsrs r0, r5, #0x01
	cmp r1, r0
	bge _08164A8E
	adds r3, r6, #0x0
	adds r3, #0x0C
	adds r0, r3, r5
	cmp r0, #0x9C
	ble _08164A9A
	mov r3, r10
	subs r3, #0x0C
	b _08164A9A
_08164A8E:
	mov r3, r10
	subs r3, #0x0C
	cmp r3, #0x03
	bgt _08164A9A
	adds r3, r6, #0x0
	adds r3, #0x0C
_08164A9A:
	adds r0, r4, #0x0
	mov r1, r12
	bl sub_81648A4
	movs r0, #0xF0
	mov r1, r9
	ands r0, r1
	cmp r0, #0x10
	bne _08164AC0
	ldr r0, [r4, #0x04]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r3, #0x00
	bl sub_801E150
	b _08164AD2
_08164AC0:
	ldr r0, [r4, #0x04]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x02
	movs r3, #0x00
	bl sub_801E150
_08164AD2:
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r1, r9
	ands r1, r0
	mov r9, r1
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r9, r0
	bne _08164AEE
	ldr r0, [r4, #0x04]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_08164AEE:
	ldr r0, [r4, #0x04]
	bl sprite_show_8020CBC
	ldr r3, [r4, #0x34]
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	lsls r0, r0, #0x03
	ldr r2, [r4, #0x2C]
	adds r0, r2, r0
	cmp r0, r6
	blt _08164B16
	ldr r1, [r4, #0x04]
	adds r0, r2, #0x4
	strh r0, [r1, #0x02]
	ldr r2, [r4, #0x04]
	ldrb r0, [r2, #0x11]
	movs r1, #0x80
	orrs r0, r1
	b _08164B2A
_08164B16:
	ldr r1, [r4, #0x04]
	subs r0, r3, #0x1
	lsls r0, r0, #0x03
	adds r0, r2, r0
	adds r0, #0x04
	strh r0, [r1, #0x02]
	ldr r2, [r4, #0x04]
	ldrb r1, [r2, #0x11]
	movs r0, #0x7F
	ands r0, r1
_08164B2A:
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x04]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0x10
	cmp r8, r0
	ble _08164B46
	ldr r0, [r4, #0x30]
	subs r0, #0x02
	lsls r0, r0, #0x03
	adds r0, r1, r0
	cmp r0, r8
	ble _08164B46
	mov r0, r8
_08164B46:
	strh r0, [r2, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
