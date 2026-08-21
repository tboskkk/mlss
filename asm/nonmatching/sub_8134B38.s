	.syntax unified
	.text

	thumb_func_start sub_8134B38
sub_8134B38:
	push {lr}
	adds r3, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r1, #0x03
	bls _08134B4A
	movs r1, #0x03
_08134B4A:
	movs r0, #0x00
	strh r1, [r3, #0x00]
	strh r0, [r3, #0x02]
	strh r2, [r3, #0x04]
	cmp r2, #0x00
	bne _08134B60
	movs r0, #0x01
	strh r0, [r3, #0x04]
	adds r0, r3, #0x0
	bl sub_8134AA8
_08134B60:
	pop {r0}
	bx r0
