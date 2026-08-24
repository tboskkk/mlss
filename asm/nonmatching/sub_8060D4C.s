	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08060DB6
	ldr r0, _08060D8C @ =0x03000E18
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08060D6C
	adds r2, #0xFF
_08060D6C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08060D76
	adds r3, #0xFF
_08060D76:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08060D90
	movs r0, #0x13
	b _08060D92
_08060D8C: .4byte 0x03000E18
_08060D90:
	movs r0, #0x12
_08060D92:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x20
	strh r1, [r0, #0x00]
	ldr r0, _08060DC0 @ =0x08060E4D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08060DB6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08060DC0: .4byte sub_8060E4C
