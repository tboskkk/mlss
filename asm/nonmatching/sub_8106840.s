	.syntax unified
	.text

	thumb_func_start sub_8106840
sub_8106840:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106854
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106868
_08106854:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	movs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r1, _08106870 @ =0x081067D5
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08106868:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106870: .4byte sub_81067D4
