	.syntax unified
	.text

	thumb_func_start sub_8110ED8
sub_8110ED8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r5, [r0, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08110EEE
	adds r0, #0xFF
_08110EEE:
	asrs r1, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08110EFC
	adds r0, #0xFF
_08110EFC:
	asrs r2, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08110F0A
	adds r0, #0xFF
_08110F0A:
	asrs r3, r0, #0x08
	adds r3, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08110F54 @ =0x08110FC5
	str r0, [r4, #0x5C]
	ldr r0, _08110F58 @ =0x08110FC9
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x89
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08110F54: .4byte 0x08110FC5
_08110F58: .4byte sub_8110FC8
