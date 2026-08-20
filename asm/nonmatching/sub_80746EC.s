	.syntax unified
	.text

	thumb_func_start sub_80746EC
sub_80746EC:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074704
	ldr r0, _08074708 @ =0x0807470D
	str r0, [r2, #0x4C]
_08074704:
	pop {r0}
	bx r0
_08074708: .4byte sub_807470C
