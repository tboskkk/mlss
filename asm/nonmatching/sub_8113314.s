	.syntax unified
	.text

	thumb_func_start sub_8113314
sub_8113314:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0811334E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0811332C
	adds r1, #0xFF
_0811332C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113336
	adds r2, #0xFF
_08113336:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113340
	adds r3, #0xFF
_08113340:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113380 @ =0x0000297A
	bl sub_80DF024
	movs r0, #0x0A
	str r0, [r5, #0x00]
_0811334E:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	subs r1, #0x01
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08113376
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08113376:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113380: .4byte 0x0000297A
