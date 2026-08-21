	.syntax unified
	.text

	thumb_func_start sub_813E2A4
sub_813E2A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r1, #0x0
	mov r8, r2
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r1, [r4, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	adds r5, r7, r0
	ldrh r0, [r5, #0x00]
	adds r0, r0, r6
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	movs r3, #0x00
	strb r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldrh r0, [r5, #0x00]
	adds r0, r0, r6
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, _0813E330 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _0813E334 @ =0x08142DB1
	str r0, [r1, #0x0C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813E330: .4byte sub_813B1E8
_0813E334: .4byte sub_8142DB0
