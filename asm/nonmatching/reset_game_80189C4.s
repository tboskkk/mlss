	.syntax unified
	.text

	thumb_func_start reset_game_80189C4
reset_game_80189C4: @ 080189C4
	push {r4, lr}
	ldr r1, _08018A30 @ =0x0300034C
	ldr r0, _08018A34 @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, _08018A38 @ =0x040000B0
	ldrh r2, [r1, #0x0A]
	ldr r4, _08018A3C @ =0x0000C5FF
	adds r0, r4, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r3, _08018A40 @ =0x00007FFF
	adds r0, r3, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	adds r1, #0x0C
	ldrh r2, [r1, #0x0A]
	adds r0, r4, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	adds r0, r3, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	adds r1, #0x0C
	ldrh r2, [r1, #0x0A]
	adds r0, r4, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	adds r0, r3, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	ldr r0, _08018A44 @ =0x040000D4
	ldrh r1, [r0, #0x0A]
	ands r4, r1
	strh r4, [r0, #0x0A]
	ldrh r1, [r0, #0x0A]
	ands r3, r1
	strh r3, [r0, #0x0A]
	ldrh r0, [r0, #0x0A]
	movs r0, #0xFC
	bl sub_81DA6C8
	pop {r4}
	pop {r0}
	bx r0
_08018A30: .4byte 0x0300034C
_08018A34: .4byte 0x00000888
_08018A38: .4byte 0x040000B0
_08018A3C: .4byte 0x0000C5FF
_08018A40: .4byte 0x00007FFF
_08018A44: .4byte 0x040000D4
