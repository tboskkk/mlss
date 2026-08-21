	.syntax unified
	.text

	thumb_func_start sub_806025C
sub_806025C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806027E
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060284 @ =0x08060405
	str r0, [r4, #0x4C]
_0806027E:
	pop {r4}
	pop {r0}
	bx r0
_08060284: .4byte sub_8060404
