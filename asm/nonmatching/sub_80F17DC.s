	.syntax unified
	.text

	thumb_func_start sub_80F17DC
sub_80F17DC:
	push {lr}
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	bl sub_80473DC
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
