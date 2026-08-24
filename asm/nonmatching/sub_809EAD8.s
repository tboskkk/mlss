	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809EAF0
	adds r0, #0x07
_0809EAF0:
	asrs r0, r0, #0x03
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _0809EB50
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _0809EB3C @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	str r2, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0809EB44
	ldr r0, _0809EB40 @ =0x0809EB71
	str r0, [r1, #0x4C]
	adds r0, r1, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809EB4A
	.byte 0x00, 0x00
_0809EB3C: .4byte sub_8087540
_0809EB40: .4byte sub_809EB70
_0809EB44:
	adds r0, r1, #0x0
	bl sub_8086700
_0809EB4A:
	adds r0, r4, #0x0
	bl sub_807C298
_0809EB50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
