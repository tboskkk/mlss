	.syntax unified
	.text

	thumb_func_start sub_8163394
sub_8163394:
	ldr r2, _081633B8 @ =0x083CC29C
	ldr r1, _081633BC @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r2, [r0, #0x0C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x44]
	adds r1, r2, #0x0
	adds r1, #0x48
	movs r0, #0x00
	strh r0, [r1, #0x00]
	str r0, [r2, #0x40]
	bx lr
	.byte 0x00, 0x00
_081633B8: .4byte 0x083CC29C
_081633BC: .4byte 0x0300034C
