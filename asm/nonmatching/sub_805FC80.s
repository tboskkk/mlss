	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _0805FCC0
	adds r3, r4, #0x0
	adds r3, #0xAE
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FCBC @ =0x0805FE75
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0805FCC2
_0805FCBC: .4byte sub_805FE74
_0805FCC0:
	adds r0, r2, #0x0
_0805FCC2:
	pop {r4}
	pop {r1}
	bx r1
