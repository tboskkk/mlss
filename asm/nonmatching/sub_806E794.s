	.syntax unified
	.text

	thumb_func_start sub_806E794
sub_806E794:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E7C2
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806E7C8 @ =0x0806E98D
	str r0, [r4, #0x4C]
_0806E7C2:
	pop {r4}
	pop {r0}
	bx r0
_0806E7C8: .4byte sub_806E98C
