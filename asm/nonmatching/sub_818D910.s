	.syntax unified
	.text

	thumb_func_start sub_818D910
sub_818D910:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D940 @ =0x08177681
	str r4, [sp, #0x000]
	ldr r4, _0818D944 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x06
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D948 @ =0x08504920
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x1B
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818D940: .4byte sub_8177680
_0818D944: .4byte 0x00004165
_0818D948: .4byte 0x08504920
