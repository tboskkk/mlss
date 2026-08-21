	.syntax unified
	.text

	thumb_func_start sub_810B754
sub_810B754:
	push {r4, r5, lr}
	add sp, #-0x00C
	movs r5, #0x00
	bl sub_810D00C
	ldr r4, _0810B7DC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x12
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x0D
	bl sub_8084578
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80847B0
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x91
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r2, #0x07
	movs r3, #0x06
	bl sub_808520C
	ldr r0, _0810B7E0 @ =0x0810CC4D
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807D2D0
	adds r4, r0, #0x0
	movs r0, #0x18
	strh r0, [r4, #0x14]
	ldr r0, _0810B7E4 @ =0x0810CC0D
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	ldr r0, _0810B7E8 @ =0x0810CBDD
	movs r1, #0x18
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_0810B7DC: .4byte 0x03000FD8
_0810B7E0: .4byte sub_810CC4C
_0810B7E4: .4byte sub_810CC0C
_0810B7E8: .4byte sub_810CBDC
