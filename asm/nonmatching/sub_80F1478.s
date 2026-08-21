	.syntax unified
	.text

	thumb_func_start sub_80F1478
sub_80F1478:
	push {lr}
	ldm r2!, {r1}
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	ldrh r1, [r2, #0x00]
	bl sub_8047E50
	movs r0, #0x01
	pop {r1}
	bx r1
