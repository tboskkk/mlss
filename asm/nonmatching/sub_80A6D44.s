	.syntax unified
	.text

	thumb_func_start sub_80A6D44
sub_80A6D44:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r5, _080A6E2C @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r0, #0x00
	strb r0, [r1, #0x0E]
	ldr r6, [r5, #0x00]
	ldr r0, _080A6E30 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x08]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x1A
	movs r4, #0x01
	adds r2, r4, #0x0
	ands r2, r0
	ldrb r3, [r1, #0x0B]
	lsrs r3, r3, #0x06
	ldrb r0, [r1, #0x0C]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r3
	ands r0, r4
	lsls r0, r0, #0x01
	adds r2, r2, r0
	lsls r2, r2, #0x06
	ldrb r1, [r6, #0x0A]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x0A]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6DB2
	cmp r1, #0x04
	bne _080A6DF8
_080A6DB2:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6DC0
	adds r0, #0xFF
_080A6DC0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x14
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6DD2
	adds r0, #0xFF
_080A6DD2:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6DE4
	adds r0, #0xFF
_080A6DE4:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080A6DF8:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A6E0C
	cmp r2, #0x04
	bne _080A6E74
_080A6E0C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A6E38
	ldr r2, _080A6E34 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A6E44
	.byte 0x00, 0x00
_080A6E2C: .4byte 0x03000FD8
_080A6E30: .4byte 0x03000FF4
_080A6E34: .4byte 0x00002002
_080A6E38:
	ldr r2, _080A6F18 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A6E44:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A6E5A
	movs r2, #0x01
_080A6E5A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A6E74:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A6E82
	cmp r2, #0x04
	bne _080A6E8C
_080A6E82:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080A6E8C:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A6EA0
	cmp r2, #0x04
	bne _080A6EEA
_080A6EA0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6EAE
	adds r0, #0xFF
_080A6EAE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x22
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6EC0
	adds r0, #0xFF
_080A6EC0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6ED2
	adds r0, #0xFF
_080A6ED2:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080A6EEA:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A6EF8
	cmp r2, #0x04
	bne _080A6F5C
_080A6EF8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A6F20
	ldr r2, _080A6F1C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A6F2C
	.byte 0x00, 0x00
_080A6F18: .4byte 0x0000204F
_080A6F1C: .4byte 0x00002002
_080A6F20:
	ldr r2, _080A6F70 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A6F2C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A6F42
	movs r2, #0x01
_080A6F42:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A6F5C:
	ldr r0, _080A6F74 @ =0x080AC5A5
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A6F70: .4byte 0x0000204F
_080A6F74: .4byte sub_80AC5A4
