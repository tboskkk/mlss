	.syntax unified
	.text

	thumb_func_start sub_806B56C
sub_806B56C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806B580
	movs r0, #0x00
	str r0, [r2, #0x4C]
_0806B580:
	pop {r0}
	bx r0
