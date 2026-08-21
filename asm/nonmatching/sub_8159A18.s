	.syntax unified
	.text

	thumb_func_start sub_8159A18
sub_8159A18:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r4, _08159A58 @ =0x0000052C
	adds r0, r6, r4
	str r3, [r0, #0x00]
	movs r0, #0xA1
	lsls r0, r0, #0x03
	adds r5, r6, r0
	ldr r3, [r2, #0x00]
	ldr r4, [r2, #0x04]
	str r3, [r5, #0x00]
	str r4, [r5, #0x04]
	ldr r0, [r1, #0x00]
	ldr r3, [r5, #0x00]
	subs r0, r0, r3
	str r0, [r5, #0x00]
	ldr r4, _08159A5C @ =0x0000050C
	adds r3, r6, r4
	ldr r0, [r1, #0x04]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r0, r6, #0x0
	adds r1, r2, #0x0
	bl sub_8159800
	adds r0, r6, #0x0
	bl sub_8159974
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08159A58: .4byte 0x0000052C
_08159A5C: .4byte 0x0000050C
	.byte 0x70, 0x47, 0x00, 0x00
