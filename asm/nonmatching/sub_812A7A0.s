	push {r4, r5, r6, lr}
	ldr r5, [r0, #0x14]
	ldr r4, _0812A810 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	cmp r0, #0x04
	bls _0812A86E
	adds r0, r5, #0x0
	adds r0, #0x67
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812A7C4
	adds r0, r5, #0x0
	bl sub_8129C98
_0812A7C4:
	ldr r3, _0812A814 @ =0x00000888
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0812A86E
	adds r0, r5, #0x0
	adds r0, #0xB0
	ldrb r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0812A834
	adds r0, r5, #0x0
	adds r0, #0xB1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812A81C
	ldr r0, _0812A818 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x30
	ldrb r1, [r1, #0x00]
	adds r0, #0x6C
	ldrb r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAF
	ldrb r0, [r0, #0x00]
	movs r3, #0x02
	ands r3, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0x0
	bl sub_8122198
	b _0812A832
_0812A810: .4byte 0x0300034C
_0812A814: .4byte 0x00000888
_0812A818: .4byte 0x03000FF4
_0812A81C:
	adds r0, r5, #0x0
	adds r0, #0x84
	ldrb r1, [r0, #0x00]
	adds r0, #0x01
	ldrb r2, [r0, #0x00]
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	ands r3, r0
	adds r0, r6, #0x0
	bl sub_8122198
_0812A832:
	adds r6, r0, #0x0
_0812A834:
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _0812A874 @ =0x03000D48
	ldr r4, _0812A878 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _0812A87C @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _0812A880 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_8129B4C
	adds r6, r0, #0x0
	ldr r0, _0812A884 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r6, [r0, #0x00]
_0812A86E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0812A874: .4byte 0x03000D48
_0812A878: .4byte 0x0203FFB8
_0812A87C: .4byte 0x00000A14
_0812A880: .4byte 0x03000D4C
_0812A884: .4byte 0x0300034C
