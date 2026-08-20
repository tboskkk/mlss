	.syntax unified
	.text

	thumb_func_start sub_80F0540
sub_80F0540:
	push {lr}
	ldm r3!, {r0}
	cmp r0, #0x00
	bne _080F055C
	ldr r0, _080F0564 @ =0x03000FD0
	ldr r2, [r0, #0x00]
	ldr r0, _080F0568 @ =0x0000054A
	adds r2, r2, r0
	ldr r0, [r3, #0x00]
	movs r1, #0x01
	lsls r1, r0
	ldrh r0, [r2, #0x00]
	bics r0, r1
	strh r0, [r2, #0x00]
_080F055C:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F0564: .4byte 0x03000FD0
_080F0568: .4byte 0x0000054A
