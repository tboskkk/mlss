	push {r4, lr}
	adds r4, r1, #0x0
	ldr r1, _0813FB98 @ =0x0000033E
	adds r3, r4, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x11
	negs r1, r1
	ands r1, r2
	strb r1, [r3, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	ldrb r2, [r2, #0x0A]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r2, r2, #0x02
	lsls r1, r1, #0x02
	adds r1, r1, r0
	adds r2, r2, r1
	ldr r0, [r2, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0813FB9C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	b _0813FBD2
	.byte 0x00, 0x00
_0813FB98: .4byte 0x0000033E
_0813FB9C:
	ldr r0, _0813FBD8 @ =0x0000020F
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r1, _0813FBDC @ =0x0000020D
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, _0813FBE0 @ =0x08142A6D
	str r0, [r1, #0x00]
	movs r0, #0xD2
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813FBE4 @ =0x0813FBE9
	str r0, [r1, #0x00]
_0813FBD2:
	pop {r4}
	pop {r0}
	bx r0
_0813FBD8: .4byte 0x0000020F
_0813FBDC: .4byte 0x0000020D
_0813FBE0: .4byte nullsub_8
_0813FBE4: .4byte sub_813FBE8
