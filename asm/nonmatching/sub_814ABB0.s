	.syntax unified
	.text

	thumb_func_start sub_814ABB0
sub_814ABB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0814AC50
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldr r0, [r4, #0x14]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	subs r1, #0xDC
	strh r1, [r0, #0x00]
	ldr r3, _0814AC3C @ =0x0000023E
	adds r0, r4, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x01
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r3, _0814AC40 @ =0x03001038
	ldr r0, _0814AC44 @ =0x0819832C
	ldr r2, _0814AC48 @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	asrs r0, r1, #0x01
	ldr r3, _0814AC4C @ =0xFFFC0000
	adds r0, r0, r3
	bl _call_via_r2
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r4, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AC34
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AC34:
	movs r0, #0x01
	strh r0, [r5, #0x00]
	b _0814AD16
	.byte 0x00, 0x00
_0814AC3C: .4byte 0x0000023E
_0814AC40: .4byte 0x03001038
_0814AC44: .4byte 0x0819832C
_0814AC48: .4byte 0x08198220
_0814AC4C: .4byte 0xFFFC0000
_0814AC50:
	cmp r0, #0x01
	bne _0814AD16
	ldr r6, _0814ACFC @ =0x03001038
	ldr r1, _0814AD00 @ =0x0819832C
	ldr r0, _0814AD04 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	subs r3, #0x10
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814ACA2
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814ACA2:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r4, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814AD16
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814AD16
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r3, _0814AD08 @ =0x0000020F
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AD0C
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814AD16
_0814ACFC: .4byte 0x03001038
_0814AD00: .4byte 0x0819832C
_0814AD04: .4byte 0x08198220
_0814AD08: .4byte 0x0000020F
_0814AD0C:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
_0814AD16:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
