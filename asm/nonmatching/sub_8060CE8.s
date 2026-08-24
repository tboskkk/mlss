	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08060D3E
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060D44 @ =0x08060D4D
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08060D06
	adds r0, #0xFF
_08060D06:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08060D16
	adds r0, #0xFF
_08060D16:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08060D26
	adds r0, #0xFF
_08060D26:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060D48 @ =0x08060DED
	str r0, [r4, #0x4C]
_08060D3E:
	pop {r4}
	pop {r0}
	bx r0
_08060D44: .4byte sub_8060D4C
_08060D48: .4byte sub_8060DEC
