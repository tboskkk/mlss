	.syntax unified
	.text

	thumb_func_start sub_8098C78
sub_8098C78:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098C8E
	adds r0, r2, #0x0
	bl sub_8087540
_08098C8E:
	pop {r0}
	bx r0
