	.syntax unified
	.text

	thumb_func_start sub_80DE980
sub_80DE980:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
