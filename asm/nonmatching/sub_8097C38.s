	.syntax unified
	.text

	thumb_func_start sub_8097C38
sub_8097C38:
	push {r4, lr}
	ldr r0, [r0, #0x04]
	ldr r4, [r0, #0x08]
_08097C3E:
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08097CAC
	movs r0, #0x10
	ldsh r1, [r2, r0]
	ldr r0, [r2, #0x04]
	adds r0, r0, r1
	str r0, [r2, #0x04]
	movs r0, #0x12
	ldsh r1, [r2, r0]
	ldr r0, [r2, #0x08]
	adds r0, r0, r1
	str r0, [r2, #0x08]
	movs r1, #0x14
	ldsh r0, [r2, r1]
	ldr r1, [r2, #0x0C]
	adds r1, r1, r0
	str r1, [r2, #0x0C]
	ldrh r0, [r2, #0x14]
	subs r0, #0x66
	movs r3, #0x00
	strh r0, [r2, #0x14]
	cmp r1, #0x00
	ble _08097C72
	adds r4, r2, #0x0
	b _08097C3E
_08097C72:
	str r3, [r2, #0x0C]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x10]
	movs r1, #0x12
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x12]
	movs r1, #0x14
	ldsh r0, [r2, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xFF
	bgt _08097C3E
	adds r0, r2, #0x0
	bl sub_807FA94
	str r0, [r4, #0x00]
	b _08097C3E
_08097CAC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
