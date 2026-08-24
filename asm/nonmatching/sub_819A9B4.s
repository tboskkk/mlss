	.syntax unified
	.text

	thumb_func_start sub_819A9B4
sub_819A9B4:
	push {lr}
	adds r1, r0, #0x0
	cmp r1, #0x14
	bgt _0819A9C0
	movs r0, #0xD7
	b _0819A9D6
_0819A9C0:
	cmp r1, #0x50
	bgt _0819A9D4
	ldr r0, _0819A9D0 @ =0x0821CA74
	subs r1, #0x15
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	b _0819A9D6
	.byte 0x00, 0x00
_0819A9D0: .4byte dword_821CA74 @ =0x0821CA74
_0819A9D4:
	movs r0, #0x00
_0819A9D6:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
