	.syntax unified
	.text

	thumb_func_start sub_80465D8
sub_80465D8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080465EE
	b _08046866
_080465EE:
	ldr r2, _0804660C @ =0x000002B5
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	subs r0, #0x01
	cmp r0, #0x04
	bls _08046600
	b _08046842
_08046600:
	lsls r0, r0, #0x02
	ldr r1, _08046610 @ =lbl_08046614
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0804660C: .4byte 0x000002B5
_08046610: .4byte lbl_08046614
lbl_08046614:
	.4byte _08046628
	.4byte _0804682A
	.4byte _080467F8
	.4byte _0804682A
	.4byte _080467F8
_08046628:
	ldr r3, [pc, #352] @ (0x804678c)
	adds r0, r4, r3
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	movs r1, #1
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	beq.n _0804667E
	movs r5, #179 @ 0xb3
	lsls r5, r5, #2
	adds r0, r4, r5
	movs r6, #175 @ 0xaf
	lsls r6, r6, #2
	adds r1, r4, r6
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r4, #12]
	cmp r0, r1
	blt.n _0804665A
	cmp r0, r2
	ble.n _0804665E
	cmp r0, r1
	bgt.n _0804667E
_0804665A:
	cmp r0, r2
	blt.n _0804667E
_0804665E:
	movs r1, #179 @ 0xb3
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0, #0]
	str r0, [r4, #12]
	ldr r2, [pc, #288] @ (0x804678c)
	adds r3, r4, r2
	ldrb r2, [r3, #0]
	lsls r1, r2, #29
	lsrs r1, r1, #29
	movs r0, #1
	orrs r1, r0
	subs r0, #9
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
_0804667E:
	ldr r3, [pc, #268] @ (0x804678c)
	adds r0, r4, r3
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne.n _080466D2
	movs r5, #180 @ 0xb4
	lsls r5, r5, #2
	adds r0, r4, r5
	movs r6, #176 @ 0xb0
	lsls r6, r6, #2
	adds r1, r4, r6
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r4, #16]
	cmp r0, r1
	blt.n _080466AE
	cmp r0, r2
	ble.n _080466B2
	cmp r0, r1
	bgt.n _080466D2
_080466AE:
	cmp r0, r2
	blt.n _080466D2
_080466B2:
	movs r1, #180 @ 0xb4
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0, #0]
	str r0, [r4, #16]
	ldr r2, [pc, #204] @ (0x804678c)
	adds r3, r4, r2
	ldrb r2, [r3, #0]
	lsls r1, r2, #29
	lsrs r1, r1, #29
	movs r0, #2
	orrs r1, r0
	subs r0, #10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
_080466D2:
	ldr r3, [pc, #184] @ (0x804678c)
	adds r0, r4, r3
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne.n _0804674E
	ldr r5, [pc, #168] @ (0x8046790)
	adds r0, r4, r5
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	bne.n _0804674E
	movs r6, #151 @ 0x97
	lsls r6, r6, #2
	adds r0, r4, r6
	ldr r1, [r0, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne.n _0804674E
	movs r1, #181 @ 0xb5
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #177 @ 0xb1
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r2, [r0, #0]
	ldr r1, [r1, #0]
	ldr r5, [r4, #20]
	ldr r3, [r4, #24]
	cmp r2, r1
	blt.n _08046724
	adds r0, r5, r3
	cmp r2, r0
	ble.n _0804672A
	cmp r2, r1
	bgt.n _0804674E
_08046724:
	adds r0, r5, r3
	cmp r2, r0
	blt.n _0804674E
_0804672A:
	movs r3, #181 @ 0xb5
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0, #0]
	str r0, [r4, #24]
	movs r0, #0
	str r0, [r4, #20]
	ldr r5, [pc, #80] @ (0x804678c)
	adds r3, r4, r5
	ldrb r2, [r3, #0]
	lsls r1, r2, #29
	lsrs r1, r1, #29
	movs r0, #4
	orrs r1, r0
	subs r0, #12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
_0804674E:
	movs r6, #182 @ 0xb6
	lsls r6, r6, #2
	adds r0, r4, r6
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge.n _0804675E
	negs r2, r2
_0804675E:
	ldr r3, [pc, #52] @ (0x8046794)
	adds r0, r4, r3
	movs r5, #0
	ldrsh r1, [r0, r5]
	cmp r1, #0
	bge.n _0804676C
	negs r1, r1
_0804676C:
	movs r6, #183 @ 0xb7
	lsls r6, r6, #2
	adds r0, r4, r6
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge.n _0804677C
	negs r0, r0
_0804677C:
	cmp r2, r1
	blt.n _08046798
	movs r3, #4
	cmp r2, r0
	blt.n _080467A0
	movs r3, #1
	b.n _080467A0
	movs r0, r0
	lsls r7, r6, #10
	movs r0, r0
	lsls r5, r1, #8
	movs r0, r0
	lsls r2, r3, #11
	movs r0, r0
_08046798:
	movs r3, #4
	cmp r1, r0
	blt.n _080467A0
	movs r3, #2
_080467A0:
	ldr r5, [pc, #76] @ (0x80467f0)
	adds r0, r4, r5
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	ands r0, r3
	cmp r0, #0
	beq.n _08046842
	movs r6, #179 @ 0xb3
	lsls r6, r6, #2
	adds r0, r4, r6
	ldr r0, [r0, #0]
	str r0, [r4, #12]
	movs r1, #180 @ 0xb4
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0, #0]
	str r0, [r4, #16]
	ldr r2, [pc, #44] @ (0x80467f4)
	adds r0, r4, r2
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	bne.n _08046822
	movs r3, #151 @ 0x97
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r1, [r0, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne.n _08046822
	adds r5, #29
	adds r0, r4, r5
	ldr r0, [r0, #0]
	ldr r1, [r4, #20]
	subs r0, r0, r1
	str r0, [r4, #24]
	b.n _08046822
	lsls r7, r6, #10
	movs r0, r0
	lsls r5, r1, #8
	movs r0, r0
_080467F8:
	movs r6, #188 @ 0xbc
	lsls r6, r6, #2
	adds r0, r4, r6
	ldr r1, [r0, #0]
	cmp r1, #0
	ble.n _08046812
	movs r2, #189 @ 0xbd
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0, #0]
	cmp r0, r1
	blt.n _08046842
	b.n _08046822
_08046812:
	cmp r1, #0
	bge.n _08046842
	movs r3, #189 @ 0xbd
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0, #0]
	cmp r0, r1
	bgt.n _08046842
_08046822:
	adds r0, r4, #0
	bl sub_8046980
	b.n _08046842
_0804682A:
	ldr r5, [pc, #316] @ (0x8046968)
	adds r0, r4, r5
	movs r6, #184 @ 0xb8
	lsls r6, r6, #2
	adds r1, r4, r6
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bcc.n _08046842
	adds r0, r4, #0
	bl sub_8046980
_08046842:
	ldr r1, _0804696C @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08046866
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08046866
	adds r0, r4, #0x0
	bl sub_8046A10
_08046866:
	ldr r3, _08046970 @ =0x0000020F
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08046962
	ldr r6, _0804696C @ =0x000002B5
	adds r5, r4, r6
	ldrb r3, [r5, #0x00]
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0x00
	beq _080468A2
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, _08046974 @ =0x00000302
	adds r1, r4, r2
	movs r6, #0x04
	ldsh r2, [r0, r6]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r2, r0
	bne _080468A2
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	strb r0, [r5, #0x00]
_080468A2:
	ldr r0, _0804696C @ =0x000002B5
	adds r5, r4, r0
	ldrb r3, [r5, #0x00]
	movs r0, #0xC0
	ands r0, r3
	cmp r0, #0x00
	beq _080468D0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r6, #0x06
	ldsh r2, [r0, r6]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r2, r0
	bne _080468D0
	movs r0, #0x3F
	ands r0, r3
	strb r0, [r5, #0x00]
_080468D0:
	ldr r0, _08046978 @ =0x000002B6
	adds r5, r4, r0
	ldrb r3, [r5, #0x00]
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	beq _080468FE
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, _08046974 @ =0x00000302
	adds r1, r4, r2
	movs r6, #0x08
	ldsh r2, [r0, r6]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r2, r0
	bne _080468FE
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	strb r0, [r5, #0x00]
_080468FE:
	ldr r0, _08046978 @ =0x000002B6
	adds r5, r4, r0
	ldrb r3, [r5, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	beq _0804692E
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r6, #0x0A
	ldsh r2, [r0, r6]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r2, r0
	bne _0804692E
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	strb r0, [r5, #0x00]
_0804692E:
	ldr r0, _08046978 @ =0x000002B6
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0x00
	beq _08046962
	ldr r1, _0804697C @ =0x00000322
	adds r0, r4, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r6, #0xCB
	lsls r6, r6, #0x02
	adds r0, r4, r6
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	movs r5, #0xCA
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08046962
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x00]
_08046962:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0xDE, 0x02, 0x00, 0x00
_0804696C: .4byte 0x000002B5
_08046970: .4byte 0x0000020F
_08046974: .4byte 0x00000302
_08046978: .4byte 0x000002B6
_0804697C: .4byte 0x00000322
