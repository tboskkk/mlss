	.syntax unified
	.text

	thumb_func_start sub_81397CC
sub_81397CC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_813729C
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
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r4, #0x0
	bl sub_81382A8
	ldr r0, _08139808 @ =0x08139759
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08139808: .4byte sub_8139758
