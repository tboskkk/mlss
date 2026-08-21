	.syntax unified
	.text

	thumb_func_start sub_8143E90
sub_8143E90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	str r2, [sp, #0x00C]
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r5, #0xD1
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143ED0
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _08143EDC
_08143ED0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08143EDC:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r3, [r6, #0x0C]
	subs r0, r1, r3
	adds r1, r1, r0
	mov r12, r1
	ldr r1, [r2, #0x10]
	ldr r2, [r6, #0x10]
	subs r0, r1, r2
	adds r7, r1, r0
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	movs r5, #0x04
	ldsh r0, [r1, r5]
	adds r5, r3, #0x0
	cmp r0, #0x55
	bne _08143F1A
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xD8
	lsls r1, r1, #0x06
	b _08143F20
_08143F1A:
	ldr r0, [r1, #0x14]
	movs r1, #0xC0
	lsls r1, r1, #0x05
_08143F20:
	adds r3, r0, r1
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x2E]
	mov r1, r12
	subs r5, r1, r5
	subs r4, r7, r2
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	mov r0, r8
	mov r1, r12
	adds r2, r7, #0x0
	bl sub_813A44C
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _08143F50
	negs r1, r5
_08143F50:
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08143F58
	negs r0, r4
_08143F58:
	cmp r1, r0
	ble _08143F7E
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r5, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08143F9E
_08143F7E:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	cmp r4, #0x00
	blt _08143F8E
	movs r1, #0x05
_08143F8E:
	adds r0, #0x21
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_08143F9E:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r5, r6, r4
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r2, #0x01
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	add r4, r8
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r0, #0x03
	adds r1, #0x21
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x11]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	mov r0, r8
	bl sub_8047928
	mov r0, r8
	movs r1, #0x01
	bl sub_804776C
	mov r0, r8
	movs r1, #0x01
	bl sub_804761C
	ldr r0, _0814401C @ =0x08144021
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814401C: .4byte sub_8144020
