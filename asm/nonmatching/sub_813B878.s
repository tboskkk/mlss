	.syntax unified
	.text

	thumb_func_start sub_813B878
sub_813B878:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	movs r4, #0x00
	ldr r2, _0813B8A4 @ =0x00000276
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	ldr r2, [r1, #0x10]
	subs r0, r2, r0
	ldr r1, [r3, #0x10]
	cmp r1, r0
	blt _0813B89C
	ldr r5, _0813B8A4 @ =0x00000276
	adds r0, r3, r5
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	cmp r0, r2
	bgt _0813B89C
	movs r4, #0x01
_0813B89C:
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_0813B8A4: .4byte 0x00000276
