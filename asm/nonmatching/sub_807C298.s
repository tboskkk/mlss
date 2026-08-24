	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807C2A2
	b _0807C3D4
_0807C2A2:
	adds r4, r5, #0x0
	adds r4, #0x76
	ldrb r1, [r4, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_807F47C
	ldr r1, [r5, #0x68]
	adds r6, r4, #0x0
	cmp r1, #0x00
	beq _0807C2CA
	ldr r0, _0807C2FC @ =0x0807C299
	cmp r1, r0
	beq _0807C2CA
	adds r0, r5, #0x0
	bl _call_via_r1
_0807C2CA:
	ldr r0, [r5, #0x28]
	cmp r0, #0x00
	beq _0807C31E
	adds r0, #0x08
	cmp r5, r0
	bne _0807C300
	ldr r2, [r5, #0x30]
	cmp r2, #0x00
	beq _0807C31E
_0807C2DC:
	ldr r4, [r2, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807C2F2
	adds r0, r2, #0x0
	bl sub_807C298
_0807C2F2:
	adds r2, r4, #0x0
	cmp r2, #0x00
	bne _0807C2DC
	b _0807C31E
	.byte 0x00, 0x00
_0807C2FC: .4byte sub_807C298
_0807C300:
	adds r1, r0, #0x0
	b _0807C30C
_0807C304:
	ldr r0, [r5, #0x00]
	str r0, [r2, #0x00]
	b _0807C3B6
_0807C30A:
	ldr r1, [r1, #0x30]
_0807C30C:
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	beq _0807C31E
	cmp r5, r0
	bne _0807C30A
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	movs r0, #0x00
	str r0, [r5, #0x30]
_0807C31E:
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _0807C32C
_0807C324:
	bl sub_807FA94
	cmp r0, #0x00
	bne _0807C324
_0807C32C:
	ldr r1, [r5, #0x04]
	cmp r1, #0x00
	beq _0807C338
	movs r0, #0x00
	str r0, [r1, #0x04]
	str r0, [r5, #0x04]
_0807C338:
	ldr r4, [r5, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x20
	movs r3, #0x00
	movs r0, #0x10
	strb r0, [r1, #0x00]
	adds r0, #0xF0
	strh r0, [r4, #0x04]
	strh r0, [r4, #0x06]
	strh r0, [r4, #0x08]
	strh r0, [r4, #0x0A]
	strh r3, [r4, #0x0C]
	ldrb r1, [r4, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x12]
	ands r2, r0
	strb r2, [r4, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	adds r0, r4, #0x0
	bl sub_807BDDC
	adds r0, r4, #0x0
	bl sub_80842D8
	movs r2, #0x00
	ldr r1, _0807C3A8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x78]
_0807C39A:
	cmp r0, #0x00
	beq _0807C3B6
	cmp r0, r5
	beq _0807C3AC
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	b _0807C39A
_0807C3A8: .4byte 0x03000FD8
_0807C3AC:
	cmp r2, #0x00
	bne _0807C304
	ldr r1, [r1, #0x00]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x78]
_0807C3B6:
	ldr r0, _0807C3DC @ =0xFFFFF000
	adds r1, r5, r0
	ldr r0, _0807C3E0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	ldr r0, _0807C3E4 @ =0x00000CFF
	cmp r1, r0
	bhi _0807C3D0
	ldrb r1, [r6, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_0807C3D0:
	movs r0, #0x00
	str r0, [r5, #0x54]
_0807C3D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807C3DC: .4byte 0xFFFFF000
_0807C3E0: .4byte 0x03000FDC
_0807C3E4: .4byte 0x00000CFF
