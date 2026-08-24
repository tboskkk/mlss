	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r3, [r5, #0x20]
	ldr r0, [r3, #0x14]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	ldr r1, _0816AE94 @ =0xFFFF8800
	adds r4, r0, r1
	ldr r0, [r3, #0x1C]
	adds r0, r0, r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	ldr r1, _0816AE98 @ =0xFFFFB000
	adds r2, r0, r1
	cmp r4, #0x00
	ble _0816AE9C
	adds r1, r4, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _0816AE9E
	adds r1, r0, #0x0
	b _0816AE9E
_0816AE94: .4byte 0xFFFF8800
_0816AE98: .4byte 0xFFFFB000
_0816AE9C:
	movs r1, #0x00
_0816AE9E:
	adds r4, r1, #0x0
	cmp r2, #0x00
	ble _0816AEB0
	movs r0, #0xC0
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _0816AEB2
	adds r2, r0, #0x0
	b _0816AEB2
_0816AEB0:
	movs r2, #0x00
_0816AEB2:
	ldr r0, [r5, #0x30]
	adds r1, r4, #0x0
	bl sub_8163264
	ldr r0, [r5, #0x1C]
	ldr r4, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x74
	cmp r4, #0x00
	beq _0816AF2C
_0816AEC6:
	ldr r0, [r5, #0x30]
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x1C]
	adds r0, r4, #0x0
	bl sub_8161C9C
	ldr r0, [r4, #0x00]
	cmp r0, #0x07
	bhi _0816AF26
	lsls r0, r0, #0x02
	ldr r1, _0816AEE4 @ =lbl_0816AEE8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0816AEE4: .4byte lbl_0816AEE8
lbl_0816AEE8:
	.4byte _0816AF08
	.4byte _0816AF08
	.4byte _0816AF14
	.4byte _0816AF1A
	.4byte _0816AF1A
	.4byte _0816AF20
	.4byte _0816AF20
	.4byte _0816AF0E
_0816AF08:
	ldr r1, [r4, #16]
	movs r0, #64 @ 0x40
	b.n _0816AF24
_0816AF0E:
	ldr r1, [r4, #16]
	movs r0, #32
	b.n _0816AF24
_0816AF14:
	ldr r1, [r4, #16]
	movs r0, #128 @ 0x80
	b.n _0816AF24
_0816AF1A:
	ldr r1, [r4, #16]
	movs r0, #128 @ 0x80
	b.n _0816AF24
_0816AF20:
	ldr r1, [r4, #16]
	movs r0, #16
_0816AF24:
	strh r0, [r1, #14]
_0816AF26:
	ldr r4, [r4, #0x08]
	cmp r4, #0x00
	bne _0816AEC6
_0816AF2C:
	movs r1, #0x92
	lsls r1, r1, #0x03
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0816AF46
	ldr r0, [r5, #0x6C]
	ldr r1, [r5, #0x20]
	ldr r1, [r1, #0x54]
	bl sub_81633C0
_0816AF46:
	ldr r0, _0816AF7C @ =0x0000048C
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	movs r1, #0xFF
	ands r0, r1
	str r0, [r2, #0x00]
	ldr r2, _0816AF80 @ =0x08198504
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0816AF66
	adds r0, #0x3F
_0816AF66:
	asrs r0, r0, #0x0A
	adds r0, #0x10
	ldr r1, _0816AF84 @ =0x03001030
	cmp r0, #0x01
	ble _0816AF88
	cmp r0, #0x1F
	ble _0816AF76
	movs r0, #0x1F
_0816AF76:
	lsls r0, r0, #0x02
	adds r0, r6, r0
	b _0816AF8C
_0816AF7C: .4byte 0x0000048C
_0816AF80: .4byte 0x08198504
_0816AF84: .4byte 0x03001030
_0816AF88:
	adds r0, r5, #0x0
	adds r0, #0x78
_0816AF8C:
	str r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
