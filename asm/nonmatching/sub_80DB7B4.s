	.syntax unified
	.text

	thumb_func_start sub_80DB7B4
sub_80DB7B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r3, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x88
	ldr r0, [r7, #0x3C]
	str r0, [r5, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r6, [r7, #0x40]
	str r6, [r0, #0x00]
	adds r0, #0x0C
	str r6, [r0, #0x00]
	adds r0, #0x16
	adds r1, r7, #0x0
	adds r1, #0xB0
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
	movs r4, #0xC0
	lsls r4, r4, #0x04
	str r4, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x02
	str r4, [sp, #0x00C]
	movs r4, #0xFD
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
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DB834 @ =0x080DB721
	str r0, [r7, #0x4C]
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DB834: .4byte sub_80DB720
