	.syntax unified
	.text

	thumb_func_start sub_80E18D8
sub_80E18D8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x0C]
	ldrh r0, [r1, #0x00]
	movs r2, #0x02
	ldsh r1, [r1, r2]
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	str r4, [r5, #0x08]
	ldr r1, _080E1904 @ =0x080E1AB1
	str r1, [r5, #0x04]
	adds r0, r5, #0x0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
_080E1904: .4byte sub_80E1AB0
