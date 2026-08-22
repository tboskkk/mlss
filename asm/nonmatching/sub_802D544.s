	.syntax unified
	.text

	thumb_func_start sub_802D544
sub_802D544:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	mov r8, r1
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802D560
	b _0802D8D4
_0802D560:
	ldr r2, _0802D630 @ =0x00000291
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0802D570
	b _0802D8D4
_0802D570:
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r3, [r0, #0x00]
	ldr r4, _0802D634 @ =0x000002B5
	adds r0, r3, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802D588
	b _0802D8D4
_0802D588:
	mov r6, r8
	cmp r6, #0x00
	bne _0802D590
	b _0802D8D4
_0802D590:
	adds r2, r5, #0x0
	adds r2, #0xFB
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _0802D5B6
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x00
	bne _0802D5B6
	movs r2, #0x04
	ldsh r0, [r3, r2]
	cmp r0, #0x04
	ble _0802D5C8
_0802D5B6:
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	movs r4, #0x04
	ldsh r0, [r0, r4]
	cmp r0, #0x01
	ble _0802D5C8
	b _0802D8D4
_0802D5C8:
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_8025D24
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802D5D8
	b _0802D8D4
_0802D5D8:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802D644
	ldr r0, _0802D638 @ =0x0300034C
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802D63C
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	movs r3, #0x83
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0802D63C
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x16]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802D63C
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_802C588
	b _0802D8D4
	.byte 0x00, 0x00
_0802D630: .4byte 0x00000291
_0802D634: .4byte 0x000002B5
_0802D638: .4byte 0x0300034C
_0802D63C:
	adds r0, r5, #0x0
	bl sub_8029878
	b _0802D8D4
