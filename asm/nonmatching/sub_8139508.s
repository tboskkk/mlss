	.syntax unified
	.text

	thumb_func_start sub_8139508
sub_8139508:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r1, [r1, #0x34]
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8137550
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _08139558 @ =0x08136A85
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08139558: .4byte sub_8136A84
