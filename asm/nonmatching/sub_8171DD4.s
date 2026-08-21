	.syntax unified
	.text

	thumb_func_start sub_8171DD4
sub_8171DD4:
	push {lr}
	adds r1, r0, #0x0
	adds r1, #0xEA
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08171DEA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0x97
	bl stop_sfx_80195A8
_08171DEA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
