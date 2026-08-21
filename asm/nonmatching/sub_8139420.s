	.syntax unified
	.text

	thumb_func_start sub_8139420
sub_8139420:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_81386C0
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_81370C4
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
	bl sub_81381D4
	ldr r0, _08139468 @ =0x0813980D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139468: .4byte sub_813980C
