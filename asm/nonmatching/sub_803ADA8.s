	.syntax unified
	.text

	thumb_func_start sub_803ADA8
sub_803ADA8:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x02
	adds r2, r4, r6
	ldr r1, [r2, #0x00]
	movs r0, #0xA8
	strh r0, [r1, #0x04]
	strh r0, [r3, #0x04]
	ldr r2, [r2, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	asrs r1, r1, #0x17
	adds r0, r4, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x0C]
	cmp r3, #0x00
	bge _0803ADE6
	adds r3, #0xFF
_0803ADE6:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _0803ADF0
	adds r0, #0xFF
_0803ADF0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94
	ldr r0, _0803AE30 @ =0x0000026A
	adds r3, r4, r0
	movs r0, #0x01
	ands r5, r0
	lsls r2, r5, #0x01
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldr r1, _0803AE34 @ =0x0000020B
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803AE30: .4byte 0x0000026A
_0803AE34: .4byte 0x0000020B
