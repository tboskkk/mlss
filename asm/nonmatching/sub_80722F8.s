	.syntax unified
	.text

	thumb_func_start sub_80722F8
sub_80722F8:
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
	bne _0807232A
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0807231E
	adds r0, #0xFF
_0807231E:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08072348
	b _0807233C
_0807232A:
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072336
	adds r0, #0xFF
_08072336:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _08072348
_0807233C:
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	bl sub_807C298
_08072348:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
