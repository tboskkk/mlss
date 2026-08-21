	.syntax unified
	.text

	thumb_func_start sub_811416C
sub_811416C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _081141E8 @ =0x081145C9
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x30]
	ldr r4, [r0, #0x30]
	ldr r0, [r4, #0x2C]
	ldr r5, [r0, #0x28]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _081141EC @ =0x08113F31
	str r0, [r4, #0x58]
	ldr r0, _081141F0 @ =0x08113EA1
	str r0, [r4, #0x60]
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08114198
	adds r0, #0xFF
_08114198:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x1C
	adds r0, r5, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081141AA
	adds r0, #0xFF
_081141AA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x1
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081141BA
	adds r0, #0xFF
_081141BA:
	asrs r3, r0, #0x08
	adds r3, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081141E8: .4byte sub_81145C8
_081141EC: .4byte sub_8113F30
_081141F0: .4byte sub_8113EA0
	.byte 0x70, 0x47, 0x00, 0x00
