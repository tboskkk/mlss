	.syntax unified
	.text

	thumb_func_start sub_80DD40C
sub_80DD40C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r0, [r4, #0x10]
	adds r0, #0x01
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x09
	ble _080DD428
	ldr r0, [r4, #0x08]
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x04]
_080DD428:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
