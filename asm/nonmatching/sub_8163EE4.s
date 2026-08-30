	.syntax unified
	.text

	thumb_func_start sub_8163EE4
sub_8163EE4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r3, _08163F18 @ =0x03001028
	ldr r2, [r3, #0x00]
	ldr r0, _08163F1C @ =0x41C64E6D
	muls r0, r2
	ldr r2, _08163F20 @ =0x00003039
	adds r0, r0, r2
	str r0, [r3, #0x00]
	ldr r4, _08163F24 @ =0x03001038
	ldr r2, _08163F28 @ =0x08198350
	ldr r3, _08163F2C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x11
	subs r2, r5, #0x1
	subs r1, r1, r2
	bl _call_via_r3
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08163F18: .4byte 0x03001028
_08163F1C: .4byte 0x41C64E6D
_08163F20: .4byte 0x00003039
_08163F24: .4byte 0x03001038
_08163F28: .4byte 0x08198350
_08163F2C: .4byte 0x08198220
