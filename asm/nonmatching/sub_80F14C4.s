	.syntax unified
	.text

	thumb_func_start sub_80F14C4
sub_80F14C4:
	push {lr}
	adds r0, r1, #0x0
	ldrh r1, [r3, #0x00]
	bl sub_8047E50
	movs r0, #0x01
	pop {r1}
	bx r1
