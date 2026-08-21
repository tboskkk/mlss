	.syntax unified
	.text

	thumb_func_start sub_818BE6C
sub_818BE6C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BE9C @ =0x08184E15
	str r4, [sp, #0x000]
	ldr r4, _0818BEA0 @ =0x00004183
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BEA4 @ =0x08504E5C
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x24
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818BE9C: .4byte sub_8184E14
_0818BEA0: .4byte 0x00004183
_0818BEA4: .4byte 0x08504E5C
