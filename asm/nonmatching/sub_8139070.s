	.syntax unified
	.text

	thumb_func_start sub_8139070
sub_8139070:
	push {r4, lr}
	adds r2, r0, #0x0
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r0, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	movs r1, #0x00
	movs r0, #0x94
	lsls r0, r0, #0x01
	adds r4, r2, r0
_0813908A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x01
	lsls r0, r0, #0x10
	adds r3, #0x02
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _0813908A
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
