	.syntax unified
	.text

	thumb_func_start sub_818B8B4
sub_818B8B4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818B8E8 @ =0x0818781D
	str r4, [sp, #0x000]
	ldr r4, _0818B8EC @ =0x000040E6
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818B8F0 @ =0x08504FD0
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
_0818B8E8: .4byte sub_818781C
_0818B8EC: .4byte 0x000040E6
_0818B8F0: .4byte 0x08504FD0
