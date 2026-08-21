	.syntax unified
	.text

	thumb_func_start sub_8072400
sub_8072400:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _0807241C
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	str r1, [r0, #0x00]
	ldr r0, _08072424 @ =0x08071901
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0807241C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08072424: .4byte sub_8071900
