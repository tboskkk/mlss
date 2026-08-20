	.syntax unified
	.text

	thumb_func_start sub_815F2C4
sub_815F2C4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r5, #0x00
	movs r0, #0x64
	strh r0, [r4, #0x18]
	negs r1, r1
	strh r1, [r4, #0x20]
	strh r5, [r4, #0x38]
	adds r0, r4, #0x0
	bl sub_815FA3C
	strh r5, [r0, #0x0C]
	adds r4, #0x24
	movs r0, #0x03
	strb r0, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
