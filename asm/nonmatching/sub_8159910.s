	.syntax unified
	.text

	thumb_func_start sub_8159910
sub_8159910:
	push {r4, lr}
	movs r2, #0xA5
	lsls r2, r2, #0x03
	adds r4, r0, r2
	ldrh r3, [r4, #0x00]
	movs r2, #0x04
	orrs r2, r3
	strh r2, [r4, #0x00]
	ldr r3, _08159944 @ =0x00000534
	adds r2, r0, r3
	str r1, [r2, #0x00]
	movs r2, #0xA7
	lsls r2, r2, #0x03
	adds r4, r0, r2
	subs r3, #0x04
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r1, #0x0
	movs r1, #0x0A
	bl __divsi3
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08159944: .4byte 0x00000534
