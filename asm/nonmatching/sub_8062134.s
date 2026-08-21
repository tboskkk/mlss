	.syntax unified
	.text

	thumb_func_start sub_8062134
sub_8062134:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062142
	bl sub_807C298
_08062142:
	ldr r0, _0806214C @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806214C: .4byte sub_808750C
