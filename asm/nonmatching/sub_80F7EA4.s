	push {lr}
	ldm r2!, {r0}
	subs r0, #0x06
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080F7EC4
	ldr r0, _080F7ECC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xD4
	lsls r3, r3, #0x02
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	strb r1, [r0, #0x00]
_080F7EC4:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F7ECC: .4byte 0x03000FD8
