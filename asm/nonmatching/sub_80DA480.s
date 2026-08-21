	.syntax unified
	.text

	thumb_func_start sub_80DA480
sub_80DA480:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DA4AE
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, _080DA4B4 @ =0x080DA099
	str r0, [r4, #0x4C]
_080DA4AE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DA4B4: .4byte sub_80DA098
