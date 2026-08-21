	.syntax unified
	.text

	thumb_func_start sub_807197C
sub_807197C:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071A48
	ldr r0, _08071A50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	ldr r0, [r0, #0x10]
	bl sub_807FB64
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080719A4
	adds r2, #0xFF
_080719A4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _080719AE
	adds r3, #0xFF
_080719AE:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080719B8
	adds r0, #0xFF
_080719B8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071A54 @ =0x000040B8
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r3, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	str r5, [r3, #0x4C]
	ldr r2, _08071A58 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071A20
	adds r1, #0xFF
_08071A20:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071A2A
	adds r2, #0xFF
_08071A2A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071A34
	adds r3, #0xFF
_08071A34:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071A5C @ =0x000021F2
	bl sub_80DF024
	ldr r0, _08071A60 @ =0x08072391
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
_08071A48:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08071A50: .4byte 0x03000FD8
_08071A54: .4byte 0x000040B8
_08071A58: .4byte 0x000040B7
_08071A5C: .4byte 0x000021F2
_08071A60: .4byte sub_8072390
