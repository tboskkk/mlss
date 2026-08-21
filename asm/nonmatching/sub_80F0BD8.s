	.syntax unified
	.text

	thumb_func_start sub_80F0BD8
sub_80F0BD8:
	push {lr}
	ldr r0, [r0, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r2, #0x00]
	bl sub_805B490
	movs r0, #0x00
	pop {r1}
	bx r1
