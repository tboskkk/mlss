	.syntax unified
	.text

	thumb_func_start sub_818CE30
sub_818CE30:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818CE60 @ =0x0817CD99
	str r4, [sp, #0x000]
	ldr r4, _0818CE64 @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x05
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	str r5, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818CE60: .4byte sub_817CD98
_0818CE64: .4byte 0x00004159
