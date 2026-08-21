	.syntax unified
	.text

	thumb_func_start sub_818D2F4
sub_818D2F4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D324 @ =0x0817ADD5
	str r4, [sp, #0x000]
	ldr r4, _0818D328 @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x02
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D32C @ =0x08504A90
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D324: .4byte sub_817ADD4
_0818D328: .4byte 0x00004159
_0818D32C: .4byte 0x08504A90
