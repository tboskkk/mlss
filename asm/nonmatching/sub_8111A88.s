	.syntax unified
	.text

	thumb_func_start sub_8111A88
sub_8111A88:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	adds r6, r0, #0x0
	cmp r6, #0x00
	bne _08111B22
	ldr r7, [r4, #0x28]
	adds r3, r7, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x38]
	cmp r0, #0x00
	bge _08111AA8
	adds r0, #0xFF
_08111AA8:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _08111AB4
	adds r0, #0xFF
_08111AB4:
	asrs r0, r0, #0x08
	adds r2, r0, #0x1
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _08111AC0
	adds r3, #0xFF
_08111AC0:
	asrs r3, r3, #0x08
	adds r3, #0x28
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r1, _08111B2C @ =0x083BA9A8
	adds r0, r7, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x50
	bl sub_808842C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08111AEE
	adds r1, #0xFF
_08111AEE:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08111AF8
	adds r2, #0xFF
_08111AF8:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08111B02
	adds r3, #0xFF
_08111B02:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08111B30 @ =0x00002661
	bl sub_80DF024
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
	ldr r0, _08111B34 @ =0x08112175
	str r0, [r4, #0x4C]
_08111B22:
	adds r0, r6, #0x0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08111B2C: .4byte 0x083BA9A8
_08111B30: .4byte 0x00002661
_08111B34: .4byte sub_8112174
