	.syntax unified
	.text

	thumb_func_start sub_807223C
sub_807223C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x14
	str r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08072274
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072262
	adds r0, #0xFF
_08072262:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _0807228C
	adds r0, r4, #0x0
	bl sub_807F47C
	b _08072286
_08072274:
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072280
	adds r0, #0xFF
_08072280:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _0807228C
_08072286:
	adds r0, r4, #0x0
	bl sub_807C298
_0807228C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
