	.syntax unified
	.text

	thumb_func_start sub_80EA904
sub_80EA904:
	adds r2, r1, #0x0
	adds r2, #0xA6
	ldrb r0, [r2, #0x00]
	subs r0, #0x01
	strb r0, [r2, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x58]
	movs r0, #0x01
	bx lr
