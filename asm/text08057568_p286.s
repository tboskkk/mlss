	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810D1D8
sub_810D1D8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0810D220 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x7C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bge _0810D1EC
	adds r0, #0xFF
_0810D1EC:
	asrs r0, r0, #0x08
	subs r3, r0, #0x4
	ldr r1, [r2, #0x44]
	cmp r1, #0x00
	bge _0810D1F8
	adds r1, #0xFF
_0810D1F8:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810D206
	adds r0, #0xFF
_0810D206:
	asrs r2, r0, #0x08
	adds r2, #0x18
	ldr r0, _0810D224 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r4, #0x0
	bl sub_810A648
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D220: .4byte 0x03000FD8
_0810D224: .4byte 0x00007001
