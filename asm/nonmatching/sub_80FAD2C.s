	push {lr}
	ldr r3, [r2, #0x04]
	movs r1, #0xA8
	muls r1, r3
	ldr r0, [r0, #0x24]
	adds r0, r0, r1
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080FAD44
	cmp r2, #0x01
	beq _080FAD52
	b _080FAD60
_080FAD44:
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	b _080FAD5E
_080FAD52:
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _080FAD68 @ =0x0000FFFB
	ands r0, r1
_080FAD5E:
	strh r0, [r2, #0x00]
_080FAD60:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FAD68: .4byte 0x0000FFFB