_0802D644:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x16]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802D664
	ldrb r0, [r2, #0x02]
	cmp r0, #0x00
	bne _0802D72E
_0802D664:
	ldr r3, _0802D6AC @ =0x00000246
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	cmp r1, #0x00
	beq _0802D67E
	cmp r1, #0x08
	beq _0802D67E
	cmp r1, #0x0C
	beq _0802D67E
	cmp r1, #0x10
	bne _0802D6B4
_0802D67E:
	ldrb r2, [r6, #0x00]
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _0802D6B4
	movs r4, #0x81
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldr r0, [r0, #0x00]
	lsrs r2, r2, #0x03
	adds r0, #0x20
	strb r2, [r0, #0x00]
	ldr r0, _0802D6B0 @ =0x00000239
	adds r1, r1, r0
	strb r2, [r1, #0x00]
	ldr r0, [r3, #0x00]
	bl sub_8049224
	b _0802D8D4
_0802D6AC: .4byte 0x00000246
_0802D6B0: .4byte 0x00000239
_0802D6B4:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r2, [r4, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsrs r1, r1, #0x03
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r6, _0802D718 @ =0x00000239
	adds r2, r2, r6
	strb r1, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x99
	lsls r2, r2, #0x02
	adds r1, r0, r2
	movs r3, #0x00
	ldsh r1, [r1, r3]
	adds r6, #0x2D
	adds r2, r0, r6
	movs r3, #0x00
	ldsh r2, [r2, r3]
	subs r6, #0x28
	adds r3, r0, r6
	movs r6, #0x00
	ldsh r3, [r3, r6]
	bl sub_80401F0
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	strh r0, [r1, #0x04]
	ldr r4, [r4, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0802D720
	ldr r1, _0802D71C @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	movs r2, #0x2B
	cmp r0, #0x00
	beq _0802D722
	movs r2, #0x2F
	b _0802D722
_0802D718: .4byte 0x00000239
_0802D71C: .4byte 0x0000035B
_0802D720:
	movs r2, #0x2B
_0802D722:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	b _0802D8D4
_0802D72E:
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	cmp r0, #0x01
	bls _0802D73E
	b _0802D8D4
_0802D73E:
	ldrb r0, [r2, #0x02]
	cmp r0, #0x07
	bls _0802D746
	b _0802D8D4
_0802D746:
	lsls r0, r0, #0x02
	ldr r1, _0802D750 @ =lbl_0802D754
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0802D750: .4byte lbl_0802D754
lbl_0802D754:
	.4byte _0802D8D4
	.4byte _0802D774
	.4byte _0802D7C4
	.4byte _0802D86C
	.4byte _0802D81C
	.4byte _0802D8D4
	.4byte _0802D8D4
	.4byte _0802D8B0
_0802D774:
	movs r4, #129 @ 0x81
	lsls r4, r4, #2
	adds r3, r5, r4
	ldr r2, [r3, #0]
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldrb r1, [r6, #0]
	lsrs r1, r1, #3
	adds r0, #32
	strb r1, [r0, #0]
	adds r4, #53 @ 0x35
	adds r2, r2, r4
	strb r1, [r2, #0]
	ldr r1, [pc, #40] @ (0x802d7bc)
	adds r0, r5, r1
	ldrb r1, [r0, #0]
	movs r0, #28
	ands r0, r1
	cmp r0, #12
	bne.n _0802D814
	ldr r0, [r3, #0]
	ldrb r1, [r6, #0]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_8049370
	movs r2, #128 @ 0x80
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r1, [r0, #0]
	ldr r3, [pc, #8] @ (0x802d7c0)
	adds r1, r1, r3
	b.n _0802D802
	lsls r6, r0, #9
	movs r0, r0
	lsls r1, r2, #13
	movs r0, r0
_0802D7C4:
	movs r4, #129 @ 0x81
	lsls r4, r4, #2
	adds r3, r5, r4
	ldr r2, [r3, #0]
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldrb r1, [r6, #0]
	lsrs r1, r1, #3
	adds r0, #32
	strb r1, [r0, #0]
	adds r4, #53 @ 0x35
	adds r2, r2, r4
	strb r1, [r2, #0]
	ldr r6, [pc, #40] @ (0x802d80c)
	adds r0, r5, r6
	ldrb r1, [r0, #0]
	movs r0, #28
	ands r0, r1
	cmp r0, #12
	bne.n _0802D814
	ldr r0, [r3, #0]
	bl sub_8049430
	movs r1, #128 @ 0x80
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0, #0]
	ldr r2, [pc, #16] @ (0x802d810)
	adds r1, r1, r2
_0802D802:
	ldrb r0, [r1, #0]
	movs r2, #64 @ 0x40
	orrs r0, r2
	strb r0, [r1, #0]
	b.n _0802D8D4
	lsls r6, r0, #9
	movs r0, r0
	lsls r1, r2, #13
	movs r0, r0
_0802D814:
	adds r0, r5, #0
	bl sub_802D92C
	b.n _0802D8D4
_0802D81C:
	movs r3, #129 @ 0x81
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r2, [r0, #0]
	movs r4, #165 @ 0xa5
	lsls r4, r4, #2
	adds r0, r2, r4
	ldr r0, [r0, #0]
	ldrb r1, [r6, #0]
	lsrs r1, r1, #3
	adds r0, #32
	strb r1, [r0, #0]
	ldr r6, [pc, #24] @ (0x802d850)
	adds r2, r2, r6
	strb r1, [r2, #0]
	ldr r1, [pc, #24] @ (0x802d854)
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	movs r1, #28
	ands r1, r0
	cmp r1, #4
	bne.n _0802D858
	adds r0, r5, #0
	bl sub_8031234
	b.n _0802D8D4
	lsls r1, r7, #8
	movs r0, r0
	lsls r6, r0, #9
	movs r0, r0
_0802D858:
	cmp r1, #8
	bne.n _0802D864
	adds r0, r5, #0
	bl sub_8035B98
	b.n _0802D8D4
_0802D864:
	adds r0, r5, #0
	bl sub_8030484
	b.n _0802D8D4
_0802D86C:
	movs r2, #129 @ 0x81
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r2, [r0, #0]
	movs r3, #165 @ 0xa5
	lsls r3, r3, #2
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r1, [r6, #0]
	lsrs r1, r1, #3
	adds r0, #32
	strb r1, [r0, #0]
	ldr r4, [pc, #24] @ (0x802d8a0)
	adds r2, r2, r4
	strb r1, [r2, #0]
	ldr r6, [pc, #24] @ (0x802d8a4)
	adds r0, r5, r6
	ldrb r1, [r0, #0]
	movs r0, #28
	ands r0, r1
	cmp r0, #12
	bne.n _0802D8A8
	adds r0, r5, #0
	bl sub_8033E30
	b.n _0802D8D4
	lsls r1, r7, #8
	movs r0, r0
	lsls r6, r0, #9
	movs r0, r0
_0802D8A8:
	adds r0, r5, #0
	bl sub_8032514
	b.n _0802D8D4
_0802D8B0:
	movs r1, #129 @ 0x81
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r2, [r0, #0]
	movs r3, #165 @ 0xa5
	lsls r3, r3, #2
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r1, [r6, #0]
	lsrs r1, r1, #3
	adds r0, #32
	strb r1, [r0, #0]
	ldr r4, [pc, #92] @ (0x802d928)
	adds r2, r2, r4
	strb r1, [r2, #0]
	adds r0, r5, #0
	bl sub_8034A5C
_0802D8D4:
	movs r6, #0x81
	lsls r6, r6, #0x02
	adds r0, r5, r6
	ldr r6, [r0, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x1B
	lsrs r2, r0, #0x1F
	movs r7, #0x10
	adds r0, r7, #0x0
	ands r0, r1
	movs r3, #0x00
	cmp r0, #0x00
	beq _0802D8F6
	mov r3, r8
_0802D8F6:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_802DDB4
	ldrb r1, [r4, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802D91C
	adds r0, r5, #0x0
	movs r1, #0x03
	bl sub_8025D24
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802D91C
	adds r0, r5, #0x0
	bl sub_8029878
_0802D91C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x39, 0x02, 0x00, 0x00
