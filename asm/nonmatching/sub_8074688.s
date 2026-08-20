	.syntax unified
	.text

	thumb_func_start sub_8074688
sub_8074688:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080746A0
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _080746A4 @ =0x080728D1
	str r0, [r2, #0x4C]
_080746A0:
	pop {r0}
	bx r0
_080746A4: .4byte sub_80728D0
