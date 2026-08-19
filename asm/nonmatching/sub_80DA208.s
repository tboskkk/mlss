	.syntax unified
	.text

	thumb_func_start sub_80DA208
sub_80DA208:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DA21C
	ldr r0, _080DA220 @ =0x080DA265
	str r0, [r2, #0x4C]
_080DA21C:
	pop {r0}
	bx r0
_080DA220: .4byte sub_80DA264
