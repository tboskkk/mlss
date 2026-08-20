	.syntax unified
	.text

	thumb_func_start sub_806E690
sub_806E690:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806E6A0
	bl _call_via_r1
_0806E6A0:
	ldr r0, [r4, #0x2C]
	ldr r1, _0806E6B4 @ =0x0806E791
	str r1, [r0, #0x4C]
	ldr r0, _0806E6B8 @ =0x0806DD49
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806E6B4: .4byte nullsub_15
_0806E6B8: .4byte sub_806DD48
