	.syntax unified
	.text

	thumb_func_start sub_813D6FC
sub_813D6FC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FD4
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _0813D744 @ =0x0813CAED
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _0813D748 @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D744: .4byte sub_813CAEC
_0813D748: .4byte sub_8139420
