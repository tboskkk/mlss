	.syntax unified
	.text

	thumb_func_start sub_80F1AEC
sub_80F1AEC:
	push {lr}
	adds r3, r1, #0x0
	ldr r0, _080F1B0C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	ldr r1, _080F1B10 @ =0x0000054C
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldm r2!, {r0}
	cmp r1, r0
	bne _080F1B04
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
_080F1B04:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1B0C: .4byte 0x03000FD0
_080F1B10: .4byte 0x0000054C
