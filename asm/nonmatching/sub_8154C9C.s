	.syntax unified
	.text

	thumb_func_start sub_8154C9C
sub_8154C9C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x08
	ldsh r0, [r4, r1]
	cmp r0, #0x01
	beq _08154CB6
	cmp r0, #0x01
	ble _08154D30
	cmp r0, #0x02
	beq _08154CDA
	cmp r0, #0x03
	beq _08154D00
	b _08154D30
_08154CB6:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1C]
	subs r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x04]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08154D30
	movs r0, #0x00
	strh r0, [r4, #0x00]
	ldrh r0, [r4, #0x08]
	adds r0, #0x01
	strh r0, [r4, #0x08]
_08154CDA:
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3B
	ble _08154D30
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4B
	bl play_sfx_80195B4
	movs r0, #0x00
	strh r0, [r4, #0x00]
	ldrh r0, [r4, #0x08]
	adds r0, #0x01
	strh r0, [r4, #0x08]
	movs r0, #0x03
	b _08154D32
_08154D00:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1C]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x04]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, _08154D2C @ =0x0000EFFF
	cmp r1, r0
	ble _08154D30
	ldr r0, [r4, #0x04]
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x04]
	movs r0, #0x02
	b _08154D32
	.byte 0x00, 0x00
_08154D2C: .4byte 0x0000EFFF
_08154D30:
	movs r0, #0x00
_08154D32:
	pop {r4}
	pop {r1}
	bx r1
