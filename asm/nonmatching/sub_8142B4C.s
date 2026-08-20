	.syntax unified
	.text

	thumb_func_start sub_8142B4C
sub_8142B4C:
	push {r4, lr}
	adds r3, r1, #0x0
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r3, #0x18]
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	movs r4, #0xB5
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _08142B78
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r1, _08142B80 @ =0x0813E505
	str r1, [r0, #0x00]
	ldr r0, _08142B84 @ =0x0813E619
	str r0, [r2, #0x00]
_08142B78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142B80: .4byte sub_813E504
_08142B84: .4byte sub_813E618
