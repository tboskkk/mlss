	.syntax unified
	.text

	thumb_func_start sub_815FAFC
sub_815FAFC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0815FB0E
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x00]
_0815FB0E:
	pop {r4}
	pop {r0}
	bx r0
