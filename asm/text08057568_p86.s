	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FB790
sub_80FB790:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0E
	ldr r2, _080FB7B8 @ =0x083D6C58
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r3, [r0, #0x01]
	lsls r3, r3, #0x02
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x06
	orrs r3, r2
	movs r2, #0x1F
	ands r3, r2
	strb r3, [r1, #0x00]
	ldrb r1, [r0, #0x05]
	lsls r1, r1, #0x08
	ldrb r2, [r0, #0x04]
	orrs r1, r2
	subs r0, r0, r1
	bx lr
	.byte 0x00, 0x00
_080FB7B8: .4byte 0x083D6C58
