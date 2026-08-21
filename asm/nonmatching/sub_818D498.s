	.syntax unified
	.text

	thumb_func_start sub_818D498
sub_818D498:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D4CC @ =0x0817A00D
	str r4, [sp, #0x000]
	ldr r4, _0818D4D0 @ =0x00004172
	str r4, [sp, #0x004]
	movs r4, #0x03
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D4D4 @ =0x08504A48
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x13
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D4CC: .4byte sub_817A00C
_0818D4D0: .4byte 0x00004172
_0818D4D4: .4byte 0x08504A48
