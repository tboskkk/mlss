	.syntax unified
	.text

	thumb_func_start sub_8106A88
sub_8106A88:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x14
	ldsh r0, [r4, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	adds r0, r4, #0x0
	bl sub_810489C
	strh r0, [r4, #0x10]
	ldr r2, _08106AC0 @ =0x000007FF
	ands r2, r0
	cmp r2, #0x00
	bne _08106AB8
	ldrh r0, [r4, #0x14]
	adds r1, r0, #0x1
	strh r1, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x07
	ble _08106AB8
	strh r2, [r4, #0x10]
	ldr r0, _08106AC4 @ =0x08104A01
	str r0, [r4, #0x04]
_08106AB8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106AC0: .4byte 0x000007FF
_08106AC4: .4byte sub_8104A00
