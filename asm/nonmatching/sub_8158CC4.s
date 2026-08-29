	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _08158D30 @ =0x08CDC8F0
	str r0, [r4, #0x30]
	movs r1, #0x00
	movs r6, #0x00
	strh r5, [r4, #0x34]
	adds r0, r4, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x40]
	str r6, [r4, #0x3C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r1, _08158D34 @ =0x00005008
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x40]
	str r6, [sp, #0x000]
	movs r1, #0x1B
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x40]
	bl sprite_show_8020CBC
	ldr r2, [r4, #0x40]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08158D30: .4byte 0x08CDC8F0
_08158D34: .4byte 0x00005008
