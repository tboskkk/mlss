	.syntax unified
	.text

	thumb_func_start sub_80F8EB0
sub_80F8EB0:
	push {lr}
	add sp, #-0x008
	adds r2, r1, #0x0
	adds r3, r0, #0x0
	adds r3, #0x1C
	ldr r1, [r0, #0x2C]
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0xFF
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	add sp, #0x008
	pop {r0}
	bx r0
