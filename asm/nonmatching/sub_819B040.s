	.syntax unified
	.text

	thumb_func_start sub_819B040
sub_819B040:
	push {r4, lr}
	movs r3, #0x00
	movs r4, #0x00
	movs r2, #0x83
	strh r2, [r0, #0x00]
	str r1, [r0, #0x04]
	strh r4, [r0, #0x08]
	movs r1, #0x78
	strb r1, [r0, #0x02]
	strb r3, [r0, #0x03]
	strb r3, [r0, #0x0C]
	movs r1, #0x7F
	strb r1, [r0, #0x0E]
	movs r1, #0x01
	strb r1, [r0, #0x0A]
	movs r1, #0xC8
	strb r1, [r0, #0x0D]
	strb r3, [r0, #0x10]
	movs r1, #0x02
	strb r1, [r0, #0x0F]
	strb r3, [r0, #0x11]
	pop {r4}
	pop {r0}
	bx r0
