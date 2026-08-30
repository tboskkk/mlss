	.syntax unified
	.text

	thumb_func_start sub_806E7CC
sub_806E7CC:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E7E4
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _0806E7E8 @ =0x0806D61D
	str r0, [r2, #0x4C]
_0806E7E4:
	pop {r0}
	bx r0
_0806E7E8: .4byte sub_806D61C
