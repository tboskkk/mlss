	.syntax unified
	.text

	thumb_func_start sub_80793F4
sub_80793F4:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079404
	ldr r0, _08079408 @ =0x0807940D
	str r0, [r1, #0x4C]
_08079404:
	pop {r0}
	bx r0
_08079408: .4byte sub_807940C
