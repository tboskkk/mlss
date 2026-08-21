	.syntax unified
	.text

	thumb_func_start sub_818D820
sub_818D820:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D850 @ =0x08178039
	str r4, [sp, #0x000]
	ldr r4, _0818D854 @ =0x00004172
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x06
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D858 @ =0x08504970
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x10
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D850: .4byte sub_8178038
_0818D854: .4byte 0x00004172
_0818D858: .4byte 0x08504970
