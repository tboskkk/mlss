	.syntax unified
	.text

	thumb_func_start sub_818D5C8
sub_818D5C8:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D5F8 @ =0x0817969D
	str r4, [sp, #0x000]
	ldr r4, _0818D5FC @ =0x00004159
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818D600 @ =0x08504A14
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818D5F8: .4byte sub_817969C
_0818D5FC: .4byte 0x00004159
_0818D600: .4byte 0x08504A14
