	.syntax unified
	.text

	thumb_func_start sub_8065E4C
sub_8065E4C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065E60
	ldr r0, _08065E64 @ =0x08065ED5
	str r0, [r2, #0x4C]
_08065E60:
	pop {r0}
	bx r0
_08065E64: .4byte sub_8065ED4
