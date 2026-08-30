	.syntax unified
	.text

	thumb_func_start sub_8171DF0
sub_8171DF0:
	push {lr}
	adds r1, r0, #0x0
	adds r1, #0xEA
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08171E0A
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x97
	bl play_sfx_80195B4
_08171E0A:
	pop {r0}
	bx r0
