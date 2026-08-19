	.syntax unified
	.text

	thumb_func_start sub_8064540
sub_8064540:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064554
	movs r0, #0x00
	str r0, [r2, #0x4C]
_08064554:
	pop {r0}
	bx r0
