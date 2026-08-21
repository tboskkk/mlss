	.syntax unified
	.text

	thumb_func_start sub_80DD0CC
sub_80DD0CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r9, r0
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _080DD0E2
	adds r0, #0xFF
_080DD0E2:
	asrs r0, r0, #0x08
	adds r5, r0, #0x0
	subs r5, #0x14
	mov r1, r9
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	bge _080DD0F2
	adds r0, #0xFF
_080DD0F2:
	asrs r0, r0, #0x08
	adds r7, r0, #0x1
	mov r2, r9
	ldr r4, [r2, #0x18]
	cmp r4, #0x00
	bge _080DD100
	adds r4, #0xFF
_080DD100:
	asrs r4, r4, #0x08
	adds r4, #0x10
	mov r3, r9
	ldr r3, [r3, #0x2C]
	str r3, [sp, #0x00C]
	mov r1, r9
	ldr r0, [r1, #0x28]
	ldr r1, _080DD278 @ =0x00004152
	str r4, [sp, #0x000]
	movs r2, #0x01
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807BF34
	mov r8, r0
	mov r3, r9
	ldr r0, [r3, #0x30]
	mov r1, r8
	str r0, [r1, #0x30]
	str r1, [r3, #0x30]
	ldr r0, _080DD27C @ =0x00000CC1
	str r3, [sp, #0x000]
	adds r1, r5, #0x0
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	bl sub_80DF024
	mov r2, r9
	ldr r0, [r2, #0x28]
	ldr r1, _080DD280 @ =0x0000417F
	str r4, [sp, #0x000]
	movs r3, #0x01
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	mov r1, r8
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x30]
	str r4, [r1, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	movs r0, #0x14
	strh r0, [r4, #0x22]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x01
	strh r2, [r0, #0x00]
	adds r1, #0x9C
	movs r0, #0x05
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x00C]
	ldr r2, [r3, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	mov r3, r9
	ldr r0, [r3, #0x10]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080DD19E
	adds r0, #0x03
_080DD19E:
	asrs r5, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	mov r2, r9
	ldr r0, [r2, #0x14]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080DD1B2
	adds r0, #0x03
_080DD1B2:
	asrs r7, r0, #0x02
	ldr r3, _080DD284 @ =0x03001038
	mov r10, r3
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r4, _080DD288 @ =0x0819832C
	ldr r0, _080DD28C @ =0x08198220
	subs r4, r4, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	lsls r0, r5, #0x0E
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r8
	adds r1, #0x84
	str r0, [r1, #0x00]
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	lsls r0, r7, #0x0E
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r8
	adds r1, #0x88
	str r0, [r1, #0x00]
	adds r1, #0x26
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x3A
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	ldr r2, [sp, #0x00C]
	mov r3, r8
	str r2, [r3, #0x2C]
	mov r2, r8
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r4, r9
	adds r4, #0x77
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, #0x77
	movs r2, #0x01
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	movs r2, #0x01
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x6C]
	mov r2, r8
	str r0, [r2, #0x6C]
	mov r0, r8
	movs r1, #0x00
	bl sub_807F4C4
	ldr r0, _080DD290 @ =0x080DD295
	mov r3, r8
	str r0, [r3, #0x4C]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DD278: .4byte 0x00004152
_080DD27C: .4byte 0x00000CC1
_080DD280: .4byte 0x0000417F
_080DD284: .4byte 0x03001038
_080DD288: .4byte 0x0819832C
_080DD28C: .4byte 0x08198220
_080DD290: .4byte sub_80DD294
