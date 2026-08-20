	.syntax unified
	.text

	thumb_func_start sub_80F7ED0
sub_80F7ED0:
	push {lr}
	adds r1, r2, #0x0
	ldm r1!, {r3}
	cmp r3, #0x00
	bne _080F7EEE
	ldr r0, _080F7EF4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, [r0, #0x00]
	ldr r1, [r1, #0x00]
	strh r1, [r2, #0x08]
	ldr r0, [r0, #0x00]
	strh r3, [r0, #0x0A]
_080F7EEE:
	movs r0, #0x01
	pop {r1}
	bx r1
_080F7EF4: .4byte 0x03000FD8
