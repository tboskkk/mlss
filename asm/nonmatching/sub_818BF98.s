	.syntax unified
	.text

	thumb_func_start sub_818BF98
sub_818BF98:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BFC8 @ =0x0818475D
	str r4, [sp, #0x000]
	ldr r4, _0818BFCC @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x04
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BFD0 @ =0x08504E34
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x15
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818BFC8: .4byte sub_818475C
_0818BFCC: .4byte 0x00004165
_0818BFD0: .4byte 0x08504E34
