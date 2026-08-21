	.syntax unified
	.text

	thumb_func_start sub_8176858
sub_8176858:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0817688C @ =0x08175A51
	str r4, [sp, #0x000]
	movs r4, #0x82
	lsls r4, r4, #0x06
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x04
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176890 @ =0x085048AC
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0817688C: .4byte sub_8175A50
_08176890: .4byte 0x085048AC
