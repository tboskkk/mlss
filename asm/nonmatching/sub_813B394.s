	.syntax unified
	.text

	thumb_func_start sub_813B394
sub_813B394:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	cmp r3, #0x00
	beq _0813B3AC
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	adds r6, r6, r0
_0813B3AC:
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	str r6, [r4, #0x00]
	movs r1, #0xB1
	lsls r1, r1, #0x02
	adds r3, r5, r1
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r2, #0xB2
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r0, [sp, #0x014]
	str r0, [r1, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r0, [r4, #0x00]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r5, r1
	strh r7, [r0, #0x00]
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r1, r7, r1
	ldr r3, _0813B41C @ =0x03001038
	ldr r0, _0813B420 @ =0x0819832C
	ldr r2, _0813B424 @ =0x08198220
	subs r0, r0, r2
	ldr r3, [r3, #0x00]
	adds r3, r3, r0
	negs r0, r7
	muls r0, r7
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r3
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r5, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813B416
	movs r0, #0x01
	str r0, [r1, #0x00]
_0813B416:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813B41C: .4byte 0x03001038
_0813B420: .4byte 0x0819832C
_0813B424: .4byte 0x08198220
