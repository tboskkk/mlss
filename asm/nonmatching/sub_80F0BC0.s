	.syntax unified
	.text

	thumb_func_start sub_80F0BC0
sub_80F0BC0:
	push {lr}
	ldr r0, [r0, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r2, #0x00]
	bl sub_805C7B4
	movs r0, #0x01
	pop {r1}
	bx r1
