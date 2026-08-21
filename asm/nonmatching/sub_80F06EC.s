	.syntax unified
	.text

	thumb_func_start sub_80F06EC
sub_80F06EC:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080F06FC
	ldr r0, [r1, #0x14]
	bl sub_8029380
_080F06FC:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
