	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _08106228
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810627C
_08106228:
	ldr r5, _08106284 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	ldr r2, _08106288 @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _0810628C @ =0x0810136D
	str r0, [r6, #0x04]
_0810627C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106284: .4byte 0x03000FD8
_08106288: .4byte 0x0000033F
_0810628C: .4byte sub_810136C
