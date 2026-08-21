	.syntax unified
	.text

	thumb_func_start sub_8112740
sub_8112740:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _081127A8
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0811275A
	adds r0, #0xFF
_0811275A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112768
	adds r0, #0xFF
_08112768:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112776
	adds r0, #0xFF
_08112776:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081127B0 @ =0x08112985
	str r0, [r4, #0x4C]
	ldr r0, _081127B4 @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_081127A8:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_081127B0: .4byte sub_8112984
_081127B4: .4byte 0x0000011B
