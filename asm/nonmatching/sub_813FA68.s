	.syntax unified
	.text

	thumb_func_start sub_813FA68
sub_813FA68:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813FA8E
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0813FA9A
_0813FA8E:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0813FA9A:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	ldr r2, _0813FAD8 @ =0x03001038
	ldr r0, _0813FADC @ =0x0819832C
	ldr r1, _0813FAE0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813FAE4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0813FAE8
_0813FAD8: .4byte 0x03001038
_0813FADC: .4byte 0x0819832C
_0813FAE0: .4byte 0x08198220
_0813FAE4:
	movs r1, #0x01
	negs r1, r1
_0813FAE8:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	ldrh r0, [r6, #0x24]
	lsls r0, r0, #0x0C
	adds r1, r1, r0
	str r1, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
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
	ldr r0, _0813FB40 @ =0x08142B4D
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813FB40: .4byte sub_8142B4C
