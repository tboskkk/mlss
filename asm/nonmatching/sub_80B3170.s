	.syntax unified
	.text

	thumb_func_start sub_80B3170
sub_80B3170:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080B31E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r6, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B31DA
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B319C
	adds r1, #0xFF
_080B319C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B31A6
	adds r2, #0xFF
_080B31A6:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B31B0
	adds r3, #0xFF
_080B31B0:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080B31E8 @ =0x00002FF9
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	ldr r0, [r5, #0x10]
	movs r1, #0x90
	lsls r1, r1, #0x09
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, _080B31EC @ =0x080AD189
	str r0, [r6, #0x4C]
_080B31DA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B31E4: .4byte 0x03000FD8
_080B31E8: .4byte 0x00002FF9
_080B31EC: .4byte sub_80AD188
