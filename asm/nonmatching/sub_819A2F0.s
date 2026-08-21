	.syntax unified
	.text

	thumb_func_start sub_819A2F0
sub_819A2F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	push {r2, r3}
	movs r5, #0x00
	ldr r6, _0819A63C @ =0x03001B50
	movs r7, #0x08
	mov r9, r0
	mov r10, r1
_0819A306:
	ldrb r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0819A36C
	cmp r0, #0x80
	beq _0819A32A
	ldrb r1, [r6, #0x01]
	cmp r0, #0x81
	beq _0819A330
	cmp r0, #0x82
	beq _0819A33E
	cmp r0, #0x83
	beq _0819A352
	ldrb r2, [r6, #0x0F]
	subs r1, r1, r2
	bhi _0819A350
	movs r0, #0x00
	strb r0, [r6, #0x00]
	b _0819A36C
_0819A32A:
	adds r0, #0x01
	ldrb r1, [r6, #0x0C]
	b _0819A34E
_0819A330:
	ldrb r2, [r6, #0x0C]
	adds r1, r1, r2
	cmp r1, #0xFF
	bmi _0819A350
	movs r1, #0xFF
	adds r0, #0x01
	b _0819A34E
_0819A33E:
	ldrb r2, [r6, #0x0D]
	subs r1, r1, r2
	bcs _0819A34A
	ldrb r2, [r6, #0x0E]
	cmp r0, r2
	bhi _0819A350
_0819A34A:
	adds r0, #0x01
	ldrb r1, [r6, #0x0E]
_0819A34E:
	strb r0, [r6, #0x00]
_0819A350:
	strb r1, [r6, #0x01]
_0819A352:
	ldrb r4, [r6, #0x09]
	lsls r4, r4, #0x10
	ldrb r0, [r6, #0x08]
	orrs r4, r0
	muls r4, r1
	lsrs r4, r4, #0x08
	movs r0, #0xFF
	lsls r0, r0, #0x08
	bics r4, r0
	lsls r1, r4, #0x07
	adds r5, r5, r1
	bl sub_819A398
_0819A36C:
	adds r6, #0x10
	subs r7, #0x01
	bne _0819A306
	pop {r1, r2}
	mov r12, r9
	movs r0, #0xFF
	lsls r4, r0, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x08
	movs r6, #0x00
	movs r7, #0x00
	mov r8, r6
	mov r9, r6
	ldr r0, _0819A640 @ =0x0300117C
	bl sub_819A5D0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00
