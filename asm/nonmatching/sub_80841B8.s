	.syntax unified
	.text

	thumb_func_start sub_80841B8
sub_80841B8:
	push {lr}
	ldr r2, [r0, #0x40]
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080841C8
	ldrb r1, [r2, #0x07]
_080841C8:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
