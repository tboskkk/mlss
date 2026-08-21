	.syntax unified
	.text

	thumb_func_start sub_8146E40
sub_8146E40:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	movs r3, #0xF2
	lsls r3, r3, #0x01
	adds r0, r6, r3
	adds r3, #0x04
	adds r4, r6, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r6, r0
	subs r0, #0xDC
	strh r0, [r1, #0x00]
	ldr r2, _08146E94 @ =0x000002DE
	adds r1, r6, r2
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	ldr r0, _08146E98 @ =0x08146C79
	str r0, [r5, #0x00]
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146E94: .4byte 0x000002DE
_08146E98: .4byte sub_8146C78
