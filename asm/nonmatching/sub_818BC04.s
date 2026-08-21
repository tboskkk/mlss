	.syntax unified
	.text

	thumb_func_start sub_818BC04
sub_818BC04:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BC34 @ =0x08186121
	str r4, [sp, #0x000]
	ldr r4, _0818BC38 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BC3C @ =0x08504ED4
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x22
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818BC34: .4byte sub_8186120
_0818BC38: .4byte 0x00004165
_0818BC3C: .4byte 0x08504ED4
