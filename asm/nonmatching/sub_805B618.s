	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _0805B6AC @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805B6A6
	ldr r1, _0805B6B0 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r4, r0, r1
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0805B646
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_805B6C4
_0805B646:
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _0805B654
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_805B6C4
_0805B654:
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _0805B662
	adds r0, r5, #0x0
	movs r1, #0x02
	bl sub_805B6C4
_0805B662:
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0805B66E
	adds r0, r5, #0x0
	bl sub_805C824
_0805B66E:
	ldr r1, _0805B6B4 @ =0x00000579
	adds r0, r5, r1
	movs r6, #0x01
	strb r6, [r0, #0x00]
	ldrh r2, [r4, #0x10]
	ldr r1, _0805B6B8 @ =0x00007FFF
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, r1
	beq _0805B6A0
	lsls r2, r2, #0x11
	ldr r0, _0805B6BC @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	lsrs r2, r2, #0x01
	movs r1, #0xE4
	lsls r1, r1, #0x13
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80E9958
_0805B6A0:
	ldr r1, _0805B6C0 @ =0x00000599
	adds r0, r5, r1
	strb r6, [r0, #0x00]
_0805B6A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805B6AC: .4byte 0x03000DD0
_0805B6B0: .4byte 0x083B7108
_0805B6B4: .4byte 0x00000579
_0805B6B8: .4byte 0x00007FFF
_0805B6BC: .4byte 0x03000FC0
_0805B6C0: .4byte 0x00000599
