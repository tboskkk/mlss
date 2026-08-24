	.syntax unified
	.text

	thumb_func_start sub_819A9DC
sub_819A9DC:
	lsls r0, r0, #0x04
	ldr r1, _0819AA2C @ =0x0821DB5E
	adds r0, r0, r1
	ldr r3, _0819AA30 @ =0x04000070
	movs r1, #0xC0
	strb r1, [r3, #0x00]
	ldr r1, _0819AA34 @ =0x04000090
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x02
	adds r1, #0x02
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x02
	adds r1, #0x02
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x02
	adds r1, #0x02
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x02
	adds r1, #0x02
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x02
	adds r1, #0x02
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x02
	adds r1, #0x02
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x00]
	movs r0, #0x80
	strb r0, [r3, #0x00]
	bx lr
	.byte 0x00, 0x00
_0819AA2C: .4byte dword_821DB5E @ =0x0821DB5E
_0819AA30: .4byte 0x04000070
_0819AA34: .4byte 0x04000090
