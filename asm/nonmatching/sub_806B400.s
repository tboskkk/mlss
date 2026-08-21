	.syntax unified
	.text

	thumb_func_start sub_806B400
sub_806B400:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0806B41A
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B420 @ =0x0806B56D
	str r0, [r4, #0x4C]
_0806B41A:
	pop {r4}
	pop {r0}
	bx r0
_0806B420: .4byte sub_806B56C
