	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060AE8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08060AE8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r2, #0x2A
	movs r3, #0x00
	ldsh r0, [r2, r3]
	subs r0, #0x10
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08060AB4
	adds r0, #0xFF
_08060AB4:
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08060AF0 @ =0x08060AF9
	str r0, [r4, #0x4C]
	ldr r0, _08060AF4 @ =0x0000011D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08060AE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060AF0: .4byte sub_8060AF8
_08060AF4: .4byte 0x0000011D
