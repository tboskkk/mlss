	.syntax unified
	.text

	thumb_func_start sub_81116C0
sub_81116C0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08111748
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08111728
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0811171A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081116F6
	adds r1, #0xFF
_081116F6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08111700
	adds r2, #0xFF
_08111700:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0811170A
	adds r3, #0xFF
_0811170A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x9C
	lsls r0, r0, #0x06
	bl sub_80DF024
	ldr r0, _08111724 @ =0x000003E7
	strh r0, [r5, #0x00]
_0811171A:
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	b _08111748
	.byte 0x00, 0x00
_08111724: .4byte 0x000003E7
_08111728:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08111750 @ =0x08111755
	str r0, [r4, #0x4C]
_08111748:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08111750: .4byte sub_8111754
