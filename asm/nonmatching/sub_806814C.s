	.syntax unified
	.text

	thumb_func_start sub_806814C
sub_806814C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068160
	ldr r0, _08068164 @ =0x0808750D
	str r0, [r2, #0x4C]
_08068160:
	pop {r0}
	bx r0
_08068164: .4byte sub_808750C
