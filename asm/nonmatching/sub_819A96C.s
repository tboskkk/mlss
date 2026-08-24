	.syntax unified
	.text

	thumb_func_start sub_819A96C
sub_819A96C:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	movs r1, #0xFF
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r4, r1, #0x10
	subs r3, #0x24
	cmp r3, #0x00
	blt _0819A9AC
	ldr r2, _0819A9A8 @ =0x0821C9A8
	lsls r0, r3, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	subs r0, r0, r1
	muls r0, r4
	lsrs r0, r0, #0x08
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0819A9AE
	.byte 0x00, 0x00
_0819A9A8: .4byte dword_821C9A8 @ =0x0821C9A8
_0819A9AC:
	movs r0, #0x00
_0819A9AE:
	pop {r4}
	pop {r1}
	bx r1
