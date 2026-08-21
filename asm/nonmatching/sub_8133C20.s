	.syntax unified
	.text

	thumb_func_start sub_8133C20
sub_8133C20:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x94
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bgt _08133C72
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0x0C
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r0, _08133C78 @ =0x08133BC1
	str r0, [r4, #0x4C]
_08133C72:
	pop {r4}
	pop {r0}
	bx r0
_08133C78: .4byte sub_8133BC0
