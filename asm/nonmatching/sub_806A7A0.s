	.syntax unified
	.text

	thumb_func_start sub_806A7A0
sub_806A7A0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806A7BA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806A7BA:
	pop {r4, r5}
	pop {r0}
	bx r0
