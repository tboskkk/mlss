	.syntax unified
	.text

	thumb_func_start sub_80541B0
sub_80541B0:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	lsrs r3, r1, #0x1F
	adds r3, r1, r3
	asrs r3, r3, #0x01
	movs r5, #0x0F
	subs r5, r5, r3
	lsrs r4, r2, #0x1F
	adds r4, r2, r4
	asrs r4, r4, #0x01
	movs r3, #0x0A
	subs r3, r3, r4
	adds r4, r0, #0x0
	adds r4, #0x40
	ldr r6, [r0, #0x38]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x000]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x004]
	movs r0, #0xE0
	lsls r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl generate_window_bg_8051B98
	ldr r0, _08054208 @ =0x0839EC80
	ldr r1, [r0, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08054208: .4byte 0x0839EC80
