	.syntax unified
	.text

	thumb_func_start sub_8089C88
sub_8089C88:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r7, r0, #0x0
	ldr r0, [r7, #0x2C]
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r3, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r5, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	ldr r0, [r7, #0x28]
	adds r0, #0xE0
	ldr r6, [r0, #0x00]
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, #0x24
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r6, r6, r4
	str r6, [sp, #0x004]
	movs r4, #0x80
	lsls r4, r4, #0x03
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	ldr r0, _08089D0C @ =0x080895D9
	str r0, [r7, #0x4C]
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08089D0C: .4byte sub_80895D8
