	.syntax unified
	.text

	thumb_func_start sub_806432C
sub_806432C:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r1, #0x18]
	ldr r2, _08064350 @ =0xFFFFFC80
	adds r0, r0, r2
	str r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _0806434C
	adds r0, r1, #0x0
	bl sub_807C298
_0806434C:
	pop {r0}
	bx r0
_08064350: .4byte 0xFFFFFC80
