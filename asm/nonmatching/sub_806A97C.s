	.syntax unified
	.text

	thumb_func_start sub_806A97C
sub_806A97C:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A994
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _0806A998 @ =0x0806A511
	str r0, [r2, #0x4C]
_0806A994:
	pop {r0}
	bx r0
_0806A998: .4byte sub_806A510
