	.syntax unified
	.text

	thumb_func_start sub_810CF84
sub_810CF84:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r4, _0810D008 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r5, #0x94
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0E
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084578
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x01
	bl sub_80847B0
	movs r0, #0x03
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_8083F20
	ldr r1, [r4, #0x00]
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	movs r2, #0x60
	subs r2, r2, r0
	str r6, [sp, #0x000]
	movs r0, #0x91
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	movs r1, #0x00
	movs r3, #0x06
	bl sub_808520C
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0810D008: .4byte 0x03000FD8
