	.syntax unified
	.text

	thumb_func_start sub_81392F4
sub_81392F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813931A
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_0813931A:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	ldr r2, [r0, #0x0C]
	ldr r3, [r0, #0x10]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r5, #0x0
	bl sub_81382A8
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	subs r1, #0x07
	ands r0, r1
	adds r1, #0x04
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08139360 @ =0x08139365
	str r0, [r6, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139360: .4byte sub_8139364
