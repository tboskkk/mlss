	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r0, _0809EC5C @ =0x00004018
	cmp r1, r0
	bne _0809EC60
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x18
	b _0809ED1A
	.byte 0x00, 0x00
_0809EC5C: .4byte 0x00004018
_0809EC60:
	ldr r0, _0809EC7C @ =0x0000401A
	cmp r1, r0
	bne _0809EC80
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x13
	b _0809ED1A
_0809EC7C: .4byte 0x0000401A
_0809EC80:
	ldr r0, _0809EC9C @ =0x0000401E
	cmp r1, r0
	bne _0809ECA0
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x03
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x13
	b _0809ED1A
_0809EC9C: .4byte 0x0000401E
_0809ECA0:
	ldr r0, _0809ECBC @ =0x0000401D
	cmp r1, r0
	bne _0809ECC0
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x02
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1A
	b _0809ED1A
_0809ECBC: .4byte 0x0000401D
_0809ECC0:
	ldr r0, _0809ECDC @ =0x0000401C
	cmp r1, r0
	bne _0809ECE0
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x04
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x16
	b _0809ED1A
_0809ECDC: .4byte 0x0000401C
_0809ECE0:
	ldr r0, _0809ECFC @ =0x00004019
	cmp r1, r0
	bne _0809ED00
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x03
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x16
	b _0809ED1A
_0809ECFC: .4byte 0x00004019
_0809ED00:
	ldr r0, _0809ED44 @ =0x0000401B
	cmp r1, r0
	bne _0809ED1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x05
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x15
_0809ED1A:
	str r0, [r1, #0x00]
_0809ED1C:
	adds r0, r4, #0x0
	movs r1, #0x03
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
	ldr r0, _0809ED48 @ =0x0809ED4D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809ED44: .4byte 0x0000401B
_0809ED48: .4byte sub_809ED4C
