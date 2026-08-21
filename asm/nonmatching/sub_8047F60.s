	.syntax unified
	.text

	thumb_func_start sub_8047F60
sub_8047F60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x00C]
	cmp r0, #0x00
	bne _08047F72
	str r1, [r4, #0x0C]
	str r2, [r4, #0x10]
	str r3, [r4, #0x18]
	b _08047F88
_08047F72:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r1, r1, r3
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
_08047F88:
	movs r1, #0x00
	str r1, [r4, #0x14]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	beq _08047FC4
	ldr r0, [r4, #0x0C]
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x38]
	str r1, [r4, #0x3C]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x40]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08047FC4
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x78
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x01
	bl _call_via_r2
_08047FC4:
	ldr r1, _08047FD8 @ =0x00000217
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047FD8: .4byte 0x00000217
