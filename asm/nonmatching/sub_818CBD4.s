	.syntax unified
	.text

	thumb_func_start sub_818CBD4
sub_818CBD4:
	push {r4, lr}
	add sp, #-0x024
	ldr r3, _0818CC08 @ =0x0817E1D1
	str r3, [sp, #0x000]
	ldr r3, _0818CC0C @ =0x00004159
	str r3, [sp, #0x004]
	movs r3, #0x05
	str r3, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r3, #0x01
	str r3, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	ldr r3, _0818CC10 @ =0x08504BD4
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818CC08: .4byte sub_817E1D0
_0818CC0C: .4byte 0x00004159
_0818CC10: .4byte 0x08504BD4
