	.syntax unified
	.text

	thumb_func_start sub_806BB48
sub_806BB48:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BC2A
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BC2A
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB82
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BB8E
_0806BB82:
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BB8E:
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _0806BB98
	adds r2, #0xFF
_0806BB98:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _0806BBA2
	adds r3, #0xFF
_0806BBA2:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806BBAC
	adds r0, #0xFF
_0806BBAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806BC34 @ =0x000040D0
	bl sub_807BF34
	str r0, [r5, #0x30]
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	movs r2, #0x77
	adds r2, r2, r0
	mov r12, r2
	adds r3, r4, #0x0
	ands r3, r1
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r1
	orrs r2, r3
	mov r1, r12
	strb r2, [r1, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	ands r4, r1
	lsls r4, r4, #0x05
	movs r1, #0x21
	negs r1, r1
	ands r2, r1
	orrs r2, r4
	mov r1, r12
	strb r2, [r1, #0x00]
	ldr r1, _0806BC38 @ =0x08087541
	str r1, [r0, #0x68]
	ldr r1, [r5, #0x6C]
	str r1, [r0, #0x6C]
	ldr r1, [r5, #0x2C]
	str r1, [r0, #0x2C]
	adds r1, r5, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	adds r1, #0x01
	adds r0, #0x75
	strb r1, [r0, #0x00]
	ldr r0, _0806BC3C @ =0x0806BFD5
	str r0, [r5, #0x4C]
_0806BC2A:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BC34: .4byte 0x000040D0
_0806BC38: .4byte sub_8087540
_0806BC3C: .4byte sub_806BFD4
