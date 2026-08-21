	.syntax unified
	.text

	thumb_func_start sub_813DC54
sub_813DC54:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DD20
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	ldr r2, [r0, #0x0C]
	ldr r1, [r4, #0x0C]
	subs r2, r2, r1
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813DCAC
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0813DCB0
_0813DCAC:
	movs r3, #0x01
	negs r3, r3
_0813DCB0:
	adds r2, r4, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r0
	orrs r1, r3
	strb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x12]
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _0813DD2C @ =0x0813DD31
	str r3, [r7, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
_0813DD20:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813DD2C: .4byte sub_813DD30
