	.syntax unified
	.text

	thumb_func_start sub_818BFD4
sub_818BFD4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C004 @ =0x08184655
	str r4, [sp, #0x000]
	ldr r4, _0818C008 @ =0x000040D3
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C00C @ =0x08504E30
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x05
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818C004: .4byte sub_8184654
_0818C008: .4byte 0x000040D3
_0818C00C: .4byte 0x08504E30
