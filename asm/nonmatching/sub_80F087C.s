	.syntax unified
	.text

	thumb_func_start sub_80F087C
sub_80F087C:
	push {lr}
	adds r2, r1, #0x0
	ldr r0, [r0, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F0896
	movs r0, #0x01
	b _080F089C
_080F0896:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
_080F089C:
	pop {r1}
	bx r1
