	.syntax unified
	.text

	thumb_func_start sub_8089BD4
sub_8089BD4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08089BF8
	ldr r0, _08089BFC @ =0x08089F45
	str r0, [r2, #0x4C]
_08089BF8:
	pop {r0}
	bx r0
_08089BFC: .4byte sub_8089F44
