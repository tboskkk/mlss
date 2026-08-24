	push {r4, r5, r6, lr}
	ldr r4, _0819B02C @ =0x03007FF0
	str r0, [r4, #0x00]
	bl sub_819A928
	ldr r0, [r4, #0x00]
	ldr r1, _0819B030 @ =0x00000492
	adds r2, r0, r1
	movs r3, #0x00
	movs r1, #0x00
	strh r1, [r2, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x03
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _0819B034 @ =0x00000494
	adds r0, r0, r1
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, #0x05
	adds r0, r0, r2
	strb r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _0819B038 @ =0x00000496
	adds r0, r0, r1
	strb r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, #0x0F
	adds r0, r0, r2
	movs r1, #0x4B
	str r1, [r0, #0x00]
	movs r3, #0x00
	movs r6, #0x00
_0819AFEE:
	ldr r0, [r4, #0x00]
	lsls r2, r3, #0x01
	movs r1, #0x93
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _0819B03C @ =0x0000FFFF
	strh r1, [r0, #0x00]
	movs r1, #0x00
	adds r5, r3, #0x1
	adds r2, r2, r3
	lsls r2, r2, #0x07
_0819B006:
	ldr r0, [r4, #0x00]
	adds r0, r0, r2
	strh r6, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, r0, r2
	strb r1, [r0, #0x12]
	ldr r0, [r4, #0x00]
	adds r0, r0, r2
	strb r3, [r0, #0x13]
	adds r2, #0x20
	adds r1, #0x01
	cmp r1, #0x0B
	ble _0819B006
	adds r3, r5, #0x0
	cmp r3, #0x02
	ble _0819AFEE
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0819B02C: .4byte 0x03007FF0
_0819B030: .4byte 0x00000492
_0819B034: .4byte 0x00000494
_0819B038: .4byte 0x00000496
_0819B03C: .4byte 0x0000FFFF
