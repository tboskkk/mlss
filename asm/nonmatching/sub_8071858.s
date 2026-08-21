	.syntax unified
	.text

	thumb_func_start sub_8071858
sub_8071858:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_807F47C
	ldr r1, [r4, #0x2C]
	ldr r2, [r1, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r2, _080718F4 @ =0x000040AE
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080718B2
	adds r1, #0xFF
_080718B2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080718BC
	adds r2, #0xFF
_080718BC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080718C6
	adds r3, #0xFF
_080718C6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080718F8 @ =0x000021E1
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _080718FC @ =0x0807175D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_080718F4: .4byte 0x000040AE
_080718F8: .4byte 0x000021E1
_080718FC: .4byte sub_807175C
