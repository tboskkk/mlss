	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08070D48
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08070D50 @ =0x08071019
	str r0, [r4, #0x58]
	ldr r0, _08070D54 @ =0x08070FD1
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, _08070D58 @ =0xFFFFE000
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070D5C @ =0x08071055
	str r0, [r4, #0x4C]
_08070D48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070D50: .4byte sub_8071018
_08070D54: .4byte sub_8070FD0
_08070D58: .4byte 0xFFFFE000
_08070D5C: .4byte sub_8071054
