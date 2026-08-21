	.syntax unified
	.text

	thumb_func_start sub_80DA368
sub_80DA368:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DA390
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r4, #0x00]
	ldr r0, _080DA398 @ =0x080DA39D
	str r0, [r5, #0x4C]
_080DA390:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DA398: .4byte sub_80DA39C
