	.syntax unified
	.text

	thumb_func_start sub_815CF80
sub_815CF80:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x010]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _0815CFAA
	cmp r0, #0x04
	beq _0815CFC2
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x01
	beq _0815CFD0
	cmp r1, #0x01
	bgt _0815CFA8
	b _0815D124
_0815CFA8:
	b _0815CFCA
_0815CFAA:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _0815D124
_0815CFC2:
	adds r0, r4, #0x0
	bl sub_815FAFC
	b _0815D124
_0815CFCA:
	cmp r1, #0x02
	beq _0815D06C
	b _0815D124
_0815CFD0:
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r1, _0815D018 @ =0x08198584
	ldrh r5, [r4, #0x1C]
	ldrb r0, [r4, #0x1C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815CFEE
	adds r0, #0x3F
_0815CFEE:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	strh r0, [r4, #0x14]
	adds r1, r5, #0x1
	movs r2, #0xFF
	ands r1, r2
	strh r1, [r4, #0x1C]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0815D01C
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	b _0815D02A
	.byte 0x00, 0x00
_0815D018: .4byte 0x08198584
_0815D01C:
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
_0815D02A:
	strb r1, [r0, #0x11]
	ldr r0, _0815D05C @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r2, _0815D060 @ =0x00001C98
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	ldr r1, _0815D064 @ =0xFFFFD800
	cmp r0, r1
	ble _0815D124
	adds r0, r4, #0x0
	movs r1, #0x35
	bl sub_815FA70
	movs r0, #0x00
	strh r0, [r4, #0x1C]
	strh r0, [r4, #0x20]
	ldr r1, _0815D068 @ =0x0000FC18
	strh r1, [r4, #0x18]
	strh r0, [r4, #0x14]
	movs r0, #0x02
	strb r0, [r6, #0x00]
	b _0815D124
_0815D05C: .4byte 0x03001020
_0815D060: .4byte 0x00001C98
_0815D064: .4byte 0xFFFFD800
_0815D068: .4byte 0x0000FC18
_0815D06C:
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	ldrh r1, [r4, #0x18]
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	movs r0, #0x14
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r2
	str r0, [r4, #0x04]
	movs r0, #0x18
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	ble _0815D0EA
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x0D
	negs r1, r1
	ands r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x3F
	ands r1, r2
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x1F]
_0815D0EA:
	ldr r0, _0815D10C @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r1, _0815D110 @ =0x00001C98
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	ble _0815D114
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	b _0815D122
_0815D10C: .4byte 0x03001020
_0815D110: .4byte 0x00001C98
_0815D114:
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
_0815D122:
	strb r1, [r0, #0x11]
_0815D124:
	movs r0, #0x00
	pop {r4, r5, r6}
	pop {r1}
	bx r1
