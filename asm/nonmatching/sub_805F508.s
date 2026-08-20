	.syntax unified
	.text

	thumb_func_start sub_805F508
sub_805F508:
	push {r4, r5, r6, lr}
	adds r4, r3, #0x0
	ldr r6, [sp, #0x010]
	ldr r3, [r0, #0x30]
	ldr r5, [r3, #0x30]
	cmp r1, #0x00
	bge _0805F518
	adds r1, #0xFF
_0805F518:
	asrs r0, r1, #0x08
	movs r1, #0xAE
	strh r0, [r1, r5]
	strh r0, [r1, r3]
	cmp r2, #0x00
	bge _0805F526
	adds r2, #0xFF
_0805F526:
	asrs r0, r2, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _0805F53C
	adds r1, #0xFF
_0805F53C:
	asrs r2, r1, #0x08
	adds r1, r2, r6
	adds r0, r3, #0x0
	adds r0, #0xB2
	strh r1, [r0, #0x00]
	subs r1, r2, r6
	adds r0, r5, #0x0
	adds r0, #0xB2
	strh r1, [r0, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
