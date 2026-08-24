	.syntax unified
	.text

	thumb_func_start sub_81119DC
sub_81119DC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x2C]
	ldr r3, [r0, #0x28]
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	ldr r6, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081119F8
	adds r0, #0xFF
_081119F8:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08111A0A
	adds r0, #0xFF
_08111A0A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08111A18
	adds r0, #0xFF
_08111A18:
	asrs r3, r0, #0x08
	adds r3, #0x10
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, _08111A78 @ =0x083BA9A8
	lsls r4, r6, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x50
	bl sub_808842C
	ldr r1, [r5, #0x28]
	ldr r0, _08111A7C @ =0x083BA9CC
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r1, r1, r2
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x08]
	ldr r1, _08111A80 @ =0x083BA9C0
	lsls r0, r6, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	strh r1, [r2, #0x06]
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r3, [r0, #0x00]
	ldr r0, _08111A84 @ =0x08112175
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111A78: .4byte dword_83BA9A8 @ =0x083BA9A8
_08111A7C: .4byte dword_83BA9CC @ =0x083BA9CC
_08111A80: .4byte dword_83BA9C0 @ =0x083BA9C0
_08111A84: .4byte sub_8112174
