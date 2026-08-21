	.syntax unified
	.text

	thumb_func_start sub_8066EB4
sub_8066EB4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066ED4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066EDC @ =0x0806688D
	str r0, [r4, #0x4C]
_08066ED4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066EDC: .4byte sub_806688C
