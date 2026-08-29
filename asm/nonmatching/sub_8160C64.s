	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	movs r6, #0x00
	b _08160C82
_08160C6C:
	ldr r1, _08160C94 @ =0x0000080C
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	lsls r4, r6, #0x02
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_81606C8
	str r0, [r4, #0x00]
	adds r6, #0x01
_08160C82:
	movs r1, #0x82
	lsls r1, r1, #0x04
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r6, r0
	blt _08160C6C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08160C94: .4byte 0x0000080C
