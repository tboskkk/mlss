	.syntax unified
	.text

	thumb_func_start sub_815BD94
sub_815BD94:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	mov r9, r1
	ldr r0, [sp, #0x01C]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _0815BDCA
	cmp r0, #0x04
	beq _0815BDE2
	adds r5, r4, #0x0
	adds r5, #0x24
	ldrb r0, [r5, #0x00]
	mov r8, r5
	cmp r0, #0x00
	bne _0815BDC0
	b _0815C0B2
_0815BDC0:
	mov r6, r8
	adds r3, r0, #0x0
	cmp r3, #0x02
	bne _0815BE8C
	b _0815BDF8
_0815BDCA:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _0815C0B2
_0815BDE2:
	adds r0, r4, #0x0
	bl sub_815FAFC
	movs r0, #0xA0
	negs r0, r0
	str r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x05
	strb r0, [r1, #0x00]
	b _0815C0B2
_0815BDF8:
	ldrh r0, [r4, #0x38]
	adds r0, #0x04
	strh r0, [r4, #0x38]
	adds r0, r4, #0x0
	bl sub_815FA3C
	adds r3, r0, #0x0
	ldr r2, _0815BE48 @ =0x08198584
	ldrh r1, [r4, #0x38]
	movs r0, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815BE1E
	ldr r2, _0815BE4C @ =0x000001FF
	adds r0, r0, r2
_0815BE1E:
	asrs r0, r0, #0x09
	lsls r0, r0, #0x08
	strh r0, [r3, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0815BE5C
	ldr r0, _0815BE50 @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r3, _0815BE54 @ =0x00001C98
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x04]
	ldr r1, [r1, #0x04]
	subs r0, r0, r1
	ldr r1, _0815BE58 @ =0x0000B3FF
	cmp r0, r1
	ble _0815BE46
	b _0815C0B2
_0815BE46:
	b _0815BE74
_0815BE48: .4byte word_8198584 @ =0x08198584
_0815BE4C: .4byte 0x000001FF
_0815BE50: .4byte 0x03001020
_0815BE54: .4byte 0x00001C98
_0815BE58: .4byte 0x0000B3FF
_0815BE5C:
	ldr r0, _0815BE80 @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r1, _0815BE84 @ =0x00001C98
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x04]
	ldr r1, [r1, #0x04]
	subs r0, r0, r1
	ldr r1, _0815BE88 @ =0xFFFFD800
	cmp r0, r1
	blt _0815BE74
	b _0815C0B2
_0815BE74:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_815F2C4
	b _0815C0B2
_0815BE80: .4byte 0x03001020
_0815BE84: .4byte 0x00001C98
_0815BE88: .4byte 0xFFFFD800
_0815BE8C:
	cmp r3, #0x01
	bne _0815BEF4
	ldrh r0, [r4, #0x38]
	adds r0, #0x04
	strh r0, [r4, #0x38]
	ldr r2, _0815BEF0 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0815BEAA
	adds r0, #0x3F
_0815BEAA:
	asrs r0, r0, #0x07
	ldr r2, [r4, #0x08]
	adds r2, r2, r0
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	movs r1, #0x18
	ldsh r0, [r4, r1]
	adds r2, r2, r0
	str r2, [r4, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _0815BEE8
	b _0815C0B2
_0815BEE8:
	str r1, [r4, #0x04]
	movs r0, #0x05
	strb r0, [r6, #0x00]
	b _0815C0B2
_0815BEF0: .4byte word_8198584 @ =0x08198584
_0815BEF4:
	cmp r3, #0x03
	beq _0815BEFA
	b _0815C010
_0815BEFA:
	ldr r6, _0815BF20 @ =0x03001020
	ldr r2, [r6, #0x00]
	ldr r3, _0815BF24 @ =0x00001CBC
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x4
	ldr r5, _0815BF28 @ =0x00001C98
	adds r2, r2, r5
	ldr r2, [r2, #0x00]
	adds r2, #0x04
	bl sub_815999C
	cmp r0, #0x00
	beq _0815BF2C
	adds r0, r4, #0x0
	bl sub_815F2E8
	b _0815BFE8
	.byte 0x00, 0x00
_0815BF20: .4byte 0x03001020
_0815BF24: .4byte 0x00001CBC
_0815BF28: .4byte 0x00001C98
_0815BF2C:
	adds r0, r4, #0x0
	bl sub_815FA3C
	cmp r0, #0x00
	beq _0815BF6A
	adds r0, r4, #0x0
	movs r1, #0x16
	bl sub_815FA70
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x04]
	ldr r0, [r0, #0x04]
	cmp r1, r0
	ble _0815BF5C
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	b _0815BF68
_0815BF5C:
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
_0815BF68:
	strb r1, [r0, #0x11]
_0815BF6A:
	adds r0, r4, #0x0
	bl sub_815FA3C
	movs r1, #0x00
	strh r1, [r0, #0x0C]
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #0x20]
	adds r1, r1, r2
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r3, #0x14
	ldsh r0, [r4, r3]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x18
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	mov r0, r9
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r1, _0815BFC8 @ =0xFFFFF000
	adds r0, r0, r1
	ldr r1, [r4, #0x08]
	cmp r1, r0
	blt _0815BFE8
	ldr r0, _0815BFCC @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r2, _0815BFD0 @ =0x00001C98
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x04]
	ldr r0, [r0, #0x04]
	cmp r1, r0
	ble _0815BFD8
	ldr r0, _0815BFD4 @ =0x0000FE70
	b _0815BFDC
_0815BFC8: .4byte 0xFFFFF000
_0815BFCC: .4byte 0x03001020
_0815BFD0: .4byte 0x00001C98
_0815BFD4: .4byte 0x0000FE70
_0815BFD8:
	movs r0, #0xC8
	lsls r0, r0, #0x01
_0815BFDC:
	strh r0, [r4, #0x14]
	movs r0, #0x00
	strh r0, [r4, #0x18]
	movs r0, #0x04
	mov r3, r8
	strb r0, [r3, #0x00]
_0815BFE8:
	ldrh r0, [r4, #0x38]
	adds r0, #0x04
	strh r0, [r4, #0x38]
	ldr r2, _0815C00C @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _0815C002
	adds r1, #0x3F
_0815C002:
	asrs r1, r1, #0x07
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	b _0815C0B2
_0815C00C: .4byte word_8198584 @ =0x08198584
_0815C010:
	cmp r3, #0x04
	bne _0815C0A4
	ldr r0, _0815C038 @ =0x03001020
	ldr r2, [r0, #0x00]
	ldr r3, _0815C03C @ =0x00001CBC
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x4
	subs r3, #0x24
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	adds r2, #0x04
	bl sub_815999C
	cmp r0, #0x00
	beq _0815C040
	adds r0, r4, #0x0
	bl sub_815F2E8
	b _0815C0B2
_0815C038: .4byte 0x03001020
_0815C03C: .4byte 0x00001CBC
_0815C040:
	ldrh r0, [r4, #0x38]
	adds r0, #0x06
	strh r0, [r4, #0x38]
	ldr r2, _0815C0A0 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815C05A
	adds r0, #0x3F
_0815C05A:
	asrs r0, r0, #0x07
	ldr r2, [r4, #0x08]
	adds r2, r2, r0
	ldrh r0, [r4, #0x1C]
	ldrh r3, [r4, #0x14]
	adds r0, r0, r3
	strh r0, [r4, #0x14]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r3, #0x14
	ldsh r1, [r4, r3]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	movs r1, #0x18
	ldsh r0, [r4, r1]
	adds r2, r2, r0
	str r2, [r4, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _0815C0B2
	str r1, [r4, #0x04]
	movs r0, #0x05
	strb r0, [r5, #0x00]
	b _0815C0B2
	.byte 0x00, 0x00
_0815C0A0: .4byte word_8198584 @ =0x08198584
_0815C0A4:
	cmp r0, #0x05
	bne _0815C0B2
	movs r0, #0x64
	negs r0, r0
	str r0, [r4, #0x08]
	movs r0, #0x01
	b _0815C0B4
_0815C0B2:
	movs r0, #0x00
_0815C0B4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
