	.syntax unified
	.text

	thumb_func_start sub_813C88C
sub_813C88C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _0813C8CC @ =0x0813B381
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _0813C8D0 @ =0x0813C759
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
_0813C8CC: .4byte sub_813B380
_0813C8D0: .4byte sub_813C758
