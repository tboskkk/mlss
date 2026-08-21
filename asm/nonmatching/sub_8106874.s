	.syntax unified
	.text

	thumb_func_start sub_8106874
sub_8106874:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106888
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _0810689C
_08106888:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	movs r0, #0x10
	strh r0, [r4, #0x10]
	ldr r1, _081068A4 @ =0x08105F29
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_0810689C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081068A4: .4byte sub_8105F28
