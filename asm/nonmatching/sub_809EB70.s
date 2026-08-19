	.syntax unified
	.text

	thumb_func_start sub_809EB70
sub_809EB70:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809EB84
	ldr r0, _0809EB88 @ =0x0808750D
	str r0, [r2, #0x4C]
_0809EB84:
	pop {r0}
	bx r0
_0809EB88: .4byte sub_808750C
