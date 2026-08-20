	.syntax unified
	.text

	thumb_func_start sub_80DA0E0
sub_80DA0E0:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r2, [r0, #0x00]
	cmp r2, #0x00
	bne _080DA0F8
	adds r0, r1, #0x0
	adds r0, #0xAC
	strh r2, [r0, #0x00]
	ldr r0, _080DA0FC @ =0x080DA099
	str r0, [r1, #0x4C]
_080DA0F8:
	pop {r0}
	bx r0
_080DA0FC: .4byte sub_80DA098
