	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x7F
	ands r4, r0
	ldr r0, _08109F40 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x07]
	movs r0, #0xE0
	ands r0, r1
	cmp r0, #0x00
	bne _08109F28
	lsls r1, r4, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109EBA
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	bne _08109F28
_08109EBA:
	ldr r0, [r2, #0x7C]
	ldr r0, [r0, #0x48]
	cmp r0, #0x00
	bne _08109F28
	ldr r0, _08109F44 @ =0x0300034C
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08109EF2
	cmp r5, #0x01
	beq _08109EF2
	subs r0, r5, #0x1
	cmp r4, #0x00
	ble _08109EDC
	subs r0, r4, #0x1
_08109EDC:
	adds r4, r0, #0x0
	ldr r1, _08109F48 @ =0x00000316
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	subs r1, #0x01
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x78
	bl play_sfx_80195B4
_08109EF2:
	ldr r0, _08109F44 @ =0x0300034C
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08109F28
	cmp r5, #0x01
	beq _08109F28
	subs r0, r5, #0x1
	movs r1, #0x00
	cmp r4, r0
	bge _08109F0E
	adds r1, r4, #0x1
_08109F0E:
	adds r4, r1, #0x0
	ldr r0, _08109F40 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, _08109F48 @ =0x00000316
	adds r1, r1, r3
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x78
	bl play_sfx_80195B4
_08109F28:
	ldr r0, _08109F40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r4, [r0, #0x10]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08109F40: .4byte 0x03000FD8
_08109F44: .4byte 0x0300034C
_08109F48: .4byte 0x00000316
