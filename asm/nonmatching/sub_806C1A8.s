	.syntax unified
	.text

	thumb_func_start sub_806C1A8
sub_806C1A8:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C1C0
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806C1C4 @ =0x0806B7BD
	str r0, [r2, #0x4C]
_0806C1C0:
	pop {r0}
	bx r0
_0806C1C4: .4byte sub_806B7BC
