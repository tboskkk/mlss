	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0805B904 @ =0x0000056C
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B9BE
	ldr r4, _0805B908 @ =0x00000572
	adds r1, r5, r4
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0805B9B2
	ldrb r0, [r2, #0x00]
	movs r2, #0x03
	ands r2, r0
	cmp r2, #0x01
	bne _0805B94E
	ldr r0, _0805B90C @ =0x0000056D
	adds r4, r5, r0
	ldrb r0, [r4, #0x00]
	ands r2, r0
	cmp r2, #0x00
	beq _0805B91A
	ldr r2, _0805B910 @ =0x0000056E
	adds r1, r5, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0805B914
	adds r0, #0x01
	strb r0, [r1, #0x00]
	b _0805B938
_0805B904: .4byte 0x0000056C
_0805B908: .4byte 0x00000572
_0805B90C: .4byte 0x0000056D
_0805B910: .4byte 0x0000056E
_0805B914:
	subs r0, #0x01
	strb r0, [r1, #0x00]
	b _0805B97C
_0805B91A:
	ldr r0, _0805B940 @ =0x0000056E
	adds r3, r5, r0
	ldrb r2, [r3, #0x00]
	ldr r1, _0805B944 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0805B948
	subs r0, r2, #0x1
	strb r0, [r3, #0x00]
_0805B938:
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	b _0805B97C
_0805B940: .4byte 0x0000056E
_0805B944: .4byte 0x00000574
_0805B948:
	adds r0, r2, #0x1
	strb r0, [r3, #0x00]
	b _0805B97C
_0805B94E:
	cmp r2, #0x00
	bne _0805B97C
	ldr r4, _0805B970 @ =0x0000056E
	adds r2, r5, r4
	ldrb r3, [r2, #0x00]
	ldr r1, _0805B974 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0805B978
	movs r0, #0x00
	b _0805B97A
_0805B970: .4byte 0x0000056E
_0805B974: .4byte 0x00000574
_0805B978:
	adds r0, r3, #0x1
_0805B97A:
	strb r0, [r2, #0x00]
_0805B97C:
	ldr r2, _0805B9C4 @ =0x0000056E
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	ldr r4, _0805B9C8 @ =0x00000574
	adds r2, r5, r4
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x18
	subs r4, #0x02
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	ldr r4, _0805B9CC @ =0x02000052
	ldrb r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r0, r0, r1
	strh r0, [r4, #0x00]
_0805B9B2:
	ldr r0, _0805B9D0 @ =0x02000050
	movs r2, #0xAE
	lsls r2, r2, #0x03
	adds r1, r5, r2
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
_0805B9BE:
	pop {r4, r5}
	pop {r0}
	bx r0
_0805B9C4: .4byte 0x0000056E
_0805B9C8: .4byte 0x00000574
_0805B9CC: .4byte 0x02000052
_0805B9D0: .4byte 0x02000050
