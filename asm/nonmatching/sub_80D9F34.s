	.syntax unified
	.text

	thumb_func_start sub_80D9F34
sub_80D9F34:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _080D9F48
	ldr r0, _080D9F4C @ =0x080DA0E1
	str r0, [r1, #0x4C]
_080D9F48:
	pop {r0}
	bx r0
_080D9F4C: .4byte sub_80DA0E0
