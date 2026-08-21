	.syntax unified
	.text

	thumb_func_start sub_80DD478
sub_80DD478:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x98
	ldr r0, [r7, #0x2C]
	ldr r5, [r0, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r6, [r0, #0x00]
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, #0x18
	adds r2, r7, #0x0
	adds r2, #0xB2
	adds r3, r5, #0x0
	adds r3, #0xD8
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	adds r4, r5, #0x0
	adds r4, #0xDC
	ldr r5, [r7, #0x3C]
	subs r5, #0x01
	ldr r4, [r4, #0x00]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r4, #0x08
	subs r6, r6, r4
	str r6, [sp, #0x004]
	movs r4, #0x90
	lsls r4, r4, #0x07
	str r4, [sp, #0x008]
	adds r4, r7, #0x0
	adds r4, #0x9C
	ldr r4, [r4, #0x00]
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
	ldr r0, _080DD4E8 @ =0x080DCE45
	str r0, [r7, #0x4C]
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DD4E8: .4byte sub_80DCE44
