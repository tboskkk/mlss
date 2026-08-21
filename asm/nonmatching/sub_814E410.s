	.syntax unified
	.text

	thumb_func_start sub_814E410
sub_814E410:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r7, r0
	ldr r0, _0814E498 @ =0x0000020D
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814E49C @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _0814E4A0 @ =0x0814E061
	str r0, [r5, #0x0C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E498: .4byte 0x0000020D
_0814E49C: .4byte sub_813B1E8
_0814E4A0: .4byte sub_814E060
