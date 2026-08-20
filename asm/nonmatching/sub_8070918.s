	.syntax unified
	.text

	thumb_func_start sub_8070918
sub_8070918:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08070930
	ldr r0, _08070934 @ =0x0806F035
	str r0, [r2, #0x4C]
_08070930:
	pop {r0}
	bx r0
_08070934: .4byte sub_806F034
