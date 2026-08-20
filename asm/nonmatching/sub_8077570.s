	.syntax unified
	.text

	thumb_func_start sub_8077570
sub_8077570:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x8C
	ldr r0, [r3, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x80
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bge _0807758E
	adds r0, #0xFF
_0807758E:
	asrs r0, r0, #0x08
	cmp r0, #0x28
	bgt _0807759E
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [r3, #0x18]
	movs r0, #0x00
	str r0, [r3, #0x4C]
_0807759E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
