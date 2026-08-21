	.syntax unified
	.text

	thumb_func_start sub_806B26C
sub_806B26C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806B280
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_0806B280:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
