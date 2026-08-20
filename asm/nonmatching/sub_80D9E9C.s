	.syntax unified
	.text

	thumb_func_start sub_80D9E9C
sub_80D9E9C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9EB4
	ldr r0, _080D9EB8 @ =0x080D9F51
	str r0, [r2, #0x4C]
_080D9EB4:
	pop {r0}
	bx r0
_080D9EB8: .4byte sub_80D9F50
