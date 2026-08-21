	.syntax unified
	.text

	thumb_func_start sub_810D038
sub_810D038:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	bl sub_810D00C
	ldr r5, _0810D094 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x12
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x0D
	bl sub_8084578
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80847B0
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	str r6, [sp, #0x000]
	movs r1, #0x91
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r2, #0x07
	movs r3, #0x06
	bl sub_808520C
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D094: .4byte 0x03000FD8
