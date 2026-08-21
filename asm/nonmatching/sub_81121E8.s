	.syntax unified
	.text

	thumb_func_start sub_81121E8
sub_81121E8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0811225C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bne _08112254
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112206
	adds r0, #0xFF
_08112206:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112214
	adds r0, #0xFF
_08112214:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112222
	adds r0, #0xFF
_08112222:
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
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08112260 @ =0x0811251D
	str r0, [r4, #0x4C]
	ldr r0, _08112264 @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08112254:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0811225C: .4byte 0x03000FD8
_08112260: .4byte sub_811251C
_08112264: .4byte 0x0000011B
