	.syntax unified
	.text

	thumb_func_start sub_8132650
sub_8132650:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08132670
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08132670:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
