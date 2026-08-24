	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080693B4
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_080693B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
