	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	bl sub_80E3CF4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _080FCC4A
	ldr r4, _080FCC50 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_80844C4
	movs r0, #0x00
	bl sub_8105790
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC54 @ =0x0000034A
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0xD3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC58 @ =0x0000034E
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x80
	strb r2, [r0, #0x00]
	ldr r0, [r4, #0x00]
	subs r1, #0x05
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC5C @ =0x0000034D
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC60 @ =0x0000034F
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC64 @ =0x00000351
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	ldr r3, _080FCC68 @ =0x03001034
	ldr r0, _080FCC6C @ =0x33333333
	ldr r1, _080FCC70 @ =0x06017600
	movs r2, #0x80
	lsls r2, r2, #0x02
	ldr r3, [r3, #0x00]
	bl _call_via_r3
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0A]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0A]
	movs r0, #0x01
	bl sub_80F75D8
	ldr r0, [r4, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r5, [r0, #0x0A]
	ldr r0, _080FCC74 @ =0x080FCC79
	str r0, [r6, #0x04]
_080FCC4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FCC50: .4byte 0x03000FD8
_080FCC54: .4byte 0x0000034A
_080FCC58: .4byte 0x0000034E
_080FCC5C: .4byte 0x0000034D
_080FCC60: .4byte 0x0000034F
_080FCC64: .4byte 0x00000351
_080FCC68: .4byte 0x03001034
_080FCC6C: .4byte 0x33333333
_080FCC70: .4byte 0x06017600
_080FCC74: .4byte sub_80FCC78
