	.syntax unified
	.text

	thumb_func_start sub_8110FC8
sub_8110FC8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0811103A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x04
	bl sub_80883A0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	ldr r5, _08111044 @ =0x000020CD
	cmp r0, #0x01
	beq _08111000
	adds r5, #0x08
_08111000:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08111008
	adds r1, #0xFF
_08111008:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08111012
	adds r2, #0xFF
_08111012:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0811101C
	adds r3, #0xFF
_0811101C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
	ldr r0, _08111048 @ =0x08111101
	str r0, [r4, #0x4C]
	movs r0, #0x89
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x41
	bl play_sfx_80195B4
_0811103A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111044: .4byte 0x000020CD
_08111048: .4byte sub_8111100
