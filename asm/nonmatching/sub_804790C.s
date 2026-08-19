	.syntax unified
	.text

	thumb_func_start sub_804790C
sub_804790C:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08047924 @ =0x00000239
	adds r2, r0, r3
	strb r1, [r2, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	bx lr
_08047924: .4byte 0x00000239
