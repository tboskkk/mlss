	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0805FD74
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x10
	b _0805FD7C
_0805FD74:
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x13
_0805FD7C:
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bge _0805FDAE
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FDB4 @ =0x0805FF31
	str r0, [r4, #0x4C]
_0805FDAE:
	pop {r4}
	pop {r0}
	bx r0
_0805FDB4: .4byte sub_805FF30
