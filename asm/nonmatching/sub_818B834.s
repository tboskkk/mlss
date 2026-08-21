	.syntax unified
	.text

	thumb_func_start sub_818B834
sub_818B834:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818B868 @ =0x08187A5D
	str r4, [sp, #0x000]
	ldr r4, _0818B86C @ =0x000040E1
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818B870 @ =0x08504FE0
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x09
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818B868: .4byte sub_8187A5C
_0818B86C: .4byte 0x000040E1
_0818B870: .4byte 0x08504FE0
