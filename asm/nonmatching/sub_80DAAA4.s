	.syntax unified
	.text

	thumb_func_start sub_80DAAA4
sub_80DAAA4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x30
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x1B
	bl sub_80873B8
	ldr r0, _080DAAC4 @ =0x080DAB65
	str r0, [r4, #0x50]
	pop {r4}
	pop {r0}
	bx r0
_080DAAC4: .4byte sub_80DAB64
