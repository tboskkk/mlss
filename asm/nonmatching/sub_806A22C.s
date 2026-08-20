	.syntax unified
	.text

	thumb_func_start sub_806A22C
sub_806A22C:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A244
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _0806A248 @ =0x0806A2FD
	str r0, [r2, #0x4C]
_0806A244:
	pop {r0}
	bx r0
_0806A248: .4byte sub_806A2FC
