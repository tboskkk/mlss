	.syntax unified
	.text

	thumb_func_start sub_8107360
sub_8107360:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x10
	ldsh r5, [r4, r0]
	cmp r5, #0x00
	beq _08107374
	ldrh r0, [r4, #0x10]
	subs r0, #0x01
	strh r0, [r4, #0x10]
	b _0810737A
_08107374:
	bl sub_807F6D0
	str r5, [r4, #0x04]
_0810737A:
	pop {r4, r5}
	pop {r0}
	bx r0
