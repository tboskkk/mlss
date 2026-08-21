	.syntax unified
	.text

	thumb_func_start sub_815D7D8
sub_815D7D8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x36
	ldsh r2, [r4, r0]
	cmp r2, #0x01
	beq _0815D83E
	cmp r2, #0x01
	bgt _0815D7EE
	cmp r2, #0x00
	beq _0815D7F4
	b _0815D8C4
_0815D7EE:
	cmp r2, #0x02
	beq _0815D858
	b _0815D8C4
_0815D7F4:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x48]
	subs r1, r1, r0
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x04]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #0x08
	adds r0, #0x10
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #0x08
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #0x08
	adds r0, #0x30
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #0x08
	adds r0, #0x40
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0815D8C4
	strh r2, [r4, #0x00]
	movs r0, #0x01
	strh r0, [r4, #0x36]
	b _0815D8C4
_0815D83E:
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3B
	ble _0815D8C4
	movs r0, #0x00
	strh r0, [r4, #0x00]
	movs r0, #0x02
	strh r0, [r4, #0x36]
	movs r0, #0x03
	b _0815D8C6
_0815D858:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x48]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r5, r4, #0x4
	ldr r1, [r4, #0x04]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x04]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #0x08
	adds r0, #0x10
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #0x08
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #0x08
	adds r0, #0x30
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #0x08
	adds r0, #0x40
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	ldr r0, _0815D8C0 @ =0x0000EFFF
	cmp r1, r0
	ble _0815D8C4
	ldr r0, [r4, #0x04]
	bl sprite_hide_8021F20
	ldr r0, [r5, #0x04]
	bl sprite_hide_8021F20
	ldr r0, [r4, #0x0C]
	bl sprite_hide_8021F20
	ldr r0, [r4, #0x10]
	bl sprite_hide_8021F20
	ldr r0, [r4, #0x14]
	bl sprite_hide_8021F20
	movs r0, #0x02
	b _0815D8C6
_0815D8C0: .4byte 0x0000EFFF
_0815D8C4:
	movs r0, #0x00
_0815D8C6:
	pop {r4, r5}
	pop {r1}
	bx r1
