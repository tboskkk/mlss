	.syntax unified
	.text

	thumb_func_start sub_818BEA8
sub_818BEA8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BED8 @ =0x08184CF5
	str r4, [sp, #0x000]
	ldr r4, _0818BEDC @ =0x00004183
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BEE0 @ =0x08504E54
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x20
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818BED8: .4byte sub_8184CF4
_0818BEDC: .4byte 0x00004183
_0818BEE0: .4byte 0x08504E54
