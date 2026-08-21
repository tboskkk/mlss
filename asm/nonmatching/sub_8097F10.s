	.syntax unified
	.text

	thumb_func_start sub_8097F10
sub_8097F10:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x04]
	ldr r0, [r0, #0x08]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _08097F2A
	adds r0, r1, #0x0
	bl sub_807C298
	str r4, [r5, #0x30]
	str r4, [r5, #0x4C]
_08097F2A:
	pop {r4, r5}
	pop {r0}
	bx r0
