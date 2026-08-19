	.syntax unified
	.text

	thumb_func_start sub_80DA1EC
sub_80DA1EC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DA200
	ldr r0, _080DA204 @ =0x080D9D5D
	str r0, [r2, #0x4C]
_080DA200:
	pop {r0}
	bx r0
_080DA204: .4byte sub_80D9D5C
