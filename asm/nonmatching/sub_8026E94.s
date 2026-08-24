	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r2, #0xFA
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _08026F24 @ =0x00000291
	adds r6, r5, r0
	ldrb r1, [r6, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08026EE4
	ldr r1, _08026F28 @ =0x02000008
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r4, _08026F2C @ =0x03001034
	ldr r1, _08026F30 @ =0x0600C000
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	movs r2, #0x20
	bl _call_via_r3
	ldr r1, _08026F34 @ =0x0600C800
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldrb r1, [r6, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_08026EE4:
	ldr r0, _08026F38 @ =0x0839EC80
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x01]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x01]
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08026F70
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08026F60
	ldr r0, _08026F3C @ =0x0300034C
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0xF0
	bne _08026F40
	adds r0, r5, #0x0
	bl sub_802EF18
	b _08026F60
_08026F24: .4byte 0x00000291
_08026F28: .4byte 0x02000008
_08026F2C: .4byte 0x03001034
_08026F30: .4byte 0x0600C000
_08026F34: .4byte 0x0600C800
_08026F38: .4byte 0x0839EC80
_08026F3C: .4byte 0x0300034C
_08026F40:
	ldr r0, _0802701C @ =0x00000246
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x14
	bne _08026F60
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8029A0C
_08026F60:
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08026F70:
	ldr r2, _08027020 @ =0x0000020A
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x01
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _08026F9A
	cmp r1, #0x00
	bne _08026FA4
	ldr r0, _08027024 @ =0x0300034C
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x33
	ands r0, r1
	cmp r0, #0x00
	bne _08026FA4
_08026F9A:
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _08027028 @ =0x0000FFC8
	strh r0, [r1, #0x00]
_08026FA4:
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08026FC6
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xF8
	ldrb r1, [r2, #0x00]
	subs r0, #0x04
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
_08026FC6:
	adds r4, r5, #0x0
	adds r4, #0xFC
	ldrb r1, [r4, #0x00]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08026FF2
	movs r1, #0xFD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x00
	movs r2, #0x08
	bl sub_80193B4
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_08026FF2:
	ldr r4, _0802702C @ =0x03000D44
	ldr r3, [r4, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	ldrb r2, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _08027010
	ldrh r1, [r3, #0x20]
	lsls r2, r2, #0x1A
	lsrs r2, r2, #0x1C
	adds r0, r3, #0x0
	bl sub_801BC40
_08027010:
	ldr r0, [r4, #0x00]
	bl process_enable
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802701C: .4byte 0x00000246
_08027020: .4byte 0x0000020A
_08027024: .4byte 0x0300034C
_08027028: .4byte 0x0000FFC8
_0802702C: .4byte 0x03000D44
