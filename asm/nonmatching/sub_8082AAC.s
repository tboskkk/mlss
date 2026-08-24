	push {r4, r5, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _08082AF4
	ldr r0, _08082AC0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08082AC4 @ =0x00003660
	adds r4, r0, r1
	b _08082AD0
	.byte 0x00, 0x00
_08082AC0: .4byte 0x03000FDC
_08082AC4: .4byte 0x00003660
_08082AC8:
	ldrh r0, [r4, #0x00]
	cmp r0, r5
	beq _08082AF4
	subs r4, #0x08
_08082AD0:
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08082AC8
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80213A0
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082AF4
	ldr r0, _08082AFC @ =0x07FFFFFF
	cmp r1, r0
	bhi _08082AF4
	strh r5, [r4, #0x00]
	str r1, [r4, #0x04]
_08082AF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082AFC: .4byte 0x07FFFFFF
